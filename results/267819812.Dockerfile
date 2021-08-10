[app/sources/267819812.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:6c51d5ce7a6f6ffa2651c70609b4167ea8b0ebd31cfd98e4f2337a8760281b09" [label="/bin/sh -c apk add --no-cache unzip curl" shape="box"];
  "sha256:ec8c98d64ead4c5e698cc03d3662ba2f1b29a40e35db224861f731516db44a74" [label="/bin/sh -c curl -sL  https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > /tmp/packer.zip &&     echo \"${PACKER_HASH}  /tmp/packer.zip\" | sha256sum  -c &&     unzip /tmp/packer.zip &&     rm /tmp/packer.zip &&     mv packer /usr/local/bin/packer &&     chmod +x /usr/local/bin/packer" shape="box"];
  "sha256:5c93692ab5f77cb1aa8672f4c3667dff74b4f7f4ab61cc7c89a7005457954e59" [label="sha256:5c93692ab5f77cb1aa8672f4c3667dff74b4f7f4ab61cc7c89a7005457954e59" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:6c51d5ce7a6f6ffa2651c70609b4167ea8b0ebd31cfd98e4f2337a8760281b09" [label=""];
  "sha256:6c51d5ce7a6f6ffa2651c70609b4167ea8b0ebd31cfd98e4f2337a8760281b09" -> "sha256:ec8c98d64ead4c5e698cc03d3662ba2f1b29a40e35db224861f731516db44a74" [label=""];
  "sha256:ec8c98d64ead4c5e698cc03d3662ba2f1b29a40e35db224861f731516db44a74" -> "sha256:5c93692ab5f77cb1aa8672f4c3667dff74b4f7f4ab61cc7c89a7005457954e59" [label=""];
}

