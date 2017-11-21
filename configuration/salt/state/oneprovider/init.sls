install_oneclient:
  cmd.script:
    - source: salt://oneprovider/config/oneclient.sh
    
/oneclient:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
run_oneclient:
  cmd.run:
    - name: "oneclient -i -H pancancer-eosc-cyf.tk -t {{ pillar['cyfronet_secrets']['oneclient_access_token'] }}: /oneclient"