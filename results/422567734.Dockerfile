[app/sources/422567734.Dockerfile]
digraph {
  "sha256:45eecc8d7cc4b9ec25be39ba5bd77706205d3b762ca8a64215f1db0e2276582e" [label="docker-image://docker.io/saferwall/windefender:0.0.1" shape="ellipse"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" [label="/bin/sh -c apk update && apk add --no-cache git ca-certificates tzdata && update-ca-certificates" shape="box"];
  "sha256:6ea9d87df97e11b57b2f4944725422254d05675193d72ffe4d2c6ad16eabb7ca" [label="mkdir{path=/src/saferwall/windefender}" shape="note"];
  "sha256:20b870ecb8b3623575a3716f0459bae20fea8c9e9da9ccf47b1c9c5cf60f9399" [label="local://context" shape="ellipse"];
  "sha256:15bf6f1b3738eb943a7d0997f87bc0cedcf2dbd895f2393cbb3c32046683f679" [label="copy{src=/, dest=/src/saferwall/windefender/}" shape="note"];
  "sha256:bba6bf25d69afd7f09e0b0373737af2aa475b667e54cf5ba0029c55555ccb8e8" [label="/bin/sh -c go get -d -v" shape="box"];
  "sha256:cede1b7695e53376b8087b6d96f669849c2dba3d48fa2bd790241b4214b53abf" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -ldflags '-extldflags \"-static\"' -o /go/bin/windefenderscanner ." shape="box"];
  "sha256:821e42d6929e95477bb46de94942a4476d770d355bf4a7587427bf6db5aaa519" [label="copy{src=/go/bin/windefenderscanner, dest=/bin/windefenderscanner}" shape="note"];
  "sha256:1a3cd4efcf7363c854e8ca2681fe960d58d6c49064f1823120f49ce8a7114f84" [label="/bin/sh -c groupadd -r saferwall && useradd --no-log-init -r -g saferwall saferwall" shape="box"];
  "sha256:0abca208c577b92d3ba6f4b02f9381d5d5e8adb4dcddadaae4ea271fb81d4f99" [label="/bin/sh -c usermod -u 101 saferwall" shape="box"];
  "sha256:8c3d4fada67c49a8cb80d251f9026810700a579270062ca9b82dc2ac6eb76bdf" [label="/bin/sh -c groupmod -g 102 saferwall" shape="box"];
  "sha256:dde279651d223596ef20a7e955d9b9087d34ceb1c77a6a8fdba4202caf642227" [label="/bin/sh -c chown -R saferwall:saferwall $WINDOWS_DEFENDER_INSTALL_DIR" shape="box"];
  "sha256:8a0b56a6c8414c16c2bb8c8255a6e5bb58104f284bd1f2518e255a0cd2c2b93f" [label="sha256:8a0b56a6c8414c16c2bb8c8255a6e5bb58104f284bd1f2518e255a0cd2c2b93f" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" [label=""];
  "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" -> "sha256:6ea9d87df97e11b57b2f4944725422254d05675193d72ffe4d2c6ad16eabb7ca" [label=""];
  "sha256:6ea9d87df97e11b57b2f4944725422254d05675193d72ffe4d2c6ad16eabb7ca" -> "sha256:15bf6f1b3738eb943a7d0997f87bc0cedcf2dbd895f2393cbb3c32046683f679" [label=""];
  "sha256:20b870ecb8b3623575a3716f0459bae20fea8c9e9da9ccf47b1c9c5cf60f9399" -> "sha256:15bf6f1b3738eb943a7d0997f87bc0cedcf2dbd895f2393cbb3c32046683f679" [label=""];
  "sha256:15bf6f1b3738eb943a7d0997f87bc0cedcf2dbd895f2393cbb3c32046683f679" -> "sha256:bba6bf25d69afd7f09e0b0373737af2aa475b667e54cf5ba0029c55555ccb8e8" [label=""];
  "sha256:bba6bf25d69afd7f09e0b0373737af2aa475b667e54cf5ba0029c55555ccb8e8" -> "sha256:cede1b7695e53376b8087b6d96f669849c2dba3d48fa2bd790241b4214b53abf" [label=""];
  "sha256:45eecc8d7cc4b9ec25be39ba5bd77706205d3b762ca8a64215f1db0e2276582e" -> "sha256:821e42d6929e95477bb46de94942a4476d770d355bf4a7587427bf6db5aaa519" [label=""];
  "sha256:cede1b7695e53376b8087b6d96f669849c2dba3d48fa2bd790241b4214b53abf" -> "sha256:821e42d6929e95477bb46de94942a4476d770d355bf4a7587427bf6db5aaa519" [label=""];
  "sha256:821e42d6929e95477bb46de94942a4476d770d355bf4a7587427bf6db5aaa519" -> "sha256:1a3cd4efcf7363c854e8ca2681fe960d58d6c49064f1823120f49ce8a7114f84" [label=""];
  "sha256:1a3cd4efcf7363c854e8ca2681fe960d58d6c49064f1823120f49ce8a7114f84" -> "sha256:0abca208c577b92d3ba6f4b02f9381d5d5e8adb4dcddadaae4ea271fb81d4f99" [label=""];
  "sha256:0abca208c577b92d3ba6f4b02f9381d5d5e8adb4dcddadaae4ea271fb81d4f99" -> "sha256:8c3d4fada67c49a8cb80d251f9026810700a579270062ca9b82dc2ac6eb76bdf" [label=""];
  "sha256:8c3d4fada67c49a8cb80d251f9026810700a579270062ca9b82dc2ac6eb76bdf" -> "sha256:dde279651d223596ef20a7e955d9b9087d34ceb1c77a6a8fdba4202caf642227" [label=""];
  "sha256:dde279651d223596ef20a7e955d9b9087d34ceb1c77a6a8fdba4202caf642227" -> "sha256:8a0b56a6c8414c16c2bb8c8255a6e5bb58104f284bd1f2518e255a0cd2c2b93f" [label=""];
}

