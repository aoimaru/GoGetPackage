[app/sources/240175623.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:202e35fca2eb9a925ddc9332eb0eb27a1d1b81f50279dd92c0545a05e2e7925a" [label="local://context" shape="ellipse"];
  "sha256:e058eb2391922b6e43b1b5b753c6f8cbb966576d2269b8288ef1c3d7a8e08357" [label="copy{src=/target/egf-voucher-workflow-0.0.1-SNAPSHOT.jar, dest=/opt/egov/egf-voucher-workflow.jar}" shape="note"];
  "sha256:ecc5885e1f0df0f22e68e2d61e009a83408a05dd042745d07dcd8551799b65be" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:b5e33e4d51f4900a91475b6749ceaf7d65ace22c8dfb154830f28ffd244b187e" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:5d816432e85a127d293e5e9458171ec306ee0b38fb65fe3f5fcb48566a65fa24" [label="sha256:5d816432e85a127d293e5e9458171ec306ee0b38fb65fe3f5fcb48566a65fa24" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:e058eb2391922b6e43b1b5b753c6f8cbb966576d2269b8288ef1c3d7a8e08357" [label=""];
  "sha256:202e35fca2eb9a925ddc9332eb0eb27a1d1b81f50279dd92c0545a05e2e7925a" -> "sha256:e058eb2391922b6e43b1b5b753c6f8cbb966576d2269b8288ef1c3d7a8e08357" [label=""];
  "sha256:e058eb2391922b6e43b1b5b753c6f8cbb966576d2269b8288ef1c3d7a8e08357" -> "sha256:ecc5885e1f0df0f22e68e2d61e009a83408a05dd042745d07dcd8551799b65be" [label=""];
  "sha256:202e35fca2eb9a925ddc9332eb0eb27a1d1b81f50279dd92c0545a05e2e7925a" -> "sha256:ecc5885e1f0df0f22e68e2d61e009a83408a05dd042745d07dcd8551799b65be" [label=""];
  "sha256:ecc5885e1f0df0f22e68e2d61e009a83408a05dd042745d07dcd8551799b65be" -> "sha256:b5e33e4d51f4900a91475b6749ceaf7d65ace22c8dfb154830f28ffd244b187e" [label=""];
  "sha256:b5e33e4d51f4900a91475b6749ceaf7d65ace22c8dfb154830f28ffd244b187e" -> "sha256:5d816432e85a127d293e5e9458171ec306ee0b38fb65fe3f5fcb48566a65fa24" [label=""];
}

