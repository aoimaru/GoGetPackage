[app/sources/323864473.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:3a63d9a49c6da1f25f6755ac0165240512291476d2251aa5b33b631b0a380c1a" [label="/bin/sh -c useradd -d /opt/minio -g root minio" shape="box"];
  "sha256:cda13ab0b1007e9fb464cb6426b732527704c36a17cbd49a3eb52beddd50a9bb" [label="mkdir{path=/opt/minio}" shape="note"];
  "sha256:b6fbcafb82d8a4e6dc5442630b0efb60fcf4de6dfaac3c50fe40f42824a0f92e" [label="local://context" shape="ellipse"];
  "sha256:26ada9e6aae09d903112eeebe8a063643668a75cc00ce0019605d782edb8daaf" [label="copy{src=/entrypoint.sh, dest=/opt/minio/}" shape="note"];
  "sha256:fc59adfa215ef48e2e30f8f025e39395bad5e38b30cb123015bfdc69c9ba1303" [label="/bin/sh -c curl -o minio https://dl.minio.io/server/minio/release/linux-amd64/minio.RELEASE.2018-06-29T02-11-29Z &&     chmod +x minio &&     mkdir config &&     mkdir data  &&     chown minio:root -R . && chmod 777 -R ." shape="box"];
  "sha256:652ad23ca7459e1b932e2dc22fbf1c6930cc7fe864df5dc66d099d8294b06aed" [label="sha256:652ad23ca7459e1b932e2dc22fbf1c6930cc7fe864df5dc66d099d8294b06aed" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:3a63d9a49c6da1f25f6755ac0165240512291476d2251aa5b33b631b0a380c1a" [label=""];
  "sha256:3a63d9a49c6da1f25f6755ac0165240512291476d2251aa5b33b631b0a380c1a" -> "sha256:cda13ab0b1007e9fb464cb6426b732527704c36a17cbd49a3eb52beddd50a9bb" [label=""];
  "sha256:cda13ab0b1007e9fb464cb6426b732527704c36a17cbd49a3eb52beddd50a9bb" -> "sha256:26ada9e6aae09d903112eeebe8a063643668a75cc00ce0019605d782edb8daaf" [label=""];
  "sha256:b6fbcafb82d8a4e6dc5442630b0efb60fcf4de6dfaac3c50fe40f42824a0f92e" -> "sha256:26ada9e6aae09d903112eeebe8a063643668a75cc00ce0019605d782edb8daaf" [label=""];
  "sha256:26ada9e6aae09d903112eeebe8a063643668a75cc00ce0019605d782edb8daaf" -> "sha256:fc59adfa215ef48e2e30f8f025e39395bad5e38b30cb123015bfdc69c9ba1303" [label=""];
  "sha256:fc59adfa215ef48e2e30f8f025e39395bad5e38b30cb123015bfdc69c9ba1303" -> "sha256:652ad23ca7459e1b932e2dc22fbf1c6930cc7fe864df5dc66d099d8294b06aed" [label=""];
}

