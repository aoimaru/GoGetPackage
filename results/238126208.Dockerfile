[app/sources/238126208.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3906d6c599bb5e8741315a96a553ab0e02a373c4bc0e055f99034c3cc739e33c" [label="local://context" shape="ellipse"];
  "sha256:edb912ef023264df5bdfe9d3944fa564849bf5cd5ced173e410f2105c8ac8e7b" [label="copy{src=/jwtd, dest=/bin/jwtd}" shape="note"];
  "sha256:085206aca46c4ef3ee8e256162e470bb9bc585aeb883cf79b1605548465f00e7" [label="copy{src=/jwtd-ctl/jwtd-ctl, dest=/bin/jwtd-ctl}" shape="note"];
  "sha256:401a2fb8c9602c603888c95e68e091062189c276acedfc40046cbf6a06d451df" [label="sha256:401a2fb8c9602c603888c95e68e091062189c276acedfc40046cbf6a06d451df" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:edb912ef023264df5bdfe9d3944fa564849bf5cd5ced173e410f2105c8ac8e7b" [label=""];
  "sha256:3906d6c599bb5e8741315a96a553ab0e02a373c4bc0e055f99034c3cc739e33c" -> "sha256:edb912ef023264df5bdfe9d3944fa564849bf5cd5ced173e410f2105c8ac8e7b" [label=""];
  "sha256:edb912ef023264df5bdfe9d3944fa564849bf5cd5ced173e410f2105c8ac8e7b" -> "sha256:085206aca46c4ef3ee8e256162e470bb9bc585aeb883cf79b1605548465f00e7" [label=""];
  "sha256:3906d6c599bb5e8741315a96a553ab0e02a373c4bc0e055f99034c3cc739e33c" -> "sha256:085206aca46c4ef3ee8e256162e470bb9bc585aeb883cf79b1605548465f00e7" [label=""];
  "sha256:085206aca46c4ef3ee8e256162e470bb9bc585aeb883cf79b1605548465f00e7" -> "sha256:401a2fb8c9602c603888c95e68e091062189c276acedfc40046cbf6a06d451df" [label=""];
}

