[app/sources/164019622.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8df28e76cee8fb9d47f18ebbf0c3a30e596d7b8fb7dc880ddff99e8f18dcb56d" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:3359a6c9b700b5a467877d35cb1b37eb3344b0d0c79674233181060f2aef82f1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fb353aec6759e1b46b6671016b13d7d409ed1dc26502d75374c785b7a52f9cdf" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:3d71e4938e4ecc99fac6fc99eb7bf8537f990c41bd92d37bbc88115ebc8c8d9a" [label="/bin/sh -c add-apt-repository -y ppa:ubuntu-wine/ppa && add-apt-repository -y ppa:chris-lea/node.js && apt-get update && apt-get -y install wine1.7 nodejs xvfb" shape="box"];
  "sha256:37e927a91a2f2e404fff19b04a73be2aee4fd9666ffa806e61071bcff763b267" [label="local://context" shape="ellipse"];
  "sha256:2dee5e0f4f9476cf95992f1041daa81207b0324fc232b619d0887dd53673c8d0" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:bb46d81420e974f93b094d7d2eca2b3a914d60d952a70ddb5f0ef6f39b1ccfaa" [label="mkdir{path=/app}" shape="note"];
  "sha256:c1180f75809dbbec413d4a8d55fc28942d283dbf255e3d77f61473390b46a16f" [label="sha256:c1180f75809dbbec413d4a8d55fc28942d283dbf255e3d77f61473390b46a16f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8df28e76cee8fb9d47f18ebbf0c3a30e596d7b8fb7dc880ddff99e8f18dcb56d" [label=""];
  "sha256:8df28e76cee8fb9d47f18ebbf0c3a30e596d7b8fb7dc880ddff99e8f18dcb56d" -> "sha256:3359a6c9b700b5a467877d35cb1b37eb3344b0d0c79674233181060f2aef82f1" [label=""];
  "sha256:3359a6c9b700b5a467877d35cb1b37eb3344b0d0c79674233181060f2aef82f1" -> "sha256:fb353aec6759e1b46b6671016b13d7d409ed1dc26502d75374c785b7a52f9cdf" [label=""];
  "sha256:fb353aec6759e1b46b6671016b13d7d409ed1dc26502d75374c785b7a52f9cdf" -> "sha256:3d71e4938e4ecc99fac6fc99eb7bf8537f990c41bd92d37bbc88115ebc8c8d9a" [label=""];
  "sha256:3d71e4938e4ecc99fac6fc99eb7bf8537f990c41bd92d37bbc88115ebc8c8d9a" -> "sha256:2dee5e0f4f9476cf95992f1041daa81207b0324fc232b619d0887dd53673c8d0" [label=""];
  "sha256:37e927a91a2f2e404fff19b04a73be2aee4fd9666ffa806e61071bcff763b267" -> "sha256:2dee5e0f4f9476cf95992f1041daa81207b0324fc232b619d0887dd53673c8d0" [label=""];
  "sha256:2dee5e0f4f9476cf95992f1041daa81207b0324fc232b619d0887dd53673c8d0" -> "sha256:bb46d81420e974f93b094d7d2eca2b3a914d60d952a70ddb5f0ef6f39b1ccfaa" [label=""];
  "sha256:bb46d81420e974f93b094d7d2eca2b3a914d60d952a70ddb5f0ef6f39b1ccfaa" -> "sha256:c1180f75809dbbec413d4a8d55fc28942d283dbf255e3d77f61473390b46a16f" [label=""];
}

