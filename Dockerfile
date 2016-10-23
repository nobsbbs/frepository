FROM alpine:latest 


# Set environment variables. 

ENV TERM=xterm-color 


# Install packages. 
RUN \
  apk --update add bash coreutils curl figlet nano procps tar wget && \
  rm -rf /var/cache/apk/*

EXPOSE 80 443

# Set the default command. 
CMD ["/bin/bash"]
