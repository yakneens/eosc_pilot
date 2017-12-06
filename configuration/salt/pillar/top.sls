base:
  '*':
    - saltmine
    - collectd
    - postgres
    - rabbitmq
    - influxdb
    - genome-reference
    - genome-reference.grch37d5_sanger_zipped
  'G@roles:worker':
    - test-data
    - run-tracking-db
  'G@roles:worker and G@roles:comp-can':
    - airflow.compcan
  'G@roles:worker and G@roles:cyfronet':
    - airflow.cyfronet
    - cyfronet
    - onedata
  'G@roles:worker and G@roles:embassy':
    - airflow.embassy
  'G@roles:tracker':
    - run-tracking-db
    - airflow
  'G@roles:monitoring-server':
    - grafana
    - kapacitor
  'G@roles:db-server':
    - grafana
    - run-tracking-db
  'G@roles:butler-web':
    - butler
  'G@roles:consul-server':
      - consul.server   
  'G@roles:single-node':
    - consul.single_node
  'G@roles:tracker and G@roles:cyfronet':  
    - cyfronet
    - onedata
  'G@roles:monitoring-server and G@roles:embassy':
    - embassy
    


