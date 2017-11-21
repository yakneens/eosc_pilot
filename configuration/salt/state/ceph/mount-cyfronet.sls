/etc/ceph/ceph.conf:
  file.managed:
    - contents_pillar: cyfronet_secrets:ceph_conf
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
    
/etc/ceph/ceph.client.eoscpilot.fs.keyring:
  file.managed:
    - contents_pillar: cyfronet_secrets:ceph_keyring
    - user: root
    - group: root
    - mode: 600
    - makedirs: True
    
/etc/ceph/eoscpilot.fs.key:
  file.managed:
    - contents_pillar: cyfronet_secrets:ceph_key
    - user: root
    - group: root
    - mode: 600
    - makedirs: True

/ceph:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
mount_cyfronet:
  cmd.run:
    - name: mount -t ceph 192.168.70.208:6789:/ /ceph -o name=eoscpilot.fs,secretfile=/etc/ceph/eoscpilot.fs.key
    