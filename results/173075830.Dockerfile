[app/sources/173075830.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:9ece2b0ca86455561850e41a95d23bcf3a1fc978d9b2772a0a5fdf754a206308" [label="/bin/sh -c go get -u     golang.org/x/lint/golint     github.com/awalterschulze/goderive     github.com/br-lewis/go-bindata/..." shape="box"];
  "sha256:b26abed392652d9841937c094ae54c3448b13accf3150ad8e629bf23f4487ecf" [label="sha256:b26abed392652d9841937c094ae54c3448b13accf3150ad8e629bf23f4487ecf" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:9ece2b0ca86455561850e41a95d23bcf3a1fc978d9b2772a0a5fdf754a206308" [label=""];
  "sha256:9ece2b0ca86455561850e41a95d23bcf3a1fc978d9b2772a0a5fdf754a206308" -> "sha256:b26abed392652d9841937c094ae54c3448b13accf3150ad8e629bf23f4487ecf" [label=""];
}

