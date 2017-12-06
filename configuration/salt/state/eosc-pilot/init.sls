eosc-pilot-clone:
  git.latest:
    - rev: master
    - force_reset: True
    - name: https://github.com/llevar/eosc_pilot.git
    - target: /opt/eosc_pilot
    - submodules: True