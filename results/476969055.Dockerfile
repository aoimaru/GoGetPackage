[app/sources/476969055.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:4a79ee152263afc4c117f8843f5306975f3c46a8238bc7cfc47b5edd2d82e337" [label="/bin/sh -c apk --no-cache add       openssl       rspamd       rspamd-client       rspamd-controller       rspamd-proxy &&     mkdir /run/rspamd &&     touch       /etc/rspamd/local.d/antivirus.conf       /etc/rspamd/local.d/worker-controller.inc &&     chown -R rspamd       /run/rspamd       /var/lib/rspamd       /etc/rspamd/local.d/antivirus.conf       /etc/rspamd/local.d/worker-controller.inc &&     wget -O /usr/share/rspamd/bayes.spam.sqlite https://rspamd.com/rspamd_statistics/bayes.spam.sqlite &&     wget -O /usr/share/rspamd/bayes.ham.sqlite https://rspamd.com/rspamd_statistics/bayes.ham.sqlite &&     apk --no-cache del       openssl" shape="box"];
  "sha256:ee82248558d82fd5a617e8ed048a8e53c6bd5b57977a22782f51b788c5472297" [label="docker-image://docker.io/jwilder/dockerize:0.6.0" shape="ellipse"];
  "sha256:c42b87a828ad6a21e880a102e75f7c7e25b25d1d3d3fbe71c700867dee773b27" [label="copy{src=/usr/local/bin/dockerize, dest=/usr/local/bin}" shape="note"];
  "sha256:253913db8c6bfa251de09872a13a8fb293bbc8263393a2c3570c940083a59756" [label="local://context" shape="ellipse"];
  "sha256:b59147d81132deff0ec0df746d4529d644d3ea5ae1a70c5dab5f86b64d142d70" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:0c3851062710955e507305b9cc5fc76d2ee3133183743434ef287748b8406ec9" [label="sha256:0c3851062710955e507305b9cc5fc76d2ee3133183743434ef287748b8406ec9" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:4a79ee152263afc4c117f8843f5306975f3c46a8238bc7cfc47b5edd2d82e337" [label=""];
  "sha256:4a79ee152263afc4c117f8843f5306975f3c46a8238bc7cfc47b5edd2d82e337" -> "sha256:c42b87a828ad6a21e880a102e75f7c7e25b25d1d3d3fbe71c700867dee773b27" [label=""];
  "sha256:ee82248558d82fd5a617e8ed048a8e53c6bd5b57977a22782f51b788c5472297" -> "sha256:c42b87a828ad6a21e880a102e75f7c7e25b25d1d3d3fbe71c700867dee773b27" [label=""];
  "sha256:c42b87a828ad6a21e880a102e75f7c7e25b25d1d3d3fbe71c700867dee773b27" -> "sha256:b59147d81132deff0ec0df746d4529d644d3ea5ae1a70c5dab5f86b64d142d70" [label=""];
  "sha256:253913db8c6bfa251de09872a13a8fb293bbc8263393a2c3570c940083a59756" -> "sha256:b59147d81132deff0ec0df746d4529d644d3ea5ae1a70c5dab5f86b64d142d70" [label=""];
  "sha256:b59147d81132deff0ec0df746d4529d644d3ea5ae1a70c5dab5f86b64d142d70" -> "sha256:0c3851062710955e507305b9cc5fc76d2ee3133183743434ef287748b8406ec9" [label=""];
}

