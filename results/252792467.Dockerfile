[app/sources/252792467.Dockerfile]
digraph {
  "sha256:0af34c9acfd24a8b08d22afec6fbd18cb97d883c091a90b3df6a8fccd3ef130a" [label="docker-image://docker.io/cheggwpt/php7.2-nginx:0.0.2" shape="ellipse"];
  "sha256:fe635c23081a70197deb61c3d5dc2fdc9dbc4e4ecf5825d553b6046a30874353" [label="/bin/sh -c apk --update --no-cache add \\--virtual .libreoffice libreoffice && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:67790c77f0431e96ca015527123ea2aff97ab5d3110b563af0cc5d7d4f5af356" [label="sha256:67790c77f0431e96ca015527123ea2aff97ab5d3110b563af0cc5d7d4f5af356" shape="plaintext"];
  "sha256:0af34c9acfd24a8b08d22afec6fbd18cb97d883c091a90b3df6a8fccd3ef130a" -> "sha256:fe635c23081a70197deb61c3d5dc2fdc9dbc4e4ecf5825d553b6046a30874353" [label=""];
  "sha256:fe635c23081a70197deb61c3d5dc2fdc9dbc4e4ecf5825d553b6046a30874353" -> "sha256:67790c77f0431e96ca015527123ea2aff97ab5d3110b563af0cc5d7d4f5af356" [label=""];
}

