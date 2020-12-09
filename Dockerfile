ARG FRM='testdasi/pihole-base-buster-plus'
ARG TAG='stable-rpi4'

FROM ${FRM}:${TAG}
ARG FRM
ARG TAG

ADD stuff /temp

RUN /bin/bash /temp/install.sh \
    && rm -f /temp/install.sh

VOLUME ["/config"]

RUN echo "$(date "+%d.%m.%Y %T") Built from ${FRM} with tag ${TAG}" >> /build_date.info
