FROM alpine

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT ["/entrypoint.sh"]
