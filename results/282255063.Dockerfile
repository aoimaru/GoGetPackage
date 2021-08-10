[app/sources/282255063.Dockerfile]
digraph {
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:35986b99d380bf1fd945a747a959a76702e3eb3e4d8d6bf677172106b715e2da" [label="/bin/sh -c apk update && apk upgrade && apk add --no-cache bash git" shape="box"];
  "sha256:cf299b67b0c9bf947d3b76bd59de1965385a491a7b6944f3602371ceebb75621" [label="/bin/sh -c go get github.com/iris-contrib/cloud-native-go" shape="box"];
  "sha256:ec5df28428666238c95c9cd51c2232659142307da5eb1cb798971e5832dedac6" [label="/bin/sh -c cd ${SOURCES} $$ CGO_ENABLED=0 go build" shape="box"];
  "sha256:de907f41ec88ea844a3d41fe4a6591085db70efdbd8824974c3ac7f89423f0b9" [label="sha256:de907f41ec88ea844a3d41fe4a6591085db70efdbd8824974c3ac7f89423f0b9" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:35986b99d380bf1fd945a747a959a76702e3eb3e4d8d6bf677172106b715e2da" [label=""];
  "sha256:35986b99d380bf1fd945a747a959a76702e3eb3e4d8d6bf677172106b715e2da" -> "sha256:cf299b67b0c9bf947d3b76bd59de1965385a491a7b6944f3602371ceebb75621" [label=""];
  "sha256:cf299b67b0c9bf947d3b76bd59de1965385a491a7b6944f3602371ceebb75621" -> "sha256:ec5df28428666238c95c9cd51c2232659142307da5eb1cb798971e5832dedac6" [label=""];
  "sha256:ec5df28428666238c95c9cd51c2232659142307da5eb1cb798971e5832dedac6" -> "sha256:de907f41ec88ea844a3d41fe4a6591085db70efdbd8824974c3ac7f89423f0b9" [label=""];
}

