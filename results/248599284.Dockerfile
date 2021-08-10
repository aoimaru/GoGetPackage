[app/sources/248599284.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:4e9ecdc03f1a04551039f2947f57e876b41417b2fc1aa107a638ad459da4307e" [label="/bin/sh -c echo \"${PLANTUML_SERVICE_VERSION?:--build-arg PLANTUML_SERVICE_VERSION=version is mandatory}\"" shape="box"];
  "sha256:6dafdb084f752a9317b6e0cdb09bef0a02e4675f440cab523b55498daf35acae" [label="/bin/sh -c useradd --create-home app   && apt-get update -qq   && apt-get upgrade -y   && apt-get install -y graphviz fonts-takao curl   && apt-get clean   && rm -rf /var/lib/apt/lists/*   && mkdir -p ${PLANTUML_SERVICE_BIN_DIR}   && curl -L ${PLANTUML_SERVICE_JAR_URL} -o ${PLANTUML_SERVICE_PATH}   && chown -R app ${PLANTUML_SERVICE_BIN_DIR}" shape="box"];
  "sha256:eda2dafd7a30ab88f4501c7c7d893cfde10b45460f62fed2113a1cd1ac5caf41" [label="sha256:eda2dafd7a30ab88f4501c7c7d893cfde10b45460f62fed2113a1cd1ac5caf41" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:4e9ecdc03f1a04551039f2947f57e876b41417b2fc1aa107a638ad459da4307e" [label=""];
  "sha256:4e9ecdc03f1a04551039f2947f57e876b41417b2fc1aa107a638ad459da4307e" -> "sha256:6dafdb084f752a9317b6e0cdb09bef0a02e4675f440cab523b55498daf35acae" [label=""];
  "sha256:6dafdb084f752a9317b6e0cdb09bef0a02e4675f440cab523b55498daf35acae" -> "sha256:eda2dafd7a30ab88f4501c7c7d893cfde10b45460f62fed2113a1cd1ac5caf41" [label=""];
}

