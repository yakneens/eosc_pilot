base:
  '*':
    - selinux
    - dnsmasq
    - dnsmasq.resolv
    - elastic.filebeat
    - elastic.packetbeat
    - ntp
    - telegraf
  'G@roles:consul-ui':
    - consul.ui
  'G@roles:monitoring-server':
    - influxdb
    - grafana
    - kapacitor
    - chronograf
    - salt.pepper
  'G@roles:worker':
    - git
    - celery
    - airflow
    - airflow.worker
    - butler.tracker
    - butler.deploy.example-workflows
    - cwltool
    - docker
    - dnsmasq.1kgp-share
    - dnsmasq.ebi-proxy
    - dnsmasq.gnos-share
    - dnsmasq.pan-prostate-share    
  'G@roles:tracker':
    - git
    - run-tracking-db.set_db_url
    - celery
    - airflow
    - airflow.init-db
    - airflow.patch-airflow-url-prefix
    - airflow.server
    - jsonmerge
    - butler.tracker
    - butler.deploy.example-workflows
    - hostfile
    - dnsmasq.1kgp-share
    - dnsmasq.ebi-proxy
    - dnsmasq.gnos-share
    - dnsmasq.pan-prostate-share 
  'G@roles:db-server':
    - postgres
    - run-tracking-db
    - run-tracking-db.create_tables
    - grafana.createdb
    - airflow.airflow-db
  'G@roles:job-queue':
    - rabbitmq
  'G@roles:elasticsearch':
    - elastic.search
    - elastic.logstash
    - elastic.kibana
    - celery
  'G@roles:R':
    - R
  'G@roles:butler-web':
    - git
    - nginx
    - butler.web
  'G@roles:salt-master':
    - salt.api


  
    
  
    
    


    
