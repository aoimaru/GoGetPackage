[app/sources/255318070.Dockerfile]
digraph {
  "sha256:caaf5202cf2a777b6eb05fcacf100980b76c8418024d45fff2885167f341eca9" [label="docker-image://docker.io/library/rabbitmq:latest" shape="ellipse"];
  "sha256:9e093ba789a4019d7b44723cded46e588d20f540f5921c9c5805367830ff17af" [label="local://context" shape="ellipse"];
  "sha256:a2e2b6b0d718e0e5876516dd39829446d6327865eb69998ee95d70c8d7b1d436" [label="copy{src=/scripts, dest=/root/scripts/}" shape="note"];
  "sha256:8c96bceece06bb4061448ed6c93e01e8b306c914b559e7ddd02a318f4aff96f0" [label="/bin/sh -c /bin/bash /root/scripts/build-rabbitmq.sh" shape="box"];
  "sha256:44d29f579ea1332eb38072ee073a9c4e533ac318fae941175ff26a6396e42e84" [label="sha256:44d29f579ea1332eb38072ee073a9c4e533ac318fae941175ff26a6396e42e84" shape="plaintext"];
  "sha256:caaf5202cf2a777b6eb05fcacf100980b76c8418024d45fff2885167f341eca9" -> "sha256:a2e2b6b0d718e0e5876516dd39829446d6327865eb69998ee95d70c8d7b1d436" [label=""];
  "sha256:9e093ba789a4019d7b44723cded46e588d20f540f5921c9c5805367830ff17af" -> "sha256:a2e2b6b0d718e0e5876516dd39829446d6327865eb69998ee95d70c8d7b1d436" [label=""];
  "sha256:a2e2b6b0d718e0e5876516dd39829446d6327865eb69998ee95d70c8d7b1d436" -> "sha256:8c96bceece06bb4061448ed6c93e01e8b306c914b559e7ddd02a318f4aff96f0" [label=""];
  "sha256:8c96bceece06bb4061448ed6c93e01e8b306c914b559e7ddd02a318f4aff96f0" -> "sha256:44d29f579ea1332eb38072ee073a9c4e533ac318fae941175ff26a6396e42e84" [label=""];
}

