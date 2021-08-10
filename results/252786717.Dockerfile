[app/sources/252786717.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:c3ef72b1ad99e534b6b45ff741963427bfb5f60ca4297ec17a93f4af2295c62f" [label="/bin/sh -c apk add --no-cache git tar gzip ca-certificates docker python3 openssh bash && pip3 install docker-compose && rm -rf /tmp /root/.cache /var/cache/apk $(find / -regex '.*\\\\.py[co]')" shape="box"];
  "sha256:57ad90b8146880886543c305c522a29ba42f727df5c2b28b9f6c297bd04190ac" [label="sha256:57ad90b8146880886543c305c522a29ba42f727df5c2b28b9f6c297bd04190ac" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:c3ef72b1ad99e534b6b45ff741963427bfb5f60ca4297ec17a93f4af2295c62f" [label=""];
  "sha256:c3ef72b1ad99e534b6b45ff741963427bfb5f60ca4297ec17a93f4af2295c62f" -> "sha256:57ad90b8146880886543c305c522a29ba42f727df5c2b28b9f6c297bd04190ac" [label=""];
}

