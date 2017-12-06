{{ pillar['terraform_vars'] }}:
  file.managed:
    - contents_pillar: tf_vars
    - user: root
    - group: root
    - mode: 600
    - makedirs: True