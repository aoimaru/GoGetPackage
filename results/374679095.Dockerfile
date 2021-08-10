[app/sources/374679095.Dockerfile]
digraph {
  "sha256:88efe58011eca54848f44e044d1e048788c2dd4b983df814da9767f88a445b84" [label="local://context" shape="ellipse"];
  "sha256:fa5d08a512ca36d1d276f32002e202b06a3f8edff88c6a4dac760ee9acd06c4e" [label="docker-image://docker.io/ceph/ceph:v14.2@sha256:403891fcd94326e5358ada6060cab14d6e8efe9306a2fb92f43ef8b9715b970f" shape="ellipse"];
  "sha256:348115c9b17e19cee7d9bec519a701afeba85e491c04597d87096b799ea65d81" [label="copy{src=/cephcsi, dest=/usr/local/bin/cephcsi}" shape="note"];
  "sha256:da25ff4fb976016a1af5948bac9947d3367c7d3049e4085c35958dedb0436af9" [label="/bin/sh -c chmod +x $CSIBIN" shape="box"];
  "sha256:9304badfb4774e70a0db742cd587a4839fce38e2760c4a47751500ee17176280" [label="sha256:9304badfb4774e70a0db742cd587a4839fce38e2760c4a47751500ee17176280" shape="plaintext"];
  "sha256:fa5d08a512ca36d1d276f32002e202b06a3f8edff88c6a4dac760ee9acd06c4e" -> "sha256:348115c9b17e19cee7d9bec519a701afeba85e491c04597d87096b799ea65d81" [label=""];
  "sha256:88efe58011eca54848f44e044d1e048788c2dd4b983df814da9767f88a445b84" -> "sha256:348115c9b17e19cee7d9bec519a701afeba85e491c04597d87096b799ea65d81" [label=""];
  "sha256:348115c9b17e19cee7d9bec519a701afeba85e491c04597d87096b799ea65d81" -> "sha256:da25ff4fb976016a1af5948bac9947d3367c7d3049e4085c35958dedb0436af9" [label=""];
  "sha256:da25ff4fb976016a1af5948bac9947d3367c7d3049e4085c35958dedb0436af9" -> "sha256:9304badfb4774e70a0db742cd587a4839fce38e2760c4a47751500ee17176280" [label=""];
}

