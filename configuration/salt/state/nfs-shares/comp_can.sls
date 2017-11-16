/eosc_data:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
/etc/fstab:    
  file.append:
    - text: "10.39.20.10:/eosc\t/eosc_data\tnfs\tdefaults\t0 0\n"
    - makedirs: True

mount_shares:
  cmd.run:
    - name: mount -a
  