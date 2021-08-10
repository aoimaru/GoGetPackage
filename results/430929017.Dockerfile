[app/sources/430929017.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:be9451670ec1de989f57bd8ec027de4f522a0bd7c09f46d93a5200232039ee66" [label="/bin/sh -c groupadd -r redis && useradd -r -g redis redis" shape="box"];
  "sha256:91f088057ffec60b4c6395514748b23cf55b762967efe28f268fba9279b3ec8d" [label="/bin/sh -c set -ex; \t\tfetchDeps=\" \t\tca-certificates \t\tdirmngr \t\tgnupg \t\twget \t\"; \tapt-get update; \tapt-get install -y --no-install-recommends $fetchDeps; \trm -rf /var/lib/apt/lists/*; \t\tdpkgArch=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\"; \twget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch\"; \twget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc\"; \texport GNUPGHOME=\"$(mktemp -d)\"; \tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; \tgpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; \tgpgconf --kill all; \trm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc; \tchmod +x /usr/local/bin/gosu; \tgosu nobody true; \t\tapt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5b27f6b1edf6449a9328cf7f91f2418f2d5519b24e0b580d952c16532fd6726f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tlibc6-i386 \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cf82d6ba5df0f22c75d3cb9c912dc3c02d201595a5a27893f1ffc1b820ea577c" [label="/bin/sh -c set -ex; \t\tbuildDeps=' \t\tca-certificates \t\twget \t\t\t\tgcc \t\tgcc-multilib \t\tlibc6-dev-i386 \t\tmake \t'; \tapt-get update; \tapt-get install -y $buildDeps --no-install-recommends; \trm -rf /var/lib/apt/lists/*; \t\twget -O redis.tar.gz \"$REDIS_DOWNLOAD_URL\"; \techo \"$REDIS_DOWNLOAD_SHA *redis.tar.gz\" | sha256sum -c -; \tmkdir -p /usr/src/redis; \ttar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; \trm redis.tar.gz; \t\tgrep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; \tsed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\\1 0!' /usr/src/redis/src/server.h; \tgrep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; \t\tmake -C /usr/src/redis -j \"$(nproc)\" 32bit; \tmake -C /usr/src/redis install; \t\trm -r /usr/src/redis; \t\tapt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:4d8ca04fdbea7e7e1df69c72c04d7e0f76adc3915a86e19b72dd3643ee62e767" [label="/bin/sh -c mkdir /data && chown redis:redis /data" shape="box"];
  "sha256:056192dabfb08b0a72e6b24057d135e879e8e221903c12ad816bfe6edf7a50bf" [label="mkdir{path=/data}" shape="note"];
  "sha256:2b7c8b818f12b56d06dcad861899a996eb2b4200f6749e95685b0f3ed4da2951" [label="local://context" shape="ellipse"];
  "sha256:9687b48bc962d6ebd47f1eeb537658ab7680437d943242cd9296d5130c665e09" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:3d0d0e527d20b5a8ea815958bbfac91d4e67a8d62803d0b4d4553f9e02e1b61d" [label="sha256:3d0d0e527d20b5a8ea815958bbfac91d4e67a8d62803d0b4d4553f9e02e1b61d" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:be9451670ec1de989f57bd8ec027de4f522a0bd7c09f46d93a5200232039ee66" [label=""];
  "sha256:be9451670ec1de989f57bd8ec027de4f522a0bd7c09f46d93a5200232039ee66" -> "sha256:91f088057ffec60b4c6395514748b23cf55b762967efe28f268fba9279b3ec8d" [label=""];
  "sha256:91f088057ffec60b4c6395514748b23cf55b762967efe28f268fba9279b3ec8d" -> "sha256:5b27f6b1edf6449a9328cf7f91f2418f2d5519b24e0b580d952c16532fd6726f" [label=""];
  "sha256:5b27f6b1edf6449a9328cf7f91f2418f2d5519b24e0b580d952c16532fd6726f" -> "sha256:cf82d6ba5df0f22c75d3cb9c912dc3c02d201595a5a27893f1ffc1b820ea577c" [label=""];
  "sha256:cf82d6ba5df0f22c75d3cb9c912dc3c02d201595a5a27893f1ffc1b820ea577c" -> "sha256:4d8ca04fdbea7e7e1df69c72c04d7e0f76adc3915a86e19b72dd3643ee62e767" [label=""];
  "sha256:4d8ca04fdbea7e7e1df69c72c04d7e0f76adc3915a86e19b72dd3643ee62e767" -> "sha256:056192dabfb08b0a72e6b24057d135e879e8e221903c12ad816bfe6edf7a50bf" [label=""];
  "sha256:056192dabfb08b0a72e6b24057d135e879e8e221903c12ad816bfe6edf7a50bf" -> "sha256:9687b48bc962d6ebd47f1eeb537658ab7680437d943242cd9296d5130c665e09" [label=""];
  "sha256:2b7c8b818f12b56d06dcad861899a996eb2b4200f6749e95685b0f3ed4da2951" -> "sha256:9687b48bc962d6ebd47f1eeb537658ab7680437d943242cd9296d5130c665e09" [label=""];
  "sha256:9687b48bc962d6ebd47f1eeb537658ab7680437d943242cd9296d5130c665e09" -> "sha256:3d0d0e527d20b5a8ea815958bbfac91d4e67a8d62803d0b4d4553f9e02e1b61d" [label=""];
}
