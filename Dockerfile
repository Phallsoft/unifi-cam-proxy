FROM python:3.9-alpine3.14
WORKDIR /app

RUN apk add --update gcc libc-dev linux-headers libusb-dev
RUN apk add --update ffmpeg=4.4.1-r0 netcat-openbsd git

COPY . .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install .

COPY ./docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
