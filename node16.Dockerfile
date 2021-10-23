FROM nginx:1.21.3
LABEL maintainer="develop@mizucoffee.net"

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get update && \
  apt-get install -y build-essential git nodejs python ruby

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

ENTRYPOINT [ "/startup.sh" ]
