[app/sources/339453594.Dockerfile]
digraph {
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" [label="docker-image://gcr.io/distroless/static:latest@sha256:c9320b754c2fa2cd2dea50993195f104a24f4c7ebe6e0297c6ddb40ce3679e7d" shape="ellipse"];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" [label="local://context" shape="ellipse"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" [label="docker-image://docker.io/library/golang:1.12.5" shape="ellipse"];
  "sha256:f7b17915b419d1bb96009f4c18f0469c71a8fcdb297d22ca0c1fd40a9102b557" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:1a3d8de02e894152d7cd0839fb8bb24728aed4b911e7a686934d031c4d745ae6" [label="copy{src=/go.mod, dest=/workspace/go.mod}" shape="note"];
  "sha256:f9feb2f3cc8d2f25b045cbd1870492881195bf3bdf5b6d80f94d55d953a33e5e" [label="copy{src=/go.sum, dest=/workspace/go.sum}" shape="note"];
  "sha256:ceb62cf9f7f7c7342bb639f5e00141fa212c9b219d16b640d8d2f9cab9d6a2c3" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:291f937cdfb72edaba4bc61116afbeec9eb96109cceb479aecb9e7a031d951b8" [label="copy{src=/main.go, dest=/workspace/main.go}" shape="note"];
  "sha256:e17391d46e8525f8d3eec1b67eabb3ea70f894339856e0845dfd83e9d1b4d258" [label="copy{src=/api, dest=/workspace/api/}" shape="note"];
  "sha256:f9c3e3af12194f2011e60117aef3b1875909a0813d6ff11adf74588771739486" [label="copy{src=/controllers, dest=/workspace/controllers/}" shape="note"];
  "sha256:89c1ab8a144287368eb8d04e768754458bcb1f3401249434bea4af4ac73cb999" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -a -o manager main.go" shape="box"];
  "sha256:55214ef49fe4957e781ef7cfed1ee8a9b33d27bf625678b49bf70e5e8420be81" [label="copy{src=/workspace/manager, dest=/}" shape="note"];
  "sha256:f2cfca0793f4016843898da8ef83b6bf286e5e7ad848d6e0d19b0107855a689f" [label="sha256:f2cfca0793f4016843898da8ef83b6bf286e5e7ad848d6e0d19b0107855a689f" shape="plaintext"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" -> "sha256:f7b17915b419d1bb96009f4c18f0469c71a8fcdb297d22ca0c1fd40a9102b557" [label=""];
  "sha256:f7b17915b419d1bb96009f4c18f0469c71a8fcdb297d22ca0c1fd40a9102b557" -> "sha256:1a3d8de02e894152d7cd0839fb8bb24728aed4b911e7a686934d031c4d745ae6" [label=""];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" -> "sha256:1a3d8de02e894152d7cd0839fb8bb24728aed4b911e7a686934d031c4d745ae6" [label=""];
  "sha256:1a3d8de02e894152d7cd0839fb8bb24728aed4b911e7a686934d031c4d745ae6" -> "sha256:f9feb2f3cc8d2f25b045cbd1870492881195bf3bdf5b6d80f94d55d953a33e5e" [label=""];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" -> "sha256:f9feb2f3cc8d2f25b045cbd1870492881195bf3bdf5b6d80f94d55d953a33e5e" [label=""];
  "sha256:f9feb2f3cc8d2f25b045cbd1870492881195bf3bdf5b6d80f94d55d953a33e5e" -> "sha256:ceb62cf9f7f7c7342bb639f5e00141fa212c9b219d16b640d8d2f9cab9d6a2c3" [label=""];
  "sha256:ceb62cf9f7f7c7342bb639f5e00141fa212c9b219d16b640d8d2f9cab9d6a2c3" -> "sha256:291f937cdfb72edaba4bc61116afbeec9eb96109cceb479aecb9e7a031d951b8" [label=""];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" -> "sha256:291f937cdfb72edaba4bc61116afbeec9eb96109cceb479aecb9e7a031d951b8" [label=""];
  "sha256:291f937cdfb72edaba4bc61116afbeec9eb96109cceb479aecb9e7a031d951b8" -> "sha256:e17391d46e8525f8d3eec1b67eabb3ea70f894339856e0845dfd83e9d1b4d258" [label=""];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" -> "sha256:e17391d46e8525f8d3eec1b67eabb3ea70f894339856e0845dfd83e9d1b4d258" [label=""];
  "sha256:e17391d46e8525f8d3eec1b67eabb3ea70f894339856e0845dfd83e9d1b4d258" -> "sha256:f9c3e3af12194f2011e60117aef3b1875909a0813d6ff11adf74588771739486" [label=""];
  "sha256:9aa5c26fd9216b52de635d755f68458ee40656d7e3aad6339de6b4a655e4904c" -> "sha256:f9c3e3af12194f2011e60117aef3b1875909a0813d6ff11adf74588771739486" [label=""];
  "sha256:f9c3e3af12194f2011e60117aef3b1875909a0813d6ff11adf74588771739486" -> "sha256:89c1ab8a144287368eb8d04e768754458bcb1f3401249434bea4af4ac73cb999" [label=""];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" -> "sha256:55214ef49fe4957e781ef7cfed1ee8a9b33d27bf625678b49bf70e5e8420be81" [label=""];
  "sha256:89c1ab8a144287368eb8d04e768754458bcb1f3401249434bea4af4ac73cb999" -> "sha256:55214ef49fe4957e781ef7cfed1ee8a9b33d27bf625678b49bf70e5e8420be81" [label=""];
  "sha256:55214ef49fe4957e781ef7cfed1ee8a9b33d27bf625678b49bf70e5e8420be81" -> "sha256:f2cfca0793f4016843898da8ef83b6bf286e5e7ad848d6e0d19b0107855a689f" [label=""];
}

