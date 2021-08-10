[app/sources/469690415.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" [label="/bin/sh -c apk add --no-cache tini" shape="box"];
  "sha256:d185b483405b2d0e7b5391fa11ae85bebac6342a1a937ee1e44bec3963eae49b" [label="mkdir{path=/server}" shape="note"];
  "sha256:ce67d60d398bdd556287b6936aa5bc508d59cc2f1f3c98cbd62c7e52c6e90041" [label="local://context" shape="ellipse"];
  "sha256:4ad0b81b1ed3328f4ff786c362a4783fb0b8070e3aa2fde8420b3a14a204ced7" [label="copy{src=/package.json, dest=/server/}" shape="note"];
  "sha256:c1e379c45d95c2e58fd30eb7ece2bf079cd55578fc4d3df491edf16caa0769cf" [label="copy{src=/yarn.lock, dest=/server/}" shape="note"];
  "sha256:ec114a0b4f4bbe5245307afb71f4dbec3eebc1aa5e9a9bc26001b96f20660b7c" [label="/bin/sh -c yarn install --production" shape="box"];
  "sha256:a3a66156d9e64558dd7275ee2c55be4d3bcd8447f224fde30350977aac3bd5a7" [label="/bin/sh -c cp -R node_modules prod_node_modules" shape="box"];
  "sha256:23ecefc1cc19118d8a26c3b61ec79dd03b7dbb9ca74c43a8d4d93d22ccb25321" [label="/bin/sh -c yarn" shape="box"];
  "sha256:b81b0ac5897c28ea4137a96f8e1d7c533e6560115731b745b7429c5cc2c55dee" [label="copy{src=/, dest=/server/}" shape="note"];
  "sha256:69e1cb4824bf5ce01bd38de5af6905c1b307f64d30439a16f738d2f09cfd9c64" [label="/bin/sh -c yarn tsc" shape="box"];
  "sha256:dbbe0581f56d75e130dd8f9d866c4bbaaf7ab800d5be75a077c57ea556213a37" [label="copy{src=/server/prod_node_modules, dest=/server/node_modules}" shape="note"];
  "sha256:83f6f75f812cd82cbf03c2dff07aec9362d60d28a909731fcfcaf36d15b8ad29" [label="copy{src=/server/dist, dest=/server/}" shape="note"];
  "sha256:26d94f700e56d44bb53a4b330ae98c25c14f3514b46b7dea2d62faca5ef3b429" [label="sha256:26d94f700e56d44bb53a4b330ae98c25c14f3514b46b7dea2d62faca5ef3b429" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" [label=""];
  "sha256:ce55479d716c422fa42f6ec8b3ba122340caf1ea808284b7848d3152de056ec2" -> "sha256:d185b483405b2d0e7b5391fa11ae85bebac6342a1a937ee1e44bec3963eae49b" [label=""];
  "sha256:d185b483405b2d0e7b5391fa11ae85bebac6342a1a937ee1e44bec3963eae49b" -> "sha256:4ad0b81b1ed3328f4ff786c362a4783fb0b8070e3aa2fde8420b3a14a204ced7" [label=""];
  "sha256:ce67d60d398bdd556287b6936aa5bc508d59cc2f1f3c98cbd62c7e52c6e90041" -> "sha256:4ad0b81b1ed3328f4ff786c362a4783fb0b8070e3aa2fde8420b3a14a204ced7" [label=""];
  "sha256:4ad0b81b1ed3328f4ff786c362a4783fb0b8070e3aa2fde8420b3a14a204ced7" -> "sha256:c1e379c45d95c2e58fd30eb7ece2bf079cd55578fc4d3df491edf16caa0769cf" [label=""];
  "sha256:ce67d60d398bdd556287b6936aa5bc508d59cc2f1f3c98cbd62c7e52c6e90041" -> "sha256:c1e379c45d95c2e58fd30eb7ece2bf079cd55578fc4d3df491edf16caa0769cf" [label=""];
  "sha256:c1e379c45d95c2e58fd30eb7ece2bf079cd55578fc4d3df491edf16caa0769cf" -> "sha256:ec114a0b4f4bbe5245307afb71f4dbec3eebc1aa5e9a9bc26001b96f20660b7c" [label=""];
  "sha256:ec114a0b4f4bbe5245307afb71f4dbec3eebc1aa5e9a9bc26001b96f20660b7c" -> "sha256:a3a66156d9e64558dd7275ee2c55be4d3bcd8447f224fde30350977aac3bd5a7" [label=""];
  "sha256:a3a66156d9e64558dd7275ee2c55be4d3bcd8447f224fde30350977aac3bd5a7" -> "sha256:23ecefc1cc19118d8a26c3b61ec79dd03b7dbb9ca74c43a8d4d93d22ccb25321" [label=""];
  "sha256:23ecefc1cc19118d8a26c3b61ec79dd03b7dbb9ca74c43a8d4d93d22ccb25321" -> "sha256:b81b0ac5897c28ea4137a96f8e1d7c533e6560115731b745b7429c5cc2c55dee" [label=""];
  "sha256:ce67d60d398bdd556287b6936aa5bc508d59cc2f1f3c98cbd62c7e52c6e90041" -> "sha256:b81b0ac5897c28ea4137a96f8e1d7c533e6560115731b745b7429c5cc2c55dee" [label=""];
  "sha256:b81b0ac5897c28ea4137a96f8e1d7c533e6560115731b745b7429c5cc2c55dee" -> "sha256:69e1cb4824bf5ce01bd38de5af6905c1b307f64d30439a16f738d2f09cfd9c64" [label=""];
  "sha256:c1e379c45d95c2e58fd30eb7ece2bf079cd55578fc4d3df491edf16caa0769cf" -> "sha256:dbbe0581f56d75e130dd8f9d866c4bbaaf7ab800d5be75a077c57ea556213a37" [label=""];
  "sha256:69e1cb4824bf5ce01bd38de5af6905c1b307f64d30439a16f738d2f09cfd9c64" -> "sha256:dbbe0581f56d75e130dd8f9d866c4bbaaf7ab800d5be75a077c57ea556213a37" [label=""];
  "sha256:dbbe0581f56d75e130dd8f9d866c4bbaaf7ab800d5be75a077c57ea556213a37" -> "sha256:83f6f75f812cd82cbf03c2dff07aec9362d60d28a909731fcfcaf36d15b8ad29" [label=""];
  "sha256:69e1cb4824bf5ce01bd38de5af6905c1b307f64d30439a16f738d2f09cfd9c64" -> "sha256:83f6f75f812cd82cbf03c2dff07aec9362d60d28a909731fcfcaf36d15b8ad29" [label=""];
  "sha256:83f6f75f812cd82cbf03c2dff07aec9362d60d28a909731fcfcaf36d15b8ad29" -> "sha256:26d94f700e56d44bb53a4b330ae98c25c14f3514b46b7dea2d62faca5ef3b429" [label=""];
}

