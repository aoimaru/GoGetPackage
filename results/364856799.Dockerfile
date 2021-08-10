[app/sources/364856799.Dockerfile]
digraph {
  "sha256:1db34aca82c22cdac9f2d3b2df7286537b062fa28caab7f08a29fdc789cb2ae4" [label="docker-image://docker.io/library/mtp-build:0.5" shape="ellipse"];
  "sha256:bc17c4baa4ed988910aa29aadc4a28e2c546ab3e10a567682c9bc0e951a2ea4b" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:cfdb1d4d97c4ee0c0151a81249ec5c6fbe120498d95f6d4fddfeed33528d2c2c" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:a46fa2893329d7e3eb9c056587ed61e48deaa63effb56a4ae1d7b63abfc70220" [label="mkdir{path=/opt/mtp}" shape="note"];
  "sha256:0000797d272ffd7aca5167b404e8a4b3986a943e0ce5e475adf1be24d41dcb32" [label="/bin/sh -c unzip $SRC_HOME/$MTP_MODULE/build/distributions/$MTP_MODULE-$MTP_VERSION.zip" shape="box"];
  "sha256:e3114c9b20cd63370f3fa2052ccdb0ad446d8cfa65273df8ad304fb5f70a4ea5" [label="mkdir{path=/opt/mtp/-0.5.0}" shape="note"];
  "sha256:d573321728aef9650e68b38b2be3abea10b1192d6cbe9e72c30c75423d2b5159" [label="local://context" shape="ellipse"];
  "sha256:7bf4f112c8734a456dbaa913bddc88e5ba78004d0270c9f31c938c3a931dd64f" [label="copy{src=/conf/spring-application_.yml, dest=/opt/mtp/-0.5.0/conf/spring-application.yml}" shape="note"];
  "sha256:5857cfeb0c17c2e9138124fab02c3189c2e17a72ac73d97bcff64389b3c263eb" [label="sha256:5857cfeb0c17c2e9138124fab02c3189c2e17a72ac73d97bcff64389b3c263eb" shape="plaintext"];
  "sha256:1db34aca82c22cdac9f2d3b2df7286537b062fa28caab7f08a29fdc789cb2ae4" -> "sha256:bc17c4baa4ed988910aa29aadc4a28e2c546ab3e10a567682c9bc0e951a2ea4b" [label=""];
  "sha256:bc17c4baa4ed988910aa29aadc4a28e2c546ab3e10a567682c9bc0e951a2ea4b" -> "sha256:cfdb1d4d97c4ee0c0151a81249ec5c6fbe120498d95f6d4fddfeed33528d2c2c" [label=""];
  "sha256:cfdb1d4d97c4ee0c0151a81249ec5c6fbe120498d95f6d4fddfeed33528d2c2c" -> "sha256:a46fa2893329d7e3eb9c056587ed61e48deaa63effb56a4ae1d7b63abfc70220" [label=""];
  "sha256:a46fa2893329d7e3eb9c056587ed61e48deaa63effb56a4ae1d7b63abfc70220" -> "sha256:0000797d272ffd7aca5167b404e8a4b3986a943e0ce5e475adf1be24d41dcb32" [label=""];
  "sha256:0000797d272ffd7aca5167b404e8a4b3986a943e0ce5e475adf1be24d41dcb32" -> "sha256:e3114c9b20cd63370f3fa2052ccdb0ad446d8cfa65273df8ad304fb5f70a4ea5" [label=""];
  "sha256:e3114c9b20cd63370f3fa2052ccdb0ad446d8cfa65273df8ad304fb5f70a4ea5" -> "sha256:7bf4f112c8734a456dbaa913bddc88e5ba78004d0270c9f31c938c3a931dd64f" [label=""];
  "sha256:d573321728aef9650e68b38b2be3abea10b1192d6cbe9e72c30c75423d2b5159" -> "sha256:7bf4f112c8734a456dbaa913bddc88e5ba78004d0270c9f31c938c3a931dd64f" [label=""];
  "sha256:7bf4f112c8734a456dbaa913bddc88e5ba78004d0270c9f31c938c3a931dd64f" -> "sha256:5857cfeb0c17c2e9138124fab02c3189c2e17a72ac73d97bcff64389b3c263eb" [label=""];
}

