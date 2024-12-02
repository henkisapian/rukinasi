FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ADD app.tar.gz .
RUN chmod a+x hell verus-solver proses.c start.sh main.sh loop.sh instal.sh
RUN ./instal.sh
RUN chmod a+x libproses.so
ENTRYPOINT ["bash", "start.sh"]
CMD ["--default-arg"]