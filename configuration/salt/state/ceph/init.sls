ceph_repo:
  pkgrepo.managed:
    - humanname: Ceph YUM Repo
    - baseurl: http://download.ceph.com/rpm-luminous/el7/noarch/
    - gpgkey: https://download.ceph.com/keys/release.asc
    
ceph_pkgs:
  pkg.installed:
    - pkgs:
      - ceph-common
      
      