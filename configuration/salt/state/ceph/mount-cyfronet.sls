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
    