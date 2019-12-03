#FROM alpine:edge
#FROM alpine
FROM frolvlad/alpine-glibc

#RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
#&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
#&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
#&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf &&

#RUN apk update \
#&& apk add libgcc libstdc++ \
#&& ln -s /usr/lib /lib64 \
#&& rm -rf /var/cache/apk/ && mkdir -p /var/cache/apk && rm -rf /tmp/*

RUN apk update \
&& apk add libstdc++ \
&& rm -f /usr/lib/libstdc++* \
&& ln -s /usr/lib /lib64 \
&& rm -rf /var/cache/apk/ && mkdir -p /var/cache/apk && rm -rf /tmp/*

#RUN apk update \
#&& apk add --no-cache libgcc libstdc++ \
#&& wget https://www.archlinux.org/packages/core/x86_64/glibc/download/ -O glibc.pkg.tar.xz \
#&& tar xJvf glibc.pkg.tar.xz -C / \
#&& rm -f glibc.pkg.tar.xz \
#&& ln -s /usr/lib /lib64 \
#&& ln -s /lib/libc.musl-x86_64.so.1 /lib64/ \
#&& wget https://www.archlinux.org/packages/core/x86_64/gcc-libs/download/ -O gcc-libs.pkg.tar.xz \
#&& tar xJvf gcc-libs.pkg.tar.xz -C /root/ \
#&& rm -f /usr/lib/libstdc++* \
#&& cp -dv /root/usr/lib/libstdc++* /usr/lib/ \
#&& rm -f gcc-libs.pkg.tar.xz \
#&& rm -rf /root/* \
#&& rm -rf /var/cache/apk/ && mkdir -p /var/cache/apk && rm -rf /tmp/*


#&& cp -dv /root/usr/lib/libgcc** /usr/lib/ \

#RUN set -eux; \
#    apk add --no-cache \
#      libgcc \
#      libstdc++ \
#    ; \
#    apk add --no-cache --virtual build-dependencies \
#      build-base \
#      linux-headers \
#    ; \
#    wget https://github.com/zerotier/ZeroTierOne/archive/$ZEROTIER_VERSION.zip -O /zerotier.zip; \
#    unzip /zerotier.zip -d /; \
#    cd /ZeroTierOne-$ZEROTIER_VERSION; \
#    make; \
#    DESTDIR=/tmp/build make install; \
#    mv /tmp/build/usr/sbin/* /usr/sbin/; \
#    mkdir /var/lib/zerotier-one; \
#    apk del build-dependencies build-base linux-headers; \
#    rm -rf /tmp/build; \
#    rm -rf /ZeroTierOne-$ZEROTIER_VERSION; \
#    rm -rf /zerotier.zip; \
#    zerotier-one -v


# the 6.0.22 (from libgcc) will report some warning (no version information available) for node
# the 6.0.25 taken from ubuntu ...
ADD libstdc++.so.6.0.25 /usr/lib/libstdc++.so.6
