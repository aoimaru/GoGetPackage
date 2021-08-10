[app/sources/327827429.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:fa46a08b18493e869a526579c7a0a367e37dd42c023c7fd53b8461d24632d091" [label="/bin/sh -c apk add \t--no-cache \t uwsgi \tpy-pip \talpine-sdk \tbash \tpostgresql-dev \tuwsgi-python3 && \t apk add \t--no-cache \t--repository http://nl.alpinelinux.org/alpine/3.4/main \tpython3-dev && \t pip3 install \tvirtualenv \trequests" shape="box"];
  "sha256:168261401799265be4d0ead8e7f9e6e8572c18c9608e36f34bc969a276ca5d02" [label="local://context" shape="ellipse"];
  "sha256:40786db15a294fd162c0b3b17df7000fd5c7eb88afe5b41e2a2390c7d31a7dba" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:b88437b8ae0a277896f999704973dcad186da8f1610e27bff61a0e7296584d0e" [label="mkdir{path=/app}" shape="note"];
  "sha256:fe052108bcbcae58c5b02167315acb9788652061f09450c582231bcfbecd6a61" [label="/bin/sh -c sh Docker/bootstrap.sh" shape="box"];
  "sha256:b3c311605430830273597d4ccf7f7903f20b44249abbdef3c72a1f1f1d579cdc" [label="sha256:b3c311605430830273597d4ccf7f7903f20b44249abbdef3c72a1f1f1d579cdc" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:fa46a08b18493e869a526579c7a0a367e37dd42c023c7fd53b8461d24632d091" [label=""];
  "sha256:fa46a08b18493e869a526579c7a0a367e37dd42c023c7fd53b8461d24632d091" -> "sha256:40786db15a294fd162c0b3b17df7000fd5c7eb88afe5b41e2a2390c7d31a7dba" [label=""];
  "sha256:168261401799265be4d0ead8e7f9e6e8572c18c9608e36f34bc969a276ca5d02" -> "sha256:40786db15a294fd162c0b3b17df7000fd5c7eb88afe5b41e2a2390c7d31a7dba" [label=""];
  "sha256:40786db15a294fd162c0b3b17df7000fd5c7eb88afe5b41e2a2390c7d31a7dba" -> "sha256:b88437b8ae0a277896f999704973dcad186da8f1610e27bff61a0e7296584d0e" [label=""];
  "sha256:b88437b8ae0a277896f999704973dcad186da8f1610e27bff61a0e7296584d0e" -> "sha256:fe052108bcbcae58c5b02167315acb9788652061f09450c582231bcfbecd6a61" [label=""];
  "sha256:fe052108bcbcae58c5b02167315acb9788652061f09450c582231bcfbecd6a61" -> "sha256:b3c311605430830273597d4ccf7f7903f20b44249abbdef3c72a1f1f1d579cdc" [label=""];
}

