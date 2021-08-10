[app/sources/213296504.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" [label="docker-image://docker.io/library/golang:1.8-alpine" shape="ellipse"];
  "sha256:b8fbd4426d5404ffba5adf6f4cf3312c0a9a8ba749904cffb98e20c139fe3662" [label="/bin/sh -c apk --update add git;" shape="box"];
  "sha256:ee5337c190928f373937a4ff9a43814aec97f704e428a51bdc70ae20f36b79eb" [label="/bin/sh -c go get -d github.com/optiopay/klar" shape="box"];
  "sha256:b9f72d095d6569654eac63ddc207e6615d501c1424e17ff8253d626a3ac5b121" [label="/bin/sh -c go build ./src/github.com/optiopay/klar" shape="box"];
  "sha256:a0db71e4453d18db693e737bc03a2c699759d8a15b42c3e3b238e139e0bb6cfe" [label="copy{src=/go/klar, dest=/klar}" shape="note"];
  "sha256:169e5b631b8b31da8f36ec6e363d335e8c222b8ebf2f5fc68ef90cd30374cf56" [label="sha256:169e5b631b8b31da8f36ec6e363d335e8c222b8ebf2f5fc68ef90cd30374cf56" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label=""];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" -> "sha256:b8fbd4426d5404ffba5adf6f4cf3312c0a9a8ba749904cffb98e20c139fe3662" [label=""];
  "sha256:b8fbd4426d5404ffba5adf6f4cf3312c0a9a8ba749904cffb98e20c139fe3662" -> "sha256:ee5337c190928f373937a4ff9a43814aec97f704e428a51bdc70ae20f36b79eb" [label=""];
  "sha256:ee5337c190928f373937a4ff9a43814aec97f704e428a51bdc70ae20f36b79eb" -> "sha256:b9f72d095d6569654eac63ddc207e6615d501c1424e17ff8253d626a3ac5b121" [label=""];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" -> "sha256:a0db71e4453d18db693e737bc03a2c699759d8a15b42c3e3b238e139e0bb6cfe" [label=""];
  "sha256:b9f72d095d6569654eac63ddc207e6615d501c1424e17ff8253d626a3ac5b121" -> "sha256:a0db71e4453d18db693e737bc03a2c699759d8a15b42c3e3b238e139e0bb6cfe" [label=""];
  "sha256:a0db71e4453d18db693e737bc03a2c699759d8a15b42c3e3b238e139e0bb6cfe" -> "sha256:169e5b631b8b31da8f36ec6e363d335e8c222b8ebf2f5fc68ef90cd30374cf56" [label=""];
}

