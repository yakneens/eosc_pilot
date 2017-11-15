1kgp_share:
  file.append:
    - name: /etc/dnsmasq.d/10-1kgp
    - text: "server=/vnas-1000g-3105.ebi.ac.uk/10.35.105.240"
    - makedirs: True
    
/1kgp:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 