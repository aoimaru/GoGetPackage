[app/sources/252012930.Dockerfile]
digraph {
  "sha256:50b08f3b1b12ad202ca96c26c7cb1ab3f2450c3c146806d59db5166aadd1407f" [label="docker-image://docker.io/hypriot/rpi-mysql:5.5" shape="ellipse"];
  "sha256:9e0ab1ce090a98a3483757e9bf650786da51f71d0827ce161d61cf52442a1479" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture | awk -F- '{ print $NF }')\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture | awk -F- '{ print $NF }').asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y --auto-remove ca-certificates wget         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4162d4da00939a9dde410762f0f5d5d1f5a8ef88bafbd8253dc2101e9d65904a" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:26e387ca832f462d01b788375d5a76d99fb1cce4a9cefe4b8ea11af6fd849c1b" [label="local://context" shape="ellipse"];
  "sha256:d8e0eee9e8fac767091dc9be8a829b75e8ef13ce416f6cc2b6ce92f70434a5d7" [label="copy{src=/my-small.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:39dc9e86af73a7398e1a0faa3376acd1642cf6083e506677f637a939f94bd6cc" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:e52894d0f7e7af9b1fdd562b7a6d2f3b4a9482dfdb0330dbd936586615624d27" [label="sha256:e52894d0f7e7af9b1fdd562b7a6d2f3b4a9482dfdb0330dbd936586615624d27" shape="plaintext"];
  "sha256:50b08f3b1b12ad202ca96c26c7cb1ab3f2450c3c146806d59db5166aadd1407f" -> "sha256:9e0ab1ce090a98a3483757e9bf650786da51f71d0827ce161d61cf52442a1479" [label=""];
  "sha256:9e0ab1ce090a98a3483757e9bf650786da51f71d0827ce161d61cf52442a1479" -> "sha256:4162d4da00939a9dde410762f0f5d5d1f5a8ef88bafbd8253dc2101e9d65904a" [label=""];
  "sha256:4162d4da00939a9dde410762f0f5d5d1f5a8ef88bafbd8253dc2101e9d65904a" -> "sha256:d8e0eee9e8fac767091dc9be8a829b75e8ef13ce416f6cc2b6ce92f70434a5d7" [label=""];
  "sha256:26e387ca832f462d01b788375d5a76d99fb1cce4a9cefe4b8ea11af6fd849c1b" -> "sha256:d8e0eee9e8fac767091dc9be8a829b75e8ef13ce416f6cc2b6ce92f70434a5d7" [label=""];
  "sha256:d8e0eee9e8fac767091dc9be8a829b75e8ef13ce416f6cc2b6ce92f70434a5d7" -> "sha256:39dc9e86af73a7398e1a0faa3376acd1642cf6083e506677f637a939f94bd6cc" [label=""];
  "sha256:26e387ca832f462d01b788375d5a76d99fb1cce4a9cefe4b8ea11af6fd849c1b" -> "sha256:39dc9e86af73a7398e1a0faa3376acd1642cf6083e506677f637a939f94bd6cc" [label=""];
  "sha256:39dc9e86af73a7398e1a0faa3376acd1642cf6083e506677f637a939f94bd6cc" -> "sha256:e52894d0f7e7af9b1fdd562b7a6d2f3b4a9482dfdb0330dbd936586615624d27" [label=""];
}

