[app/sources/455549013.Dockerfile]
digraph {
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" [label="local://context" shape="ellipse"];
  "sha256:2fdfde2bd6c13450540655ca72553fc3794650217760b8a12bd6f753e0d66769" [label="docker-image://docker.io/library/envoy-base:latest" shape="ellipse"];
  "sha256:ae2abe6d3ce017114a1e903a166a60c0d7aaa47390b8240b312ba76f412a42b9" [label="copy{src=/conf/envoy.yaml, dest=/etc/envoy/envoy.yaml}" shape="note"];
  "sha256:46a6dada4ff1c5dfccde508a4983ffde557f7171043d868c798800203b034984" [label="copy{src=/conf/spiffe-envoy-agent.conf, dest=/etc/spiffe-envoy-agent.conf}" shape="note"];
  "sha256:6172e3723db15ebb1e9e5a3c01d75bbbdd915ab0cd882212f05f3c707d58ff59" [label="copy{src=/conf/spire-agent.conf, dest=/opt/spire/conf/agent/agent.conf}" shape="note"];
  "sha256:3f5eab81ec72141f5e494f2330f82ce1b2ffa64315d237153a1c12424d712a05" [label="copy{src=/conf/agent.key.pem, dest=/opt/spire/conf/agent/agent.key.pem}" shape="note"];
  "sha256:8659468d9237a9465aabf4ab979a4ecc80bdf3395af34befede929c230ab8732" [label="copy{src=/conf/agent.crt.pem, dest=/opt/spire/conf/agent/agent.crt.pem}" shape="note"];
  "sha256:cf03b95ffa8700149fe6732527653609979ebe5c2d75050de2b7de8b8ea8f07d" [label="copy{src=/conf/proxy-cacert.pem, dest=/etc/ssl/certs/proxy-cacert.pem}" shape="note"];
  "sha256:713e3aa3a56847e9719964d7a474adc365fe0160c51447ce29a158cf79ad31fa" [label="copy{src=/web-server, dest=/usr/local/bin/web-server}" shape="note"];
  "sha256:b44e314db1432df689de6c0743a495192bed57cdd148d26613879096cc43c85f" [label="mkdir{path=/opt/spire}" shape="note"];
  "sha256:5766f994eeb5034d639ef419e8aca786bc907fd31d3066e8aa1bce9e1ac777ff" [label="sha256:5766f994eeb5034d639ef419e8aca786bc907fd31d3066e8aa1bce9e1ac777ff" shape="plaintext"];
  "sha256:2fdfde2bd6c13450540655ca72553fc3794650217760b8a12bd6f753e0d66769" -> "sha256:ae2abe6d3ce017114a1e903a166a60c0d7aaa47390b8240b312ba76f412a42b9" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:ae2abe6d3ce017114a1e903a166a60c0d7aaa47390b8240b312ba76f412a42b9" [label=""];
  "sha256:ae2abe6d3ce017114a1e903a166a60c0d7aaa47390b8240b312ba76f412a42b9" -> "sha256:46a6dada4ff1c5dfccde508a4983ffde557f7171043d868c798800203b034984" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:46a6dada4ff1c5dfccde508a4983ffde557f7171043d868c798800203b034984" [label=""];
  "sha256:46a6dada4ff1c5dfccde508a4983ffde557f7171043d868c798800203b034984" -> "sha256:6172e3723db15ebb1e9e5a3c01d75bbbdd915ab0cd882212f05f3c707d58ff59" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:6172e3723db15ebb1e9e5a3c01d75bbbdd915ab0cd882212f05f3c707d58ff59" [label=""];
  "sha256:6172e3723db15ebb1e9e5a3c01d75bbbdd915ab0cd882212f05f3c707d58ff59" -> "sha256:3f5eab81ec72141f5e494f2330f82ce1b2ffa64315d237153a1c12424d712a05" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:3f5eab81ec72141f5e494f2330f82ce1b2ffa64315d237153a1c12424d712a05" [label=""];
  "sha256:3f5eab81ec72141f5e494f2330f82ce1b2ffa64315d237153a1c12424d712a05" -> "sha256:8659468d9237a9465aabf4ab979a4ecc80bdf3395af34befede929c230ab8732" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:8659468d9237a9465aabf4ab979a4ecc80bdf3395af34befede929c230ab8732" [label=""];
  "sha256:8659468d9237a9465aabf4ab979a4ecc80bdf3395af34befede929c230ab8732" -> "sha256:cf03b95ffa8700149fe6732527653609979ebe5c2d75050de2b7de8b8ea8f07d" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:cf03b95ffa8700149fe6732527653609979ebe5c2d75050de2b7de8b8ea8f07d" [label=""];
  "sha256:cf03b95ffa8700149fe6732527653609979ebe5c2d75050de2b7de8b8ea8f07d" -> "sha256:713e3aa3a56847e9719964d7a474adc365fe0160c51447ce29a158cf79ad31fa" [label=""];
  "sha256:169b871a1bea6d04a308d47dd905c2961b7ecffacc2dfdeea57e1c58fbaa1321" -> "sha256:713e3aa3a56847e9719964d7a474adc365fe0160c51447ce29a158cf79ad31fa" [label=""];
  "sha256:713e3aa3a56847e9719964d7a474adc365fe0160c51447ce29a158cf79ad31fa" -> "sha256:b44e314db1432df689de6c0743a495192bed57cdd148d26613879096cc43c85f" [label=""];
  "sha256:b44e314db1432df689de6c0743a495192bed57cdd148d26613879096cc43c85f" -> "sha256:5766f994eeb5034d639ef419e8aca786bc907fd31d3066e8aa1bce9e1ac777ff" [label=""];
}

