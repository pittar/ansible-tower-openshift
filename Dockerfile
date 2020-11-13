FROM registry.redhat.io/ansible-tower-37/ansible-tower-rhel7
USER root
RUN mkdir -p /var/lib/awx/venv/ansible2.9
RUN virtualenv --system-site-packages /var/lib/awx/venv/ansible2.9
RUN cp -a /var/lib/awx/venv/ansible/lib64/python2.7/site-packages/* /var/lib/awx/venv/ansible2.9/lib64/python2.7/site-packages/
RUN sh -c ". /var/lib/awx/venv/ansible2.3/bin/activate ; pip install ansible==2.9.13.0"
