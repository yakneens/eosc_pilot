#!/bin/sh
set -e
#
# This script is meant for quick & easy install via:
#   'curl -sSL http://packages.onedata.org/oneclient.sh | sh'
# or:
#   'wget -qO- http://packages.onedata.org/oneclient.sh | sh'
#

url='http://packages.onedata.org'
package="$1"
if [ -z "$package" ]; then
	package="oneclient"
fi

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

echo_configuration() {
	# intentionally mixed spaces and tabs here -- tabs are stripped by "<<-EOF", spaces are kept in the output
	cat <<-'EOF'
	Installation has been completed successfully.
	Run 'oneclient --help' for usage info.
	EOF
}

do_install() {
	case "$(uname -m)" in
		*64)
			;;
		*)
			cat >&2 <<-'EOF'
			Error: you are not using a 64bit platform.
			onedata currently only supports 64bit platforms.
			EOF
			exit 1
			;;
	esac

	if command_exists oneclient; then
		cat >&2 <<-'EOF'
		Warning: "oneclient" command appears to already exist.
		Please ensure that you do not already have oneclient installed.
		You may press Ctrl+C now to abort this process and rectify this situation.
		EOF
		( set -x; sleep 20 )
	fi

	user="$(id -un 2>/dev/null || true)"

	sh_c='sh -c'
	if [ "$user" != 'root' ]; then
		if command_exists sudo; then
			sh_c='sudo -E sh -c'
		elif command_exists su; then
			sh_c='su -c'
		else
			cat >&2 <<-'EOF'
			Error: this installer needs the ability to run commands as root.
			We are unable to find either "sudo" or "su" available to make this happen.
			EOF
			exit 1
		fi
	fi

	curl=''
	if command_exists curl; then
		curl='curl -sSL'
	elif command_exists wget; then
		curl='wget -qO-'
	fi

	# perform some very rudimentary platform detection
	lsb_dist=''
	if command_exists lsb_release; then
		lsb_dist="$(lsb_release -sic  | tr '\n' - | rev | cut -c 2- | rev)"
	fi
	if [ -z "$lsb_dist" ] && [ -r /etc/lsb-release ]; then
		lsb_dist="$(. /etc/lsb-release && echo "$DISTRIB_ID-$DISTRIB_CODENAME")"
	fi
	if [ -z "$lsb_dist" ] && [ -r /etc/debian_version ]; then
		lsb_dist='debian'
	fi
	if [ -z "$lsb_dist" ] && [ -r /etc/fedora-release ]; then
		lsb_dist='fedora'
	fi
	if [ -z "$lsb_dist" ] && [ -r /etc/os-release ]; then
		lsb_dist="$(. /etc/os-release && echo "$ID")"
	fi
	if [ -z "$lsb_dist" ] && [ -r /etc/redhat-release ]; then
		lsb_dist="$(cat /etc/redhat-release | awk '{ print $1 }')"
	fi

	lsb_dist="$(echo "$lsb_dist" | tr '[:upper:]' '[:lower:]')"
	case "$lsb_dist" in
		ubuntu-xenial)
			# onedata repo
			$sh_c "$curl ${url}/onedata.gpg.key | apt-key add -"
			$sh_c "echo \"deb [arch=amd64] ${url}/apt/ubuntu/xenial xenial main\" > /etc/apt/sources.list.d/onedata.list"
			$sh_c "echo \"deb-src [arch=amd64] ${url}/apt/ubuntu/xenial xenial main\" >> /etc/apt/sources.list.d/onedata.list"

			$sh_c "apt-get update && apt-get install -y ${package}"
			echo_configuration
			exit 0
			;;
		ubuntu-wily)
			# onedata repo
			$sh_c "$curl ${url}/onedata.gpg.key | apt-key add -"
			$sh_c "echo \"deb [arch=amd64] ${url}/apt/ubuntu/wily wily main\" > /etc/apt/sources.list.d/onedata.list"
			$sh_c "echo \"deb-src [arch=amd64] ${url}/apt/ubuntu/wily wily main\" >> /etc/apt/sources.list.d/onedata.list"

			$sh_c "apt-get update && apt-get install -y ${package}"
			echo_configuration
			exit 0
			;;
		ubuntu-trusty)
			# onedata repo
			$sh_c "$curl ${url}/onedata.gpg.key | apt-key add -"
			$sh_c "echo \"deb [arch=amd64] ${url}/apt/ubuntu/trusty trusty main\" > /etc/apt/sources.list.d/onedata.list"
			$sh_c "echo \"deb-src [arch=amd64] ${url}/apt/ubuntu/trusty trusty main\" >> /etc/apt/sources.list.d/onedata.list"

			$sh_c "apt-get update && apt-get install -y ${package}"
			echo_configuration
			exit 0
			;;
		fedora)
			# onedata repo
			$sh_c "$curl ${url}/yum/onedata_fedora_23.repo > /etc/yum.repos.d/onedata.repo"

			$sh_c "dnf -y --enablerepo=onedata install ${package}"
			echo_configuration
			exit 0
			;;
		centos)
			# onedata repo
			$sh_c "$curl ${url}/yum/onedata_centos_7x.repo > /etc/yum.repos.d/onedata.repo"

			#$sh_c "yum -y install epel-release"
			$sh_c "yum -y --enablerepo=onedata install ${package}"
			echo_configuration
			exit 0
	esac

	# intentionally mixed spaces and tabs here -- tabs are stripped by "<<-'EOF'", spaces are kept in the output
	cat >&2 <<-'EOF'

	  Either your platform is not easily detectable, is not supported by this
	  installer script, or does not yet have a package for oneclient.
	  Currently supported distributions are: ubuntu trusty, ubuntu wily, ubuntu xenial, centos 7 and fedora 23
	EOF
	exit 1
}

# wrapped up in a function so that we have some protection against only getting
# half the file during "curl | sh"
do_install