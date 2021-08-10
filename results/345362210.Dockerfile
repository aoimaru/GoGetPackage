[app/sources/345362210.Dockerfile]
digraph {
  "sha256:5c08224ca79fa476dd34935685fe9b34c3c00cc545b344efc107a90a41235af0" [label="docker-image://docker.io/balenalib/aarch64-alpine:edge-build" shape="ellipse"];
  "sha256:f7291723b28b0b3890d0cfb9418c5dcf11be762456bdaa7619bac188964d1faa" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:76ba3ab7ae35a75c571d31725a1f2a196ceaf069b5797bc031d0cb8a6e67dc4f" [label="sha256:76ba3ab7ae35a75c571d31725a1f2a196ceaf069b5797bc031d0cb8a6e67dc4f" shape="plaintext"];
  "sha256:5c08224ca79fa476dd34935685fe9b34c3c00cc545b344efc107a90a41235af0" -> "sha256:f7291723b28b0b3890d0cfb9418c5dcf11be762456bdaa7619bac188964d1faa" [label=""];
  "sha256:f7291723b28b0b3890d0cfb9418c5dcf11be762456bdaa7619bac188964d1faa" -> "sha256:76ba3ab7ae35a75c571d31725a1f2a196ceaf069b5797bc031d0cb8a6e67dc4f" [label=""];
}

