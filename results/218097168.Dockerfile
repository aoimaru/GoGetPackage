[app/sources/218097168.Dockerfile]
digraph {
  "sha256:681529ac46b0a4d28a5537bd8fec7f017913b5211b510848a4a7597eeb78f675" [label="docker-image://docker.io/accupara/qt4:linux@sha256:56866bfbbe47e81c9cacaf64f804b6f34e8deba3cc638ebfda0dc307b103d239" shape="ellipse"];
  "sha256:b3fc3b7401df8f62659750cd4027b6bc65b65b212ce35e175cd6a7cf5cfb7eeb" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:9738ece76127a8f578e2dbc0bd34fb2a60640028a2451d092d314913866e533f" [label="/bin/sh -c sudo apt-get install -y         libcurl4-openssl-dev         libboost-dev         libhunspell-dev         libopencv-dev         libpoppler-qt4-dev" shape="box"];
  "sha256:ad7a8de53428e3b17db378f68b2c67830996b9cf48d2fc5a7718503e0f84cc84" [label="sha256:ad7a8de53428e3b17db378f68b2c67830996b9cf48d2fc5a7718503e0f84cc84" shape="plaintext"];
  "sha256:681529ac46b0a4d28a5537bd8fec7f017913b5211b510848a4a7597eeb78f675" -> "sha256:b3fc3b7401df8f62659750cd4027b6bc65b65b212ce35e175cd6a7cf5cfb7eeb" [label=""];
  "sha256:b3fc3b7401df8f62659750cd4027b6bc65b65b212ce35e175cd6a7cf5cfb7eeb" -> "sha256:9738ece76127a8f578e2dbc0bd34fb2a60640028a2451d092d314913866e533f" [label=""];
  "sha256:9738ece76127a8f578e2dbc0bd34fb2a60640028a2451d092d314913866e533f" -> "sha256:ad7a8de53428e3b17db378f68b2c67830996b9cf48d2fc5a7718503e0f84cc84" [label=""];
}

