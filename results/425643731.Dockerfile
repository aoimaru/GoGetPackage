[app/sources/425643731.Dockerfile]
digraph {
  "sha256:ee67479010af4479a43b5db35626ec5bb270fa364af5faa475890764f455a2a0" [label="docker-image://docker.io/library/node:8@sha256:a681bf74805b80d03eb21a6c0ef168a976108a287a74167ab593fc953aac34df" shape="ellipse"];
  "sha256:a9c9d9a7360429f3ef52941facec7ff232403acfa26b2c467e3511680531c8d2" [label="mkdir{path=/etc}" shape="note"];
  "sha256:99e39fffef96a46a342cfe0c17221465345e6296467b7dc5c719ab63ef5bb570" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:42a8691308f434d670b5b6663e854011ec684406587b717ea6f568fad209916d" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:16d42cd6f4b35ed4c7493461d96f6a41cffaa71cb73519d913f93e14be3a6379" [label="/bin/sh -c apt-get install -y bzip2" shape="box"];
  "sha256:9ca69928d9bfbca70e96175d744f066ae6e5667e24c6a47e2a113592fa41e628" [label="/bin/sh -c git clone https://github.com/jembi/openhim-core-js.git" shape="box"];
  "sha256:a60384e9683041aec4f0d0b695193544b9823d3b47d042898e49a747d2dd1936" [label="mkdir{path=/etc/openhim-core-js}" shape="note"];
  "sha256:6c184bc6b19b9030e6efa2e6d4540a8dfd85492bcbe20a445dc118dbd56b3872" [label="/bin/sh -c git checkout -b $branch origin/$branch" shape="box"];
  "sha256:8eb4bacbf75047a5cb077466d60c48cb0828ba57b941858bb33a48bfe14cb4f0" [label="/bin/sh -c npm i" shape="box"];
  "sha256:9145255d91988890338b88c7ccc0a89b6775e6bc29de7aa338b89695aeb3a6ee" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:f7fecd593759cc7aec49c856e4eddc46fcc57c47108c04082f4940b77f69ff7a" [label="sha256:f7fecd593759cc7aec49c856e4eddc46fcc57c47108c04082f4940b77f69ff7a" shape="plaintext"];
  "sha256:ee67479010af4479a43b5db35626ec5bb270fa364af5faa475890764f455a2a0" -> "sha256:a9c9d9a7360429f3ef52941facec7ff232403acfa26b2c467e3511680531c8d2" [label=""];
  "sha256:a9c9d9a7360429f3ef52941facec7ff232403acfa26b2c467e3511680531c8d2" -> "sha256:99e39fffef96a46a342cfe0c17221465345e6296467b7dc5c719ab63ef5bb570" [label=""];
  "sha256:99e39fffef96a46a342cfe0c17221465345e6296467b7dc5c719ab63ef5bb570" -> "sha256:42a8691308f434d670b5b6663e854011ec684406587b717ea6f568fad209916d" [label=""];
  "sha256:42a8691308f434d670b5b6663e854011ec684406587b717ea6f568fad209916d" -> "sha256:16d42cd6f4b35ed4c7493461d96f6a41cffaa71cb73519d913f93e14be3a6379" [label=""];
  "sha256:16d42cd6f4b35ed4c7493461d96f6a41cffaa71cb73519d913f93e14be3a6379" -> "sha256:9ca69928d9bfbca70e96175d744f066ae6e5667e24c6a47e2a113592fa41e628" [label=""];
  "sha256:9ca69928d9bfbca70e96175d744f066ae6e5667e24c6a47e2a113592fa41e628" -> "sha256:a60384e9683041aec4f0d0b695193544b9823d3b47d042898e49a747d2dd1936" [label=""];
  "sha256:a60384e9683041aec4f0d0b695193544b9823d3b47d042898e49a747d2dd1936" -> "sha256:6c184bc6b19b9030e6efa2e6d4540a8dfd85492bcbe20a445dc118dbd56b3872" [label=""];
  "sha256:6c184bc6b19b9030e6efa2e6d4540a8dfd85492bcbe20a445dc118dbd56b3872" -> "sha256:8eb4bacbf75047a5cb077466d60c48cb0828ba57b941858bb33a48bfe14cb4f0" [label=""];
  "sha256:8eb4bacbf75047a5cb077466d60c48cb0828ba57b941858bb33a48bfe14cb4f0" -> "sha256:9145255d91988890338b88c7ccc0a89b6775e6bc29de7aa338b89695aeb3a6ee" [label=""];
  "sha256:9145255d91988890338b88c7ccc0a89b6775e6bc29de7aa338b89695aeb3a6ee" -> "sha256:f7fecd593759cc7aec49c856e4eddc46fcc57c47108c04082f4940b77f69ff7a" [label=""];
}

