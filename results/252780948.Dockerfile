[app/sources/252780948.Dockerfile]
digraph {
  "sha256:2791e67251904e00117941a35ea7d5a3c8c3759631351ad97d9ad6c8a8a5ad89" [label="docker-image://docker.io/wodby/php:7.0" shape="ellipse"];
  "sha256:3e4b7027e2ff2ed4add7d18fbb519437226621a9e50c85ba2c0727b51421effa" [label="/bin/sh -c echo test" shape="box"];
  "sha256:645432c0d7340883ec9d1f77f9141709cecd7f1c471afab72a30a85dfc1b939f" [label="sha256:645432c0d7340883ec9d1f77f9141709cecd7f1c471afab72a30a85dfc1b939f" shape="plaintext"];
  "sha256:2791e67251904e00117941a35ea7d5a3c8c3759631351ad97d9ad6c8a8a5ad89" -> "sha256:3e4b7027e2ff2ed4add7d18fbb519437226621a9e50c85ba2c0727b51421effa" [label=""];
  "sha256:3e4b7027e2ff2ed4add7d18fbb519437226621a9e50c85ba2c0727b51421effa" -> "sha256:645432c0d7340883ec9d1f77f9141709cecd7f1c471afab72a30a85dfc1b939f" [label=""];
}

