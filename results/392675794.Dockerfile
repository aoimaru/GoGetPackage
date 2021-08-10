[app/sources/392675794.Dockerfile]
digraph {
  "sha256:6bfbf6ce77fb9bb1c545eca8d049b913d260e62e17c879490b5f7d98148af9d7" [label="docker-image://docker.io/library/node:10.12.0-alpine" shape="ellipse"];
  "sha256:925e5b8313a9745b73097c913ef3d18ce0f8328e0c7ceef71fa017d8689447e6" [label="/bin/sh -c apk update" shape="box"];
  "sha256:fedd797698123e9cb97a49c7e917980aa0facac02ba9555187aebd6b1e3f5ff7" [label="/bin/sh -c apk upgrade" shape="box"];
  "sha256:903c6941d37ecfaf34a5e1b135db7653c70788c6e14cfc1b5ebdb505e26c906d" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:e115b4a7c7dcb83504f8450b77b3f5cf56192b5ab64be9cd37f15057d1c00b8d" [label="mkdir{path=/app}" shape="note"];
  "sha256:c3705fe49f3c692e6b5300a7a7387cfef5986ec812b513d9e6625f982f3a56e9" [label="local://context" shape="ellipse"];
  "sha256:7f4ece1dbc0e642e78ac78c2ce0eebccbc2156c2a7525d6c125ae2e421d7c77b" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:850cd68e0d1eb959c63b2955fa55e7560b12dfb407a566915f8bd5c71a4c10a4" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7302889f3912cfe2e120cb2b28963c57db246a6a17453eba3ef0578af9b1277f" [label="copy{src=/docker/wait-for-it.sh, dest=/usr/local}" shape="note"];
  "sha256:6729d975a184f7c67a8084404a40561ddc5f9e338a4730d213c092baa37fe43d" [label="/bin/sh -c chmod +x /usr/local/wait-for-it.sh" shape="box"];
  "sha256:8763289417ad79f2b790214e27d624e1f62ede6ac46c255e0dba8a08637c49f0" [label="sha256:8763289417ad79f2b790214e27d624e1f62ede6ac46c255e0dba8a08637c49f0" shape="plaintext"];
  "sha256:6bfbf6ce77fb9bb1c545eca8d049b913d260e62e17c879490b5f7d98148af9d7" -> "sha256:925e5b8313a9745b73097c913ef3d18ce0f8328e0c7ceef71fa017d8689447e6" [label=""];
  "sha256:925e5b8313a9745b73097c913ef3d18ce0f8328e0c7ceef71fa017d8689447e6" -> "sha256:fedd797698123e9cb97a49c7e917980aa0facac02ba9555187aebd6b1e3f5ff7" [label=""];
  "sha256:fedd797698123e9cb97a49c7e917980aa0facac02ba9555187aebd6b1e3f5ff7" -> "sha256:903c6941d37ecfaf34a5e1b135db7653c70788c6e14cfc1b5ebdb505e26c906d" [label=""];
  "sha256:903c6941d37ecfaf34a5e1b135db7653c70788c6e14cfc1b5ebdb505e26c906d" -> "sha256:e115b4a7c7dcb83504f8450b77b3f5cf56192b5ab64be9cd37f15057d1c00b8d" [label=""];
  "sha256:e115b4a7c7dcb83504f8450b77b3f5cf56192b5ab64be9cd37f15057d1c00b8d" -> "sha256:7f4ece1dbc0e642e78ac78c2ce0eebccbc2156c2a7525d6c125ae2e421d7c77b" [label=""];
  "sha256:c3705fe49f3c692e6b5300a7a7387cfef5986ec812b513d9e6625f982f3a56e9" -> "sha256:7f4ece1dbc0e642e78ac78c2ce0eebccbc2156c2a7525d6c125ae2e421d7c77b" [label=""];
  "sha256:7f4ece1dbc0e642e78ac78c2ce0eebccbc2156c2a7525d6c125ae2e421d7c77b" -> "sha256:850cd68e0d1eb959c63b2955fa55e7560b12dfb407a566915f8bd5c71a4c10a4" [label=""];
  "sha256:850cd68e0d1eb959c63b2955fa55e7560b12dfb407a566915f8bd5c71a4c10a4" -> "sha256:7302889f3912cfe2e120cb2b28963c57db246a6a17453eba3ef0578af9b1277f" [label=""];
  "sha256:c3705fe49f3c692e6b5300a7a7387cfef5986ec812b513d9e6625f982f3a56e9" -> "sha256:7302889f3912cfe2e120cb2b28963c57db246a6a17453eba3ef0578af9b1277f" [label=""];
  "sha256:7302889f3912cfe2e120cb2b28963c57db246a6a17453eba3ef0578af9b1277f" -> "sha256:6729d975a184f7c67a8084404a40561ddc5f9e338a4730d213c092baa37fe43d" [label=""];
  "sha256:6729d975a184f7c67a8084404a40561ddc5f9e338a4730d213c092baa37fe43d" -> "sha256:8763289417ad79f2b790214e27d624e1f62ede6ac46c255e0dba8a08637c49f0" [label=""];
}

