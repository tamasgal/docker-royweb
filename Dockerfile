FROM python:3.6.2-alpine

RUN pip install royweb

EXPOSE 8080 9999

CMD royweb
