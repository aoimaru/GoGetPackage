[app/sources/337127675.Dockerfile]
digraph {
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" [label="docker-image://docker.io/openrasp/centos7:latest" shape="ellipse"];
  "sha256:b9a5cac784887d67372096f65a65f4515ea1e75f7648868a91a322481fcb7bfe" [label="/bin/sh -c curl \"$install_url\" -o package.tar.gz \t&& tar xf package.tar.gz \t&& rm -f package.tar.gz \t&& mv mongodb-linux-x86_64-rhel70-3.6.3 /mongodb \t&& mkdir -p /mongodb/data \t&& chmod 777 -R /mongodb" shape="box"];
  "sha256:36f417b005a1e6eb14d4238ee35d65d731afe9885c07a297be77e1888bd441b0" [label="local://context" shape="ellipse"];
  "sha256:a327ff8b44435b58c6f03baa75b01797ab190a761fb369e44b5db37f8451d167" [label="copy{src=/start.sh, dest=/root/}" shape="note"];
  "sha256:9c4beabf520216efed558fb1a036c1aac57d7e641176c3d9581ddb03c986e2d7" [label="sha256:9c4beabf520216efed558fb1a036c1aac57d7e641176c3d9581ddb03c986e2d7" shape="plaintext"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" -> "sha256:b9a5cac784887d67372096f65a65f4515ea1e75f7648868a91a322481fcb7bfe" [label=""];
  "sha256:b9a5cac784887d67372096f65a65f4515ea1e75f7648868a91a322481fcb7bfe" -> "sha256:a327ff8b44435b58c6f03baa75b01797ab190a761fb369e44b5db37f8451d167" [label=""];
  "sha256:36f417b005a1e6eb14d4238ee35d65d731afe9885c07a297be77e1888bd441b0" -> "sha256:a327ff8b44435b58c6f03baa75b01797ab190a761fb369e44b5db37f8451d167" [label=""];
  "sha256:a327ff8b44435b58c6f03baa75b01797ab190a761fb369e44b5db37f8451d167" -> "sha256:9c4beabf520216efed558fb1a036c1aac57d7e641176c3d9581ddb03c986e2d7" [label=""];
}

