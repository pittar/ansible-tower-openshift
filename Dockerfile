FROM registry.redhat.io/ansible-tower-38/ansible-tower-rhel7
USER root
RUN yum install -y gcc python-devel openssl-devel
RUN umask 0022
RUN virtualenv /var/lib/awx/venv/ansible2.7
RUN /var/lib/awx/venv/ansible2.7/bin/pip install psutil python "ansible==2.9.15" openshift kubernetes
