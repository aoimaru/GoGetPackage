[app/sources/250071057.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:6608bfdcc8a8377a0a387ba3417999e41762882c988ff74054657754fed6800b" [label="/bin/sh -c apk upgrade --update     && apk add bash tzdata wget ca-certificates     && wget ${IDGEN_DOWNLOAD_URL} -O /usr/local/bin/idgen     && chmod +x /usr/local/bin/idgen     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && apk del wget     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9ef91957ccf211de116bc35208d0181a41c782b9ca7aca7a63dee536407adf24" [label="local://context" shape="ellipse"];
  "sha256:f484f5365cc323bf5c6020c78f5fb66ea0443578e57605a9acc9c7abaf8cd1ee" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:bcb3430d54859fb17bd26b515828e37c509ceb809bbb75d4d1c9cbc38fb5a1ba" [label="sha256:bcb3430d54859fb17bd26b515828e37c509ceb809bbb75d4d1c9cbc38fb5a1ba" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:6608bfdcc8a8377a0a387ba3417999e41762882c988ff74054657754fed6800b" [label=""];
  "sha256:6608bfdcc8a8377a0a387ba3417999e41762882c988ff74054657754fed6800b" -> "sha256:f484f5365cc323bf5c6020c78f5fb66ea0443578e57605a9acc9c7abaf8cd1ee" [label=""];
  "sha256:9ef91957ccf211de116bc35208d0181a41c782b9ca7aca7a63dee536407adf24" -> "sha256:f484f5365cc323bf5c6020c78f5fb66ea0443578e57605a9acc9c7abaf8cd1ee" [label=""];
  "sha256:f484f5365cc323bf5c6020c78f5fb66ea0443578e57605a9acc9c7abaf8cd1ee" -> "sha256:bcb3430d54859fb17bd26b515828e37c509ceb809bbb75d4d1c9cbc38fb5a1ba" [label=""];
}

