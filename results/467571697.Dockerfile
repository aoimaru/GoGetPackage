[app/sources/467571697.Dockerfile]
digraph {
  "sha256:88349c4d4a34289fa6738bf8321f3408ec254746e1c6233650cb236d2ad7b1da" [label="docker-image://docker.io/32bit/debian:jessie" shape="ellipse"];
  "sha256:15cf48ecc7b4830d5911036fe00c983116f0e4ad98f07acdb8c9913ae0c29708" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:a1f3051302ec9b31fcdbd1a87755d403864eef893505c89598929d3f745114a0" [label="/bin/sh -c touch .profile" shape="box"];
  "sha256:396efde723aa22eb0688e485d87f1bb27db1ac0087b697b9acb3f20f5c932a03" [label="/bin/sh -c curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash" shape="box"];
  "sha256:376210cb73a04fe79b089df046535f5e31d18df5d1b0f05b25984b3711ab485f" [label="sha256:376210cb73a04fe79b089df046535f5e31d18df5d1b0f05b25984b3711ab485f" shape="plaintext"];
  "sha256:88349c4d4a34289fa6738bf8321f3408ec254746e1c6233650cb236d2ad7b1da" -> "sha256:15cf48ecc7b4830d5911036fe00c983116f0e4ad98f07acdb8c9913ae0c29708" [label=""];
  "sha256:15cf48ecc7b4830d5911036fe00c983116f0e4ad98f07acdb8c9913ae0c29708" -> "sha256:a1f3051302ec9b31fcdbd1a87755d403864eef893505c89598929d3f745114a0" [label=""];
  "sha256:a1f3051302ec9b31fcdbd1a87755d403864eef893505c89598929d3f745114a0" -> "sha256:396efde723aa22eb0688e485d87f1bb27db1ac0087b697b9acb3f20f5c932a03" [label=""];
  "sha256:396efde723aa22eb0688e485d87f1bb27db1ac0087b697b9acb3f20f5c932a03" -> "sha256:376210cb73a04fe79b089df046535f5e31d18df5d1b0f05b25984b3711ab485f" [label=""];
}

