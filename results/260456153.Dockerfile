[app/sources/260456153.Dockerfile]
digraph {
  "sha256:86ad8962acdf9eb59da8532ef9c6a241cfe5725fabd809095bf103f1c0afab87" [label="docker-image://docker.io/onlyoffice/documentserver@sha256:e3c51ded05a96209be4ab427a7d6ff39e16146d2df111dca073cb4b2364f468d" shape="ellipse"];
  "sha256:f92aacc646787d842c0a37396d403fac6eb113e7506770d129d8c8febfa44da3" [label="local://context" shape="ellipse"];
  "sha256:916ab42f10889fd7dad099e37c6d8b4575baeb6d524fc4f9c35535370fc297ba" [label="copy{src=/winfont, dest=/usr/share/fonts/winfont}" shape="note"];
  "sha256:dd942705cabd981bdaef6e2759a8ad0c1d18d1d0f603fb1b0c8c1ad293ba8ba6" [label="/bin/sh -c fc-cache -f -v && /usr/bin/documentserver-generate-allfonts.sh" shape="box"];
  "sha256:9ee2ac2d69d10a0c44bee44970f62d9f83e24c55257d4255462eaf55e53c4e19" [label="sha256:9ee2ac2d69d10a0c44bee44970f62d9f83e24c55257d4255462eaf55e53c4e19" shape="plaintext"];
  "sha256:86ad8962acdf9eb59da8532ef9c6a241cfe5725fabd809095bf103f1c0afab87" -> "sha256:916ab42f10889fd7dad099e37c6d8b4575baeb6d524fc4f9c35535370fc297ba" [label=""];
  "sha256:f92aacc646787d842c0a37396d403fac6eb113e7506770d129d8c8febfa44da3" -> "sha256:916ab42f10889fd7dad099e37c6d8b4575baeb6d524fc4f9c35535370fc297ba" [label=""];
  "sha256:916ab42f10889fd7dad099e37c6d8b4575baeb6d524fc4f9c35535370fc297ba" -> "sha256:dd942705cabd981bdaef6e2759a8ad0c1d18d1d0f603fb1b0c8c1ad293ba8ba6" [label=""];
  "sha256:dd942705cabd981bdaef6e2759a8ad0c1d18d1d0f603fb1b0c8c1ad293ba8ba6" -> "sha256:9ee2ac2d69d10a0c44bee44970f62d9f83e24c55257d4255462eaf55e53c4e19" [label=""];
}

