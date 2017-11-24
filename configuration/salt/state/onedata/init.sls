onedata_repo:
  pkgrepo.managed:
    - humanname: Onedata YUM Repo
    - baseurl: http://packages.onedata.org/yum/centos/7x
    - gpgkey: http://packages.onedata.org/onedata.gpg.key
    
install_oneclient:
  pkg.latest:
    - pkgs:
      - oneclient
    
{{ pillar['oneclient_mountpoint'] }}:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
/usr/lib/systemd/system/oneclient.service:
  file.managed:
    - source: salt://onedata/config/oneclient.service
    - user: root
    - group: root
    - mode: 644
    - template: jinja

oneclient:
  service.running:
    - enable: True
