[app/sub_sources/128492899.Dockerfile]
digraph {
  "sha256:07d4eecb471df652718b0fc6b4d63b46afcd1c715df5588d89e851adce438959" [label="docker-image://docker.io/library/composer:latest@sha256:0d86184f928c117a601f21d60bc6138b1aa18b20ecbe3a1e7eb3dcbc30434cde" shape="ellipse"];
  "sha256:d1703a7bef9d09e8c3185324e8dcb2a420e478130430a3e5018f23a8d1df7fa6" [label="/bin/sh -c addgroup -S tool && adduser -S -G tool tool &&     mkdir -p /opt/mount/" shape="box"];
  "sha256:d66a3f07ca2a53bfba3c4d55c4763d362c919c336a445dac9694fedd059834b0" [label="/bin/sh -c composer global require pheromone/phpcs-security-audit" shape="box"];
  "sha256:b579deda90322a76ef5981c7f0c05d91a1326c6401ea7424ccbf4a2581ebda9e" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:bed2bc8904907a415612c76a58e5b8715c482e40076d6ca5ece279aa4ff13bf8" [label="/bin/sh -c sh ./vendor/pheromone/phpcs-security-audit/symlink.sh" shape="box"];
  "sha256:0202573e89f9686b88cf64e3e4a0b31a32a1ae15aa1f0febc5c11d9f5976c422" [label="sha256:0202573e89f9686b88cf64e3e4a0b31a32a1ae15aa1f0febc5c11d9f5976c422" shape="plaintext"];
  "sha256:07d4eecb471df652718b0fc6b4d63b46afcd1c715df5588d89e851adce438959" -> "sha256:d1703a7bef9d09e8c3185324e8dcb2a420e478130430a3e5018f23a8d1df7fa6" [label=""];
  "sha256:d1703a7bef9d09e8c3185324e8dcb2a420e478130430a3e5018f23a8d1df7fa6" -> "sha256:d66a3f07ca2a53bfba3c4d55c4763d362c919c336a445dac9694fedd059834b0" [label=""];
  "sha256:d66a3f07ca2a53bfba3c4d55c4763d362c919c336a445dac9694fedd059834b0" -> "sha256:b579deda90322a76ef5981c7f0c05d91a1326c6401ea7424ccbf4a2581ebda9e" [label=""];
  "sha256:b579deda90322a76ef5981c7f0c05d91a1326c6401ea7424ccbf4a2581ebda9e" -> "sha256:bed2bc8904907a415612c76a58e5b8715c482e40076d6ca5ece279aa4ff13bf8" [label=""];
  "sha256:bed2bc8904907a415612c76a58e5b8715c482e40076d6ca5ece279aa4ff13bf8" -> "sha256:0202573e89f9686b88cf64e3e4a0b31a32a1ae15aa1f0febc5c11d9f5976c422" [label=""];
}

