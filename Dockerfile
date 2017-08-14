FROM python:2.7-alpine
ADD requirements.txt /
RUN pip install -r requirements.txt
ADD ecssd.py /
ENTRYPOINT ["/usr/local/bin/python", "ecssd.py"]
