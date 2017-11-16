    
/etc/fstab:    
  file.append:
    - text: "em-isi-3104.ebi.ac.uk:/ifs/gnos-01      /gnosdata       nfs     ro      0 0\nem-isi-3110.ebi.ac.uk:/ifs/pan-prostate-01      /pan-prostate       nfs     defaults      0 0\nvnas-1000g-3105.ebi.ac.uk:/1000g      /1kgp       nfs     defaults      0 0\nem-isi-3104.ebi.ac.uk:/ifs/germline      /germline       nfs     ro      0 0\n"
    - makedirs: True

mount_shares:
  cmd.run:
    - name: mount -a


      