[app/sources/189719009.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e0ec0ee954cd1747028573220be72af1324d171440ae70a642c57d1ce972698e" [label="/bin/sh -c echo \"#!/bin/sh\\nsleep 31\" > /usr/local/bin/tsuru_unit_agent" shape="box"];
  "sha256:0399007245369301240b9bd14c97390d77051d3484e7091f0505e54cd27a654c" [label="/bin/sh -c chmod +x /usr/local/bin/tsuru_unit_agent" shape="box"];
  "sha256:3aaead12f2851353630fbcec7168aa6be00250c6c9e7bf1caba02190c8f7aa9b" [label="/bin/sh -c useradd -m ubuntu -s /bin/bash" shape="box"];
  "sha256:ffceb4f7910951c05344226278a31460fe77abbd369f0137063f8e798bdd70da" [label="/bin/sh -c echo \"ubuntu ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:46985b248813c6d5dbee249cdbdfece4bc7f750bb5cdcca0fa5ec95806ea985b" [label="sha256:46985b248813c6d5dbee249cdbdfece4bc7f750bb5cdcca0fa5ec95806ea985b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e0ec0ee954cd1747028573220be72af1324d171440ae70a642c57d1ce972698e" [label=""];
  "sha256:e0ec0ee954cd1747028573220be72af1324d171440ae70a642c57d1ce972698e" -> "sha256:0399007245369301240b9bd14c97390d77051d3484e7091f0505e54cd27a654c" [label=""];
  "sha256:0399007245369301240b9bd14c97390d77051d3484e7091f0505e54cd27a654c" -> "sha256:3aaead12f2851353630fbcec7168aa6be00250c6c9e7bf1caba02190c8f7aa9b" [label=""];
  "sha256:3aaead12f2851353630fbcec7168aa6be00250c6c9e7bf1caba02190c8f7aa9b" -> "sha256:ffceb4f7910951c05344226278a31460fe77abbd369f0137063f8e798bdd70da" [label=""];
  "sha256:ffceb4f7910951c05344226278a31460fe77abbd369f0137063f8e798bdd70da" -> "sha256:46985b248813c6d5dbee249cdbdfece4bc7f750bb5cdcca0fa5ec95806ea985b" [label=""];
}

