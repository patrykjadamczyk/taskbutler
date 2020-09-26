FROM python:alpine
RUN apk add bash
COPY . /app
WORKDIR /app
RUN pip install .
RUN mkdir /root/.taskbutler
ENV SYNC_TIMEOUT="1m"
VOLUME /root/.taskbutler
CMD ["/app/docker/docker-entrypoint.sh"]