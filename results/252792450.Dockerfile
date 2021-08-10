[app/sources/252792450.Dockerfile]
digraph {
  "sha256:aee39c132ee9b46051f36f29ec5830fe32688f619a01d32900063acd005e4e04" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:dbfc3de89cd0083d787d8bd53bdce2856800b46ad6237d2b1b20848c96f5f092" [label="/bin/sh -c apt-get update && apt-get install -y nodejs && apt-get install -y npm" shape="box"];
  "sha256:a1540731eb83a6c67dd63d6d808981cf741eaa9be2b2643e3ff3ded1ee4945c8" [label="/bin/sh -c npm install express" shape="box"];
  "sha256:83da521022c48b668f6ed5c76d68ce0a1ec898f85bbc54473e46cbd3f1409a0c" [label="/bin/sh -c mkdir /nodejs" shape="box"];
  "sha256:236c5f14daeff180bbb846c3f0547b63eefefcb92cb1aecbbeb27e24cd236ad2" [label="copy{src=/Nodejs, dest=/nodejs/}" shape="note"];
  "sha256:1e346ae02f7bb2fd720b06d00b09aaec6ca48853ffeb8c877ef514652a65c6ea" [label="mkdir{path=/nodejs}" shape="note"];
  "sha256:12268e4b1a7ab1fc2516e4eddca59c12357a90a50c6880b457d24ece97aa4008" [label="sha256:12268e4b1a7ab1fc2516e4eddca59c12357a90a50c6880b457d24ece97aa4008" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:dbfc3de89cd0083d787d8bd53bdce2856800b46ad6237d2b1b20848c96f5f092" [label=""];
  "sha256:dbfc3de89cd0083d787d8bd53bdce2856800b46ad6237d2b1b20848c96f5f092" -> "sha256:a1540731eb83a6c67dd63d6d808981cf741eaa9be2b2643e3ff3ded1ee4945c8" [label=""];
  "sha256:a1540731eb83a6c67dd63d6d808981cf741eaa9be2b2643e3ff3ded1ee4945c8" -> "sha256:83da521022c48b668f6ed5c76d68ce0a1ec898f85bbc54473e46cbd3f1409a0c" [label=""];
  "sha256:83da521022c48b668f6ed5c76d68ce0a1ec898f85bbc54473e46cbd3f1409a0c" -> "sha256:236c5f14daeff180bbb846c3f0547b63eefefcb92cb1aecbbeb27e24cd236ad2" [label=""];
  "sha256:aee39c132ee9b46051f36f29ec5830fe32688f619a01d32900063acd005e4e04" -> "sha256:236c5f14daeff180bbb846c3f0547b63eefefcb92cb1aecbbeb27e24cd236ad2" [label=""];
  "sha256:236c5f14daeff180bbb846c3f0547b63eefefcb92cb1aecbbeb27e24cd236ad2" -> "sha256:1e346ae02f7bb2fd720b06d00b09aaec6ca48853ffeb8c877ef514652a65c6ea" [label=""];
  "sha256:1e346ae02f7bb2fd720b06d00b09aaec6ca48853ffeb8c877ef514652a65c6ea" -> "sha256:12268e4b1a7ab1fc2516e4eddca59c12357a90a50c6880b457d24ece97aa4008" [label=""];
}

