FROM debian:bullseye

RUN apt-get update && apt-get install -y \
	apparmor \
	apparmor-utils \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy the profile into the container
COPY ./test-profile /etc/apparmor.d/bin.test-profile
COPY entry.sh /bin/
RUN chmod +x /bin/entry.sh

CMD ["/bin/entry.sh", "bin.test-profile"]
