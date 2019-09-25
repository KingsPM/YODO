FROM python:slim-stretch

COPY . /usr/local/yodo
WORKDIR /usr/local/yodo
RUN pip install -r requirements.txt
ENV STATE_DIRECTORY /tmp
ENV MAX_CONTENT_LENGTH 500000000
CMD python app.py
