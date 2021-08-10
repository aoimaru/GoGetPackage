[app/sources/482170056.Dockerfile]
digraph {
  "sha256:2635d6d051b5c112c5d6587d48d3f1c2b694e605542b57cc09b00315d0043589" [label="docker-image://docker.io/library/httpd:2.4.20" shape="ellipse"];
  "sha256:28a680800b1bea3bd9203344d6494b1bf1f0e4d039d6400dc1e07c23feb4531f" [label="/bin/sh -c sed -i \"/jessie-updates/d\" /etc/apt/sources.list" shape="box"];
  "sha256:ba46644f90639fd8a8128094c02c5b5bbe7cd5bf7e0240290b56ea0b7ba8992a" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:90526146371a4370115f45c9988c8ab24dce15912977fe9d4e4285ee1a5c146c" [label="local://context" shape="ellipse"];
  "sha256:257bd676909cfd365b63773d719836407e745890e7fa83649a1ec8feeca4bf21" [label="copy{src=/httpd.conf, dest=/usr/local/apache2/conf/httpd.conf}" shape="note"];
  "sha256:90af5d5b116507b211083d971dbe794acc06a3eb7b61c2a7264068344219d5ec" [label="sha256:90af5d5b116507b211083d971dbe794acc06a3eb7b61c2a7264068344219d5ec" shape="plaintext"];
  "sha256:2635d6d051b5c112c5d6587d48d3f1c2b694e605542b57cc09b00315d0043589" -> "sha256:28a680800b1bea3bd9203344d6494b1bf1f0e4d039d6400dc1e07c23feb4531f" [label=""];
  "sha256:28a680800b1bea3bd9203344d6494b1bf1f0e4d039d6400dc1e07c23feb4531f" -> "sha256:ba46644f90639fd8a8128094c02c5b5bbe7cd5bf7e0240290b56ea0b7ba8992a" [label=""];
  "sha256:ba46644f90639fd8a8128094c02c5b5bbe7cd5bf7e0240290b56ea0b7ba8992a" -> "sha256:257bd676909cfd365b63773d719836407e745890e7fa83649a1ec8feeca4bf21" [label=""];
  "sha256:90526146371a4370115f45c9988c8ab24dce15912977fe9d4e4285ee1a5c146c" -> "sha256:257bd676909cfd365b63773d719836407e745890e7fa83649a1ec8feeca4bf21" [label=""];
  "sha256:257bd676909cfd365b63773d719836407e745890e7fa83649a1ec8feeca4bf21" -> "sha256:90af5d5b116507b211083d971dbe794acc06a3eb7b61c2a7264068344219d5ec" [label=""];
}

