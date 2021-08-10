[app/sources/467531512.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:df309ec53c7034789531fdeb270b89ca5d63fe98fefdbf8d3caa0707447e71db" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone" shape="box"];
  "sha256:7817e5a972c2c2c358f1d6b049024a9124eaf60fc728370aa49c879e5bf5ba00" [label="local://context" shape="ellipse"];
  "sha256:f2c06890fa2d382f6d7360331f9bd1e9d139e2213a7b6d2fce7e588f0494f1b4" [label="copy{src=/target/message-service-0.0.1-SNAPSHOT.jar, dest=/app/}" shape="note"];
  "sha256:5ed554113434874cf4f4cd0a48526f3e14955803589fba6576d04437874eb823" [label="sha256:5ed554113434874cf4f4cd0a48526f3e14955803589fba6576d04437874eb823" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:df309ec53c7034789531fdeb270b89ca5d63fe98fefdbf8d3caa0707447e71db" [label=""];
  "sha256:df309ec53c7034789531fdeb270b89ca5d63fe98fefdbf8d3caa0707447e71db" -> "sha256:f2c06890fa2d382f6d7360331f9bd1e9d139e2213a7b6d2fce7e588f0494f1b4" [label=""];
  "sha256:7817e5a972c2c2c358f1d6b049024a9124eaf60fc728370aa49c879e5bf5ba00" -> "sha256:f2c06890fa2d382f6d7360331f9bd1e9d139e2213a7b6d2fce7e588f0494f1b4" [label=""];
  "sha256:f2c06890fa2d382f6d7360331f9bd1e9d139e2213a7b6d2fce7e588f0494f1b4" -> "sha256:5ed554113434874cf4f4cd0a48526f3e14955803589fba6576d04437874eb823" [label=""];
}

