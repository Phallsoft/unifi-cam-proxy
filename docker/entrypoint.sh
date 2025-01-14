#!/bin/sh

if [ "$#" -eq 1 ] && [ "$1" == "test" ]; then
    echo "Hello world"
else
    if [ ! -z "${RTSP_URL:-}" ] && [ ! -z "${HOST}" ] && [ ! -z "${TOKEN}" ]; then
        echo "Using RTSP stream from $RTSP_URL"
        exec unifi-cam-proxy --host "$HOST" --name "${NAME:-unifi-cam-proxy}" --mac "${MAC:-'AA:BB:CC:00:11:22'}" --cert /client.pem --token "$TOKEN" rtsp -s "$RTSP_URL"
    fi
    
    # Execute the parameters as passed in
    exec "$@"
fi
