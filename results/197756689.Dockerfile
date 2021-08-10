[app/sources/197756689.Dockerfile]
digraph {
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" [label="docker-image://docker.io/gliderlabs/alpine:3.4" shape="ellipse"];
  "sha256:31b2a5a5ce3a8021dcb94e175e892f48feea96ce4f9e0ef204dc7f89f10343bb" [label="/bin/sh -c apk update && apk add     nginx     curl     unzip     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c2268fc64af484f2663b52947083400248837bb8b80c22d09dbb2f46a1679af6" [label="/bin/sh -c curl -Lo /tmp/consul_template_0.14.0_linux_amd64.zip https://releases.hashicorp.com/consul-template/0.14.0/consul-template_0.14.0_linux_amd64.zip &&     unzip /tmp/consul_template_0.14.0_linux_amd64.zip &&     mv consul-template /bin" shape="box"];
  "sha256:a03aedeb4f7b9716a2236ae855a3a0db2482d664054001e25469b0375ebb2867" [label="/bin/sh -c export CP_SHA1=198d96c8d7bfafb1ab6df96653c29701510b833c     && curl -Lso /tmp/containerpilot.tar.gz          \"https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VERSION}/containerpilot-${CONTAINERPILOT_VERSION}.tar.gz\"     && echo \"${CP_SHA1}  /tmp/containerpilot.tar.gz\" | sha1sum -c     && tar zxf /tmp/containerpilot.tar.gz -C /bin     && rm /tmp/containerpilot.tar.gz" shape="box"];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" [label="local://context" shape="ellipse"];
  "sha256:4951c7e132bd83836a6f8673960a856a3c6989a6ecb5c098feedbe4891a80558" [label="copy{src=/containerpilot.json, dest=/etc/containerpilot/}" shape="note"];
  "sha256:64f95c22c34dc4217f25716b440a54d51a18242d16512f81342c48ab233384fe" [label="copy{src=/reload-nginx.sh, dest=/bin}" shape="note"];
  "sha256:bdd965ce5bf85bacde4cc8f147bf477049fb7c25decae92d8cf12002e500d67c" [label="copy{src=/index.*, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:9eaa4f20b121ee4136ee50f1a00675582169d935dc37fadf1a740873b0424c9f" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:a8b55b22cc9e84fb17d409948aaf52965b77cba62d49757bd1fe23fca80d2afc" [label="copy{src=/nginx.conf.ctmpl, dest=/etc/containerpilot/}" shape="note"];
  "sha256:581eb107063f1077efd806e1d30abc6ea58bc5aa9a51cd09730d267d53a8b90c" [label="sha256:581eb107063f1077efd806e1d30abc6ea58bc5aa9a51cd09730d267d53a8b90c" shape="plaintext"];
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" -> "sha256:31b2a5a5ce3a8021dcb94e175e892f48feea96ce4f9e0ef204dc7f89f10343bb" [label=""];
  "sha256:31b2a5a5ce3a8021dcb94e175e892f48feea96ce4f9e0ef204dc7f89f10343bb" -> "sha256:c2268fc64af484f2663b52947083400248837bb8b80c22d09dbb2f46a1679af6" [label=""];
  "sha256:c2268fc64af484f2663b52947083400248837bb8b80c22d09dbb2f46a1679af6" -> "sha256:a03aedeb4f7b9716a2236ae855a3a0db2482d664054001e25469b0375ebb2867" [label=""];
  "sha256:a03aedeb4f7b9716a2236ae855a3a0db2482d664054001e25469b0375ebb2867" -> "sha256:4951c7e132bd83836a6f8673960a856a3c6989a6ecb5c098feedbe4891a80558" [label=""];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" -> "sha256:4951c7e132bd83836a6f8673960a856a3c6989a6ecb5c098feedbe4891a80558" [label=""];
  "sha256:4951c7e132bd83836a6f8673960a856a3c6989a6ecb5c098feedbe4891a80558" -> "sha256:64f95c22c34dc4217f25716b440a54d51a18242d16512f81342c48ab233384fe" [label=""];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" -> "sha256:64f95c22c34dc4217f25716b440a54d51a18242d16512f81342c48ab233384fe" [label=""];
  "sha256:64f95c22c34dc4217f25716b440a54d51a18242d16512f81342c48ab233384fe" -> "sha256:bdd965ce5bf85bacde4cc8f147bf477049fb7c25decae92d8cf12002e500d67c" [label=""];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" -> "sha256:bdd965ce5bf85bacde4cc8f147bf477049fb7c25decae92d8cf12002e500d67c" [label=""];
  "sha256:bdd965ce5bf85bacde4cc8f147bf477049fb7c25decae92d8cf12002e500d67c" -> "sha256:9eaa4f20b121ee4136ee50f1a00675582169d935dc37fadf1a740873b0424c9f" [label=""];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" -> "sha256:9eaa4f20b121ee4136ee50f1a00675582169d935dc37fadf1a740873b0424c9f" [label=""];
  "sha256:9eaa4f20b121ee4136ee50f1a00675582169d935dc37fadf1a740873b0424c9f" -> "sha256:a8b55b22cc9e84fb17d409948aaf52965b77cba62d49757bd1fe23fca80d2afc" [label=""];
  "sha256:cec3cdb9f484cb9b0d6e74ba832d091505652f27dd24b8895b437d072f5a7b3c" -> "sha256:a8b55b22cc9e84fb17d409948aaf52965b77cba62d49757bd1fe23fca80d2afc" [label=""];
  "sha256:a8b55b22cc9e84fb17d409948aaf52965b77cba62d49757bd1fe23fca80d2afc" -> "sha256:581eb107063f1077efd806e1d30abc6ea58bc5aa9a51cd09730d267d53a8b90c" [label=""];
}

