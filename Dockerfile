FROM python:3.8-alpine3.10
WORKDIR /app

#RUN pip install --upgrade pip
RUN apk add --update gcc libc-dev linux-headers libusb-dev
RUN apk add --update ffmpeg=4.1.6-r0 netcat-openbsd git

COPY . .
RUN pip install .
#RUN pip install pyunifiprotect

COPY ./docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
