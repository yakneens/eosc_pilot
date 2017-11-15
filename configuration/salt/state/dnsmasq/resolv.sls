/etc/resolv.conf:
  file.managed:
    - source: salt://dnsmasq/config/resolv.conf
    - user: root
    - group: root
    - mode: 600
    - makedirs: True
    - template: jinja