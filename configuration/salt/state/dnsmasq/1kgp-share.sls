1kgp_share:
  file.append:
    - name: /etc/dnsmasq.d/10-1kgp
    - text: "server=/vnas-1000g-3105.ebi.ac.uk/10.35.105.240"
    - makedirs: True