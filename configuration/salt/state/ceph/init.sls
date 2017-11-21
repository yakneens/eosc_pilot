ceph_repo:
  pkgrepo.managed:
    - humanname: Ceph YUM Repo
    - baseurl: http://download.ceph.com/rpm-luminous/el7/noarch/
    - gpgkey: https://download.ceph.com/keys/release.asc
    
ceph_repo2:
  cmd.run:
    - name: rpm -Uvh http://download.ceph.com/rpm-luminous/el7/noarch/ceph-release-1-1.el7.noarch.rpm
    
ceph_pkgs:
  pkg.latest:
    - pkgs:
      - ceph-common
      
      