onedata_repo:
  pkgrepo.managed:
    - humanname: Onedata YUM Repo
    - baseurl: http://packages.onedata.org/yum/centos/7x
    - gpgkey: http://packages.onedata.org/onedata.gpg.key
    
install_oneclient:
  pkg.latest:
    - pkgs:
      - oneclient
    
/oneclient:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
run_oneclient:
  cmd.run:
    - name: oneclient -i  -o allow_other -H pancancer-eosc-cyf.tk -t {{ pillar['cyfronet_secrets']['oneclient_access_token'] }} /oneclient