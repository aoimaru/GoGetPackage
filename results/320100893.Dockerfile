[app/sources/320100893.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:56acde58620f65b8723ca327b7ea7a143a3299c82c807ceab1b93963e35809e9" [label="/bin/sh -c set -ex;     echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories;     echo '@community http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories;     sed -i 's|http://dl-cdn.alpinelinux.org|https://mirrors.aliyun.com|g' /etc/apk/repositories;     apk update;     apk upgrade;     apk add --no-cache --virtual .common-deps         ca-certificates@edge         su-exec@edge         curl@edge     ;     update-ca-certificates --fresh;     rm -rf /tmp/* /var/tmp/* /var/cache/apk/*;" shape="box"];
  "sha256:bef5307c615192e2c612b114ca77c24c076ef6069ea8b3e50da33a6ff357ab90" [label="/bin/sh -c set -ex;     addgroup -S \"${RUN_AS_USER}\";     adduser -S -D -H  -h /var/empty -s /sbin/nologin -G \"${RUN_AS_USER}\" \"${RUN_AS_USER}\";" shape="box"];
  "sha256:338b514d844b23a393f03e9728f8ed301f40159d9d5d0e35702842508e3db9db" [label="local://context" shape="ellipse"];
  "sha256:cbf920bb6a44022a5c49d1bf551493a649f975e5555fbe5cdaa633a7c6510b05" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/},copy{src=/entrypoint-utils.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:a1af52d9b50a3f83483d4d7f6fed00c1a598fca5bb176bd11c04d47c89b5f5dc" [label="/bin/sh -c set -ex; \tchmod +x /usr/local/bin/docker-entrypoint.sh;" shape="box"];
  "sha256:9c3cffa765f99059fc71759a551b8f3ef365e93e9c7f16cdf19ef181e92267f1" [label="/bin/sh -c set -ex; \tdocker-entrypoint.sh /bin/true;" shape="box"];
  "sha256:af885f8f38b634c9fad9fcbf6ca9841bff7058bae19d94b8898f38769b151e70" [label="sha256:af885f8f38b634c9fad9fcbf6ca9841bff7058bae19d94b8898f38769b151e70" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:56acde58620f65b8723ca327b7ea7a143a3299c82c807ceab1b93963e35809e9" [label=""];
  "sha256:56acde58620f65b8723ca327b7ea7a143a3299c82c807ceab1b93963e35809e9" -> "sha256:bef5307c615192e2c612b114ca77c24c076ef6069ea8b3e50da33a6ff357ab90" [label=""];
  "sha256:bef5307c615192e2c612b114ca77c24c076ef6069ea8b3e50da33a6ff357ab90" -> "sha256:cbf920bb6a44022a5c49d1bf551493a649f975e5555fbe5cdaa633a7c6510b05" [label=""];
  "sha256:338b514d844b23a393f03e9728f8ed301f40159d9d5d0e35702842508e3db9db" -> "sha256:cbf920bb6a44022a5c49d1bf551493a649f975e5555fbe5cdaa633a7c6510b05" [label=""];
  "sha256:cbf920bb6a44022a5c49d1bf551493a649f975e5555fbe5cdaa633a7c6510b05" -> "sha256:a1af52d9b50a3f83483d4d7f6fed00c1a598fca5bb176bd11c04d47c89b5f5dc" [label=""];
  "sha256:a1af52d9b50a3f83483d4d7f6fed00c1a598fca5bb176bd11c04d47c89b5f5dc" -> "sha256:9c3cffa765f99059fc71759a551b8f3ef365e93e9c7f16cdf19ef181e92267f1" [label=""];
  "sha256:9c3cffa765f99059fc71759a551b8f3ef365e93e9c7f16cdf19ef181e92267f1" -> "sha256:af885f8f38b634c9fad9fcbf6ca9841bff7058bae19d94b8898f38769b151e70" [label=""];
}

