[app/sources/252769613.Dockerfile]
digraph {
  "sha256:c732995420046bf00727fb29418d225690faf64d9ca1072faadac4b4f2360083" [label="docker-image://docker.io/library/redis:3" shape="ellipse"];
  "sha256:a5e4ba71e0a51d5ba1fc2b5e97f2d4de410a6c5f6a49cf618293957fa37e8d29" [label="local://context" shape="ellipse"];
  "sha256:568ecdbe554f7343c4e2f1d782dcd1b5d95178adf3564d5b7b394f8557680e2b" [label="copy{src=/sentinel-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:6337ae82d69c5d034aa81be6e6607a19139b524891af514cfbfa7c68d6e36a20" [label="/bin/sh -c chmod +x /usr/local/bin/sentinel-entrypoint.sh" shape="box"];
  "sha256:5896e20acf2414d43d6822bcdf7ac11c4650fd4a320802799ad18c55357f1841" [label="sha256:5896e20acf2414d43d6822bcdf7ac11c4650fd4a320802799ad18c55357f1841" shape="plaintext"];
  "sha256:c732995420046bf00727fb29418d225690faf64d9ca1072faadac4b4f2360083" -> "sha256:568ecdbe554f7343c4e2f1d782dcd1b5d95178adf3564d5b7b394f8557680e2b" [label=""];
  "sha256:a5e4ba71e0a51d5ba1fc2b5e97f2d4de410a6c5f6a49cf618293957fa37e8d29" -> "sha256:568ecdbe554f7343c4e2f1d782dcd1b5d95178adf3564d5b7b394f8557680e2b" [label=""];
  "sha256:568ecdbe554f7343c4e2f1d782dcd1b5d95178adf3564d5b7b394f8557680e2b" -> "sha256:6337ae82d69c5d034aa81be6e6607a19139b524891af514cfbfa7c68d6e36a20" [label=""];
  "sha256:6337ae82d69c5d034aa81be6e6607a19139b524891af514cfbfa7c68d6e36a20" -> "sha256:5896e20acf2414d43d6822bcdf7ac11c4650fd4a320802799ad18c55357f1841" [label=""];
}

