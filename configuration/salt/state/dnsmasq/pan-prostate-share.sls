pan_prostate_share:
  file.append:
    - name: /etc/dnsmasq.d/10-pan-prostate
    - text: "server=/em-isi-3110.ebi.ac.uk/10.35.110.201"
    - makedirs: True
    
/pan-prostate:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 