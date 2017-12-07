#!yaml|gpg


tf_vars: |
  -----BEGIN PGP MESSAGE-----
  
  hQEMA0LYc5MkOCPHAQf8CeN7ykRp518Fm3co0DF5q8pwk9O92ctmDnAhhAascZ2c
  3QESmEIswLVWhKjbZ9tqmmOJeBR+i5gadJjeMStGLHjJm4hNeWLvduk9y63VvhO7
  sjm1N+zzEeYINoj5dkFn9ursggwVP/yk7tlKovvhCO6vwOdIh3UI1S+BzfYb79Sd
  aQGMID1n2LoYCy2y1xXjpTlsYU9uVPhQds2WeFL3Kfhc9B8Q/5i58XdiISVg8ueo
  pg98uOOtIe9BruB6m6tRG6f1W3ZDhjpoBE+DrcBm5k8LZ1khZV70+SjTuoMNOfDl
  K84meNBDoATi5x0FpfNLnQWXLjJkxaxWaZdGaBplhdLAJAF/PvyvMG0BX7XJdCcW
  XGs3BoM+NUJqDgjI5gytmLbPRHA2YWUVNTBmUUw6r9abJyBta1w2RwOFMxEGnszL
  kT0kBPZCAoWiCkgug2G5mnwwP9Wh/CERDCuqObPKHdnES0EMkZ6Bpo7cwX2HMUNj
  5NAYt0gJ6uD1n3zGstQ8Crchj7rkDqottQ/b1JkgFoXKGCYLnv9EuZxaRXz1ad0n
  V7We5/GI+4PmemBLKOHqSdaE/z9sveF1xwY1iUb9hHrHZL2s68nJ4T4VU6VSfVZa
  9W1p4QHic5VDacisq/gWYbSL/ERqKA==
  =B+ao
  -----END PGP MESSAGE-----
    
terraform_files: /opt/eosc_pilot/deployment/compute_canada/
terraform_state: /opt/eosc_pilot/deployment/compute_canada/terraform.tfstate
terraform_vars: /opt/eosc_pilot/deployment/compute_canada/cc_credentials.tfvars
terraform_provider: openstack
    
kapacitor.slack_channel: compcanalerts