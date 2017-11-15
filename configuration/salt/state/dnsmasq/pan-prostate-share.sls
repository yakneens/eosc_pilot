pan_prostate_share:
  file.append:
    - name: /etc/dnsmasq.d/10-pan-prostate
    - text: "server=/em-isi-3110.ebi.ac.uk/10.35.110.201"
    - makedirs: True