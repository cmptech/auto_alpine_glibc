FROM alpine

#RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
#&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
#&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
#&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf &&

RUN apk update \
&& apk add libgcc \
&& wget https://www.archlinux.org/packages/core/x86_64/glibc/download/ -O glibc.pkg.tar.xz \
&& tar xJvf glibc.pkg.tar.xz -C / \
&& rm -f glibc.pkg.tar.xz \
&& ln -s /usr/lib /lib64 \
&& ln -s /lib/libc.musl-x86_64.so.1 /lib64/ \
&& rm -rf /var/cache/apk/ && mkdir -p /var/cache/apk && rm -rf /tmp/*

# the 6.0.22 will report some warning..
ADD libstdc++.so.6.0.25 /usr/lib/libstdc++.so.6
