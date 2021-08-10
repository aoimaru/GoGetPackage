[app/sources/263879285.Dockerfile]
digraph {
  "sha256:ef58c3daad6526a394daef6bdd164045cda9ed3d099c8af911fa2567c5152379" [label="docker-image://docker.io/dmcgowan/token-server@sha256:5a6f76d3086cdf63249c77b521108387b49d85a30c5e1c4fe82fdf5ae3b76ba7" shape="ellipse"];
  "sha256:ed2c64b7b2cc5f156af36ef71d2b586c7b7a388dd62f4073d34b074d46802613" [label="local://context" shape="ellipse"];
  "sha256:52aa23dd3d8fbf5fe5294e8a201878ce4032d52d75b0ce12aea9b573f1a1fd0e" [label="copy{src=/.htpasswd, dest=/.htpasswd}" shape="note"];
  "sha256:e15a45eb6856f815e44a7dacaedfe03dc19360fce3bb031ce37c84701d55def7" [label="copy{src=/certs/auth.localregistry.cert, dest=/tls.cert}" shape="note"];
  "sha256:8401b92ffb6b188c229ab04a6b99f35dadea3cd9526b23d2686762120dbb5b74" [label="copy{src=/certs/auth.localregistry.key, dest=/tls.key}" shape="note"];
  "sha256:651d2ca0caec343690fc404abcc86fa32ef9b0546d071ecc2a5d285c91b05ca4" [label="copy{src=/certs/signing.key, dest=/sign.key}" shape="note"];
  "sha256:1cba592136293e67ff03e26ea170c380fbef4106a7bb509f0eb8d8fc7bc8eb8e" [label="sha256:1cba592136293e67ff03e26ea170c380fbef4106a7bb509f0eb8d8fc7bc8eb8e" shape="plaintext"];
  "sha256:ef58c3daad6526a394daef6bdd164045cda9ed3d099c8af911fa2567c5152379" -> "sha256:52aa23dd3d8fbf5fe5294e8a201878ce4032d52d75b0ce12aea9b573f1a1fd0e" [label=""];
  "sha256:ed2c64b7b2cc5f156af36ef71d2b586c7b7a388dd62f4073d34b074d46802613" -> "sha256:52aa23dd3d8fbf5fe5294e8a201878ce4032d52d75b0ce12aea9b573f1a1fd0e" [label=""];
  "sha256:52aa23dd3d8fbf5fe5294e8a201878ce4032d52d75b0ce12aea9b573f1a1fd0e" -> "sha256:e15a45eb6856f815e44a7dacaedfe03dc19360fce3bb031ce37c84701d55def7" [label=""];
  "sha256:ed2c64b7b2cc5f156af36ef71d2b586c7b7a388dd62f4073d34b074d46802613" -> "sha256:e15a45eb6856f815e44a7dacaedfe03dc19360fce3bb031ce37c84701d55def7" [label=""];
  "sha256:e15a45eb6856f815e44a7dacaedfe03dc19360fce3bb031ce37c84701d55def7" -> "sha256:8401b92ffb6b188c229ab04a6b99f35dadea3cd9526b23d2686762120dbb5b74" [label=""];
  "sha256:ed2c64b7b2cc5f156af36ef71d2b586c7b7a388dd62f4073d34b074d46802613" -> "sha256:8401b92ffb6b188c229ab04a6b99f35dadea3cd9526b23d2686762120dbb5b74" [label=""];
  "sha256:8401b92ffb6b188c229ab04a6b99f35dadea3cd9526b23d2686762120dbb5b74" -> "sha256:651d2ca0caec343690fc404abcc86fa32ef9b0546d071ecc2a5d285c91b05ca4" [label=""];
  "sha256:ed2c64b7b2cc5f156af36ef71d2b586c7b7a388dd62f4073d34b074d46802613" -> "sha256:651d2ca0caec343690fc404abcc86fa32ef9b0546d071ecc2a5d285c91b05ca4" [label=""];
  "sha256:651d2ca0caec343690fc404abcc86fa32ef9b0546d071ecc2a5d285c91b05ca4" -> "sha256:1cba592136293e67ff03e26ea170c380fbef4106a7bb509f0eb8d8fc7bc8eb8e" [label=""];
}

