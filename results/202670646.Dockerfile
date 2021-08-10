[app/sources/202670646.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:210275a2bb1a825972d1d61ab0a2f3cbd80bb6089dce54f884f65ca299375ce7" [label="/bin/sh -c apk add --update ca-certificates &&     rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:9457e779f47643a1e0b5097fb1824e7cf30ab98040d30d273956a102b193444d" [label="local://context" shape="ellipse"];
  "sha256:54d05e07f7b989b224a534e2086522b6887be8a84a49b5734227d5a0aea57b09" [label="copy{src=/probe, dest=/probe}" shape="note"];
  "sha256:66cfa5cf3e21bd120d7f54dce6617133b0c9eb579bfbb054ae9d8e36f87fce88" [label="sha256:66cfa5cf3e21bd120d7f54dce6617133b0c9eb579bfbb054ae9d8e36f87fce88" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:210275a2bb1a825972d1d61ab0a2f3cbd80bb6089dce54f884f65ca299375ce7" [label=""];
  "sha256:210275a2bb1a825972d1d61ab0a2f3cbd80bb6089dce54f884f65ca299375ce7" -> "sha256:54d05e07f7b989b224a534e2086522b6887be8a84a49b5734227d5a0aea57b09" [label=""];
  "sha256:9457e779f47643a1e0b5097fb1824e7cf30ab98040d30d273956a102b193444d" -> "sha256:54d05e07f7b989b224a534e2086522b6887be8a84a49b5734227d5a0aea57b09" [label=""];
  "sha256:54d05e07f7b989b224a534e2086522b6887be8a84a49b5734227d5a0aea57b09" -> "sha256:66cfa5cf3e21bd120d7f54dce6617133b0c9eb579bfbb054ae9d8e36f87fce88" [label=""];
}

