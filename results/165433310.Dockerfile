[app/sources/165433310.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:ef257b78a284ae32bd14e8cff6c6355d6a21bae89647642d4ad03f1fd2651f19" [label="/bin/sh -c dnf install -y java-1.8.0-openjdk-devel" shape="box"];
  "sha256:53248ade7deaa1ccaa5224677e61a74b33d9c24eda03d01f7d7e65f1e117f37f" [label="/bin/sh -c dnf install -y cmake wget tar make gcc-c++" shape="box"];
  "sha256:c0ed38847b949da6b96fed1eaba24e6ce205e96cda1c9f729996aa23283d9a3b" [label="/bin/sh -c echo 1 | update-alternatives --config java" shape="box"];
  "sha256:cfa875f65cebf84c200814eea861b2c1ed6ba3079afb5b8828441f29a8a7cde0" [label="/bin/sh -c echo 1 | update-alternatives --config javac" shape="box"];
  "sha256:ec7c8050a28cb325a45e61ea11e82138b39c1d13afd80cb64f9df45f4677849e" [label="/bin/sh -c yum install -y ant" shape="box"];
  "sha256:0f32a60d2f941cfa0c0532cf542419a9c2369a1dde672936802a824edbdb7a8c" [label="sha256:0f32a60d2f941cfa0c0532cf542419a9c2369a1dde672936802a824edbdb7a8c" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:ef257b78a284ae32bd14e8cff6c6355d6a21bae89647642d4ad03f1fd2651f19" [label=""];
  "sha256:ef257b78a284ae32bd14e8cff6c6355d6a21bae89647642d4ad03f1fd2651f19" -> "sha256:53248ade7deaa1ccaa5224677e61a74b33d9c24eda03d01f7d7e65f1e117f37f" [label=""];
  "sha256:53248ade7deaa1ccaa5224677e61a74b33d9c24eda03d01f7d7e65f1e117f37f" -> "sha256:c0ed38847b949da6b96fed1eaba24e6ce205e96cda1c9f729996aa23283d9a3b" [label=""];
  "sha256:c0ed38847b949da6b96fed1eaba24e6ce205e96cda1c9f729996aa23283d9a3b" -> "sha256:cfa875f65cebf84c200814eea861b2c1ed6ba3079afb5b8828441f29a8a7cde0" [label=""];
  "sha256:cfa875f65cebf84c200814eea861b2c1ed6ba3079afb5b8828441f29a8a7cde0" -> "sha256:ec7c8050a28cb325a45e61ea11e82138b39c1d13afd80cb64f9df45f4677849e" [label=""];
  "sha256:ec7c8050a28cb325a45e61ea11e82138b39c1d13afd80cb64f9df45f4677849e" -> "sha256:0f32a60d2f941cfa0c0532cf542419a9c2369a1dde672936802a824edbdb7a8c" [label=""];
}

