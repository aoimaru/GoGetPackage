[app/sources/318569032.Dockerfile]
digraph {
  "sha256:e07e85eabf0fe6d6d435118f9e83cee5ee2c8fdf389b35d07f709007298e5036" [label="docker-image://docker.io/payara/server-full:5.191" shape="ellipse"];
  "sha256:187ecb7ccd49007af3476ef1395b5a3d18ecfaa120da72e28f045f92e4d577a5" [label="local://context" shape="ellipse"];
  "sha256:b0b4ab20d72d51bdc11587383349d342773d1a65f0b80800afa4ac83a3d9fa6f" [label="copy{src=/target/java-magazin-jsf-primefaces.war, dest=/}" shape="note"];
  "sha256:017f0002268530ab9776ca59e04ce9c5cfd8e32505f1d61903a20656a978c501" [label="sha256:017f0002268530ab9776ca59e04ce9c5cfd8e32505f1d61903a20656a978c501" shape="plaintext"];
  "sha256:e07e85eabf0fe6d6d435118f9e83cee5ee2c8fdf389b35d07f709007298e5036" -> "sha256:b0b4ab20d72d51bdc11587383349d342773d1a65f0b80800afa4ac83a3d9fa6f" [label=""];
  "sha256:187ecb7ccd49007af3476ef1395b5a3d18ecfaa120da72e28f045f92e4d577a5" -> "sha256:b0b4ab20d72d51bdc11587383349d342773d1a65f0b80800afa4ac83a3d9fa6f" [label=""];
  "sha256:b0b4ab20d72d51bdc11587383349d342773d1a65f0b80800afa4ac83a3d9fa6f" -> "sha256:017f0002268530ab9776ca59e04ce9c5cfd8e32505f1d61903a20656a978c501" [label=""];
}

