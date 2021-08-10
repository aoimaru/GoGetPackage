[app/sources/165687384.Dockerfile]
digraph {
  "sha256:f65547bb69cd3a66303f347b1aeb253dfe39d89a3ab03bfcf545d872055ffada" [label="docker-image://docker.io/library/golang:1.10.2-alpine" shape="ellipse"];
  "sha256:9e72b353439dbeda99da7ca79c3f41c6f50ebea4d905899bc0fd3c44947ef5c1" [label="/bin/sh -c apk update" shape="box"];
  "sha256:a26ed20f1e0794200fa04e0dc81970f306e2771bbb64e630ba75fd2d90a8f405" [label="/bin/sh -c apk add git gcc libc-dev" shape="box"];
  "sha256:a0572d1fcc58b50d4fbf403e315073c709360f787c870088ec6a8d0bafc2645e" [label="/bin/sh -c mkdir -p /go/src/saml-idp" shape="box"];
  "sha256:c89f632086d0a6078d7bd5e928d191798f6cac89e2bd550650d725fceea63e66" [label="local://context" shape="ellipse"];
  "sha256:7a4d47753a570cd0e7a4da14ab0e672e3cf018b8cc67225dc0c908ff73e43410" [label="copy{src=/*.go, dest=/go/src/saml-idp}" shape="note"];
  "sha256:8b9b225336adda216f7c6d84e2576c3718a858d260a8dfc19e872f4208c4e3d3" [label="sha256:8b9b225336adda216f7c6d84e2576c3718a858d260a8dfc19e872f4208c4e3d3" shape="plaintext"];
  "sha256:f65547bb69cd3a66303f347b1aeb253dfe39d89a3ab03bfcf545d872055ffada" -> "sha256:9e72b353439dbeda99da7ca79c3f41c6f50ebea4d905899bc0fd3c44947ef5c1" [label=""];
  "sha256:9e72b353439dbeda99da7ca79c3f41c6f50ebea4d905899bc0fd3c44947ef5c1" -> "sha256:a26ed20f1e0794200fa04e0dc81970f306e2771bbb64e630ba75fd2d90a8f405" [label=""];
  "sha256:a26ed20f1e0794200fa04e0dc81970f306e2771bbb64e630ba75fd2d90a8f405" -> "sha256:a0572d1fcc58b50d4fbf403e315073c709360f787c870088ec6a8d0bafc2645e" [label=""];
  "sha256:a0572d1fcc58b50d4fbf403e315073c709360f787c870088ec6a8d0bafc2645e" -> "sha256:7a4d47753a570cd0e7a4da14ab0e672e3cf018b8cc67225dc0c908ff73e43410" [label=""];
  "sha256:c89f632086d0a6078d7bd5e928d191798f6cac89e2bd550650d725fceea63e66" -> "sha256:7a4d47753a570cd0e7a4da14ab0e672e3cf018b8cc67225dc0c908ff73e43410" [label=""];
  "sha256:7a4d47753a570cd0e7a4da14ab0e672e3cf018b8cc67225dc0c908ff73e43410" -> "sha256:8b9b225336adda216f7c6d84e2576c3718a858d260a8dfc19e872f4208c4e3d3" [label=""];
}

