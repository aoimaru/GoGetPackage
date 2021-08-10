[app/sources/443521038.Dockerfile]
digraph {
  "sha256:ad721cadac0f727863875be8e983fcf26b0f37327ef6f84905855d1e1beebae5" [label="docker-image://quay.io/democracyworks/clojure-api:latest" shape="ellipse"];
  "sha256:7b8616ea79a82a140caa06b289664d60805f805d54eea4826b8239271e8c92e9" [label="mkdir{path=/s3-ftp}" shape="note"];
  "sha256:8b08845c6930af4a99a2f263adba9e117bacb20901c87abf5cb30d6e819484eb" [label="sha256:8b08845c6930af4a99a2f263adba9e117bacb20901c87abf5cb30d6e819484eb" shape="plaintext"];
  "sha256:ad721cadac0f727863875be8e983fcf26b0f37327ef6f84905855d1e1beebae5" -> "sha256:7b8616ea79a82a140caa06b289664d60805f805d54eea4826b8239271e8c92e9" [label=""];
  "sha256:7b8616ea79a82a140caa06b289664d60805f805d54eea4826b8239271e8c92e9" -> "sha256:8b08845c6930af4a99a2f263adba9e117bacb20901c87abf5cb30d6e819484eb" [label=""];
}

