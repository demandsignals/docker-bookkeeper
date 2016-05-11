FROM sillelien/base-java

COPY run.sh /etc/services.d/bookkeeper/run
COPY build.sh /build.sh
RUN chmod 755 /build.sh
RUN /build.sh

COPY conf-dir /bookkeeper-server-4.3.2/conf

EXPOSE 3181/tcp
