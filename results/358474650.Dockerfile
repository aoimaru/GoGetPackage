[app/sources/358474650.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:747aa069836cbf23244a8180a4db0b05f868cc09cdac39becc1d19f3eae9c484" [label="/bin/sh -c set -xe \t&& OTP_DOWNLOAD_URL=\"https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz\" \t&& OTP_DOWNLOAD_SHA256=\"94f84e8ca0db0dcadd3411fa7a05dd937142b6ae830255dc341c30b45261b01a\" \t&& fetchDeps=' \t\tcurl \t\tca-certificates' \t&& apt-get update \t&& apt-get install -y --no-install-recommends $fetchDeps \t&& curl -fSL -o otp-src.tar.gz \"$OTP_DOWNLOAD_URL\" \t&& echo \"$OTP_DOWNLOAD_SHA256  otp-src.tar.gz\" | sha256sum -c - \t&& runtimeDeps=' \t\tlibodbc1 \t\tlibssl1.0.2 \t\tlibsctp1 \t' \t&& buildDeps=' \t\tautoconf \t\tdpkg-dev \t\tgcc \t\tg++ \t\tmake \t\tlibncurses-dev \t\tunixodbc-dev \t\tlibssl1.0-dev \t\tlibsctp-dev \t' \t&& apt-get install -y --no-install-recommends $runtimeDeps \t&& apt-get install -y --no-install-recommends $buildDeps \t&& export ERL_TOP=\"/usr/src/otp_src_${OTP_VERSION%%@*}\" \t&& mkdir -vp $ERL_TOP \t&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 \t&& rm otp-src.tar.gz \t&& ( cd $ERL_TOP \t  && ./otp_build autoconf \t  && gnuArch=\"$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)\" \t  && ./configure --build=\"$gnuArch\" --enable-sctp \t  && make -j$(nproc) \t  && make install ) \t&& find /usr/local -name examples | xargs rm -rf \t&& apt-get purge -y --auto-remove $buildDeps $fetchDeps \t&& rm -rf $ERL_TOP /var/lib/apt/lists/*" shape="box"];
  "sha256:9cd8d564a38cd1439c3a0959d2084a3a9b78838e9a761e123b197f334a1ed017" [label="sha256:9cd8d564a38cd1439c3a0959d2084a3a9b78838e9a761e123b197f334a1ed017" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:747aa069836cbf23244a8180a4db0b05f868cc09cdac39becc1d19f3eae9c484" [label=""];
  "sha256:747aa069836cbf23244a8180a4db0b05f868cc09cdac39becc1d19f3eae9c484" -> "sha256:9cd8d564a38cd1439c3a0959d2084a3a9b78838e9a761e123b197f334a1ed017" [label=""];
}

