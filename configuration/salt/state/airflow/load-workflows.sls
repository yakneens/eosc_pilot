workflows_prereq:
  pkg.installed:
    - name : git

eosc-pilot-clone:
  git.latest:
    - rev: master
    - force_reset: True
    - name: https://github.com/llevar/eosc_pilot.git
    - target: /opt/eosc_pilot
    - submodules: True
    
/opt/airflow/dags/eosc_pilot:
  file.symlink:
    - target: /opt/eosc_pilot/workflows/
    - user: airflow
    - group: airflow
    - mode: 755
    - force: True
    - makedirs: True
 
/tmp/eosc_pilot/scripts:
  file.symlink:
    - target: /opt/eosc_pilot/scripts/
    - user: root
    - group: root
    - mode: 755
    - force: True
    - makedirs: True