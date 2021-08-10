[app/sources/140013754.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:aad1473aea339d752586133231a71aafbc872adef1c7c12c85f9a7f62cee1181" [label="/bin/sh -c apk add --update git libc6-compat" shape="box"];
  "sha256:0d8393a0df577af712eb0395a732e0ea17cc2a81c24c9a0f365c285f524d391e" [label="/bin/sh -c wget https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz" shape="box"];
  "sha256:d397c30329303c9b565195d5f719999b1637525e3eff6d3d6b4c4f7379995c46" [label="/bin/sh -c tar -C /usr/local -xzf go*.tar.gz" shape="box"];
  "sha256:ff641832384cf372c8277fcb90807432a1f3ec4ce88a454530e452910a4cd93c" [label="/bin/sh -c rm go*.tar.gz" shape="box"];
  "sha256:d5db441d442bf9e2786474c0b625421a19b428f8e92948629411048b7f382da0" [label="/bin/sh -c mkdir -p ${codebin}" shape="box"];
  "sha256:7e338a9bf866bceefeb029e56c00107ac8eb877116417fbb59428691ee8e9782" [label="/bin/sh -c mkdir -p ${codesrc}/${repo}" shape="box"];
  "sha256:d19e4ee607ceb662749b599849e554eb170798f75d6094891c65e4ef2ebf8a6c" [label="/bin/sh -c git clone https://github.com/${repo} ${codesrc}/${repo}" shape="box"];
  "sha256:6512f3b0e2580a948c71bc2bce28f4bfb0d9862f92c90493f3ebc32e843c34f6" [label="mkdir{path=/code/src/OpenEugene/openboard/back/cmd/openbsrv}" shape="note"];
  "sha256:0ce594571898f1462e6d007d4998910242ee6273913bca12a93da792cf264288" [label="/bin/sh -c go build -o ${codebin}/openbsrv" shape="box"];
  "sha256:c2df4c84ca14b6794822a49f2c46133dc6cf93fe340840e3cc49121fc552c7e7" [label="sha256:c2df4c84ca14b6794822a49f2c46133dc6cf93fe340840e3cc49121fc552c7e7" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:aad1473aea339d752586133231a71aafbc872adef1c7c12c85f9a7f62cee1181" [label=""];
  "sha256:aad1473aea339d752586133231a71aafbc872adef1c7c12c85f9a7f62cee1181" -> "sha256:0d8393a0df577af712eb0395a732e0ea17cc2a81c24c9a0f365c285f524d391e" [label=""];
  "sha256:0d8393a0df577af712eb0395a732e0ea17cc2a81c24c9a0f365c285f524d391e" -> "sha256:d397c30329303c9b565195d5f719999b1637525e3eff6d3d6b4c4f7379995c46" [label=""];
  "sha256:d397c30329303c9b565195d5f719999b1637525e3eff6d3d6b4c4f7379995c46" -> "sha256:ff641832384cf372c8277fcb90807432a1f3ec4ce88a454530e452910a4cd93c" [label=""];
  "sha256:ff641832384cf372c8277fcb90807432a1f3ec4ce88a454530e452910a4cd93c" -> "sha256:d5db441d442bf9e2786474c0b625421a19b428f8e92948629411048b7f382da0" [label=""];
  "sha256:d5db441d442bf9e2786474c0b625421a19b428f8e92948629411048b7f382da0" -> "sha256:7e338a9bf866bceefeb029e56c00107ac8eb877116417fbb59428691ee8e9782" [label=""];
  "sha256:7e338a9bf866bceefeb029e56c00107ac8eb877116417fbb59428691ee8e9782" -> "sha256:d19e4ee607ceb662749b599849e554eb170798f75d6094891c65e4ef2ebf8a6c" [label=""];
  "sha256:d19e4ee607ceb662749b599849e554eb170798f75d6094891c65e4ef2ebf8a6c" -> "sha256:6512f3b0e2580a948c71bc2bce28f4bfb0d9862f92c90493f3ebc32e843c34f6" [label=""];
  "sha256:6512f3b0e2580a948c71bc2bce28f4bfb0d9862f92c90493f3ebc32e843c34f6" -> "sha256:0ce594571898f1462e6d007d4998910242ee6273913bca12a93da792cf264288" [label=""];
  "sha256:0ce594571898f1462e6d007d4998910242ee6273913bca12a93da792cf264288" -> "sha256:c2df4c84ca14b6794822a49f2c46133dc6cf93fe340840e3cc49121fc552c7e7" [label=""];
}

