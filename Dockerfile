FROM registry.access.redhat.com/ansible-tower/ansible-tower:3.3.0
USER root
RUN mkdir -p /var/lib/awx/venv/ansible2.3
RUN virtualenv --system-site-packages /var/lib/awx/venv/ansible2.3
RUN cp -a /var/lib/awx/venv/ansible/lib64/python2.7/site-packages/* /var/lib/awx/venv/ansible2.3/lib64/python2.7/site-packages/
RUN sh -c ". /var/lib/awx/venv/ansible2.3/bin/activate ; pip install ansible==2.3.3.0"