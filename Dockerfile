FROM python:2.7-slim

ADD ./ /usr/src/entu-backup

RUN apt-get update && apt-get install -y mysql-client python-magic
RUN pip install s3cmd python-dateutil

CMD ["/usr/src/entu-backup/backup.sh"]
