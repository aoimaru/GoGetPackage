[app/sources/354397892.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1bf85f164a0f4e6592d7ee339b78f2f30987d404706c9c93fcc1d2c5fecdaf1e" [label="/bin/sh -c apt-get install -y software-properties-common git" shape="box"];
  "sha256:8a69899e98c4963bf4a867dbb935ab05a01e27bd1f8614448e0e32647ad53bf6" [label="/bin/sh -c apt-add-repository -y ppa:ansible/ansible" shape="box"];
  "sha256:ff75e3e3c87439448057b6070a181c2f5a70e30994b9c715e057b3b6f9f07522" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5fc8c55b7146c4a1af3454e59ecc11504b5c834ac7623056fd72573ab84e457d" [label="/bin/sh -c apt-get install -y ansible" shape="box"];
  "sha256:2fd703fcf674216f32510f36ce48131d71701746a832f612af28b9b995d3a6ea" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:c7f85b65b1d676bb999918e4f055feb3fa8522673796b12f3314d88acd978334" [label="sha256:c7f85b65b1d676bb999918e4f055feb3fa8522673796b12f3314d88acd978334" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:1bf85f164a0f4e6592d7ee339b78f2f30987d404706c9c93fcc1d2c5fecdaf1e" [label=""];
  "sha256:1bf85f164a0f4e6592d7ee339b78f2f30987d404706c9c93fcc1d2c5fecdaf1e" -> "sha256:8a69899e98c4963bf4a867dbb935ab05a01e27bd1f8614448e0e32647ad53bf6" [label=""];
  "sha256:8a69899e98c4963bf4a867dbb935ab05a01e27bd1f8614448e0e32647ad53bf6" -> "sha256:ff75e3e3c87439448057b6070a181c2f5a70e30994b9c715e057b3b6f9f07522" [label=""];
  "sha256:ff75e3e3c87439448057b6070a181c2f5a70e30994b9c715e057b3b6f9f07522" -> "sha256:5fc8c55b7146c4a1af3454e59ecc11504b5c834ac7623056fd72573ab84e457d" [label=""];
  "sha256:5fc8c55b7146c4a1af3454e59ecc11504b5c834ac7623056fd72573ab84e457d" -> "sha256:2fd703fcf674216f32510f36ce48131d71701746a832f612af28b9b995d3a6ea" [label=""];
  "sha256:2fd703fcf674216f32510f36ce48131d71701746a832f612af28b9b995d3a6ea" -> "sha256:c7f85b65b1d676bb999918e4f055feb3fa8522673796b12f3314d88acd978334" [label=""];
}

