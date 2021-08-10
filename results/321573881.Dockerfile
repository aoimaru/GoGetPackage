[app/sources/321573881.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:fa27e0dea9647de6b0d0efe80ce0127a84254c35cee1878e53d7364f6838c0b2" [label="docker-image://docker.io/library/golang:1.11.1-alpine3.8" shape="ellipse"];
  "sha256:3519a5fcb3915f759713d6acf57a09f233fa6f6c9f4602a65c1fa821941ce019" [label="/bin/sh -c apk add --no-cache --update git" shape="box"];
  "sha256:b79e5a8e1da451d6300cb265f983dac980be25e89f46cd3b1257d25c4752e6a4" [label="mkdir{path=/develop}" shape="note"];
  "sha256:0061091e1e63d9f0036c6c88773df5c014147ff92505bcc853496bded85ceb4b" [label="local://context" shape="ellipse"];
  "sha256:a703b3207290c5ddd27849621b411788594eb65881cdef0f8778c9448a1926eb" [label="copy{src=/, dest=/develop/}" shape="note"];
  "sha256:ec800b271a325a6e809b66fbc331ce5a789ca5b593a5c0c5c69a2d74d6a6125e" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -o docker-flow-swarm-listener -ldflags '-w'" shape="box"];
  "sha256:042f647ef5a83f632c8b756cd52b1e93fc7127890dbcccb75944d6ef698c2d92" [label="copy{src=/develop/docker-flow-swarm-listener, dest=/usr/local/bin/docker-flow-swarm-listener}" shape="note"];
  "sha256:a1691ee4db0e6095fe298fd94c8fe153a4a9298ee7a846cd8ee979556bc80106" [label="/bin/sh -c chmod +x /usr/local/bin/docker-flow-swarm-listener" shape="box"];
  "sha256:f0f476e4bdee7ccd74aea4ca5335beadd8671665a5d6d926330d10814b13c85b" [label="sha256:f0f476e4bdee7ccd74aea4ca5335beadd8671665a5d6d926330d10814b13c85b" shape="plaintext"];
  "sha256:fa27e0dea9647de6b0d0efe80ce0127a84254c35cee1878e53d7364f6838c0b2" -> "sha256:3519a5fcb3915f759713d6acf57a09f233fa6f6c9f4602a65c1fa821941ce019" [label=""];
  "sha256:3519a5fcb3915f759713d6acf57a09f233fa6f6c9f4602a65c1fa821941ce019" -> "sha256:b79e5a8e1da451d6300cb265f983dac980be25e89f46cd3b1257d25c4752e6a4" [label=""];
  "sha256:b79e5a8e1da451d6300cb265f983dac980be25e89f46cd3b1257d25c4752e6a4" -> "sha256:a703b3207290c5ddd27849621b411788594eb65881cdef0f8778c9448a1926eb" [label=""];
  "sha256:0061091e1e63d9f0036c6c88773df5c014147ff92505bcc853496bded85ceb4b" -> "sha256:a703b3207290c5ddd27849621b411788594eb65881cdef0f8778c9448a1926eb" [label=""];
  "sha256:a703b3207290c5ddd27849621b411788594eb65881cdef0f8778c9448a1926eb" -> "sha256:ec800b271a325a6e809b66fbc331ce5a789ca5b593a5c0c5c69a2d74d6a6125e" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:042f647ef5a83f632c8b756cd52b1e93fc7127890dbcccb75944d6ef698c2d92" [label=""];
  "sha256:ec800b271a325a6e809b66fbc331ce5a789ca5b593a5c0c5c69a2d74d6a6125e" -> "sha256:042f647ef5a83f632c8b756cd52b1e93fc7127890dbcccb75944d6ef698c2d92" [label=""];
  "sha256:042f647ef5a83f632c8b756cd52b1e93fc7127890dbcccb75944d6ef698c2d92" -> "sha256:a1691ee4db0e6095fe298fd94c8fe153a4a9298ee7a846cd8ee979556bc80106" [label=""];
  "sha256:a1691ee4db0e6095fe298fd94c8fe153a4a9298ee7a846cd8ee979556bc80106" -> "sha256:f0f476e4bdee7ccd74aea4ca5335beadd8671665a5d6d926330d10814b13c85b" [label=""];
}

