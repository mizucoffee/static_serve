FROM nginx
LABEL maintainer="develop@mizucoffee.net"

RUN curl -fsSL https://deb.nodesource.com/setup_12.x | sed s/sleep/#sleep/ | bash - && \
  apt-get update && \
  apt-get install -y build-essential git nodejs npm python3 ruby

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

ENTRYPOINT [ "/startup.sh" ]
