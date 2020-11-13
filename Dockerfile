FROM registry.redhat.io/ansible-tower-37/ansible-tower-rhel7
USER root
RUN virtualenv --system-site-packages /var/lib/awx/venv/ansible
RUN sh -c ". /var/lib/awx/venv/ansible/bin/activate ; pip install --upgrade pip"
RUN sh -c ". /var/lib/awx/venv/ansible/bin/activate ; pip install ansible==2.9.13.0"
RUN sh -c ". /var/lib/awx/venv/ansible/bin/activate ; pip install openshift"
RUN sh -c ". /var/lib/awx/venv/ansible/bin/activate ; pip install kubernetes"
