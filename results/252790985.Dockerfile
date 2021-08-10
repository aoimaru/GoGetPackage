[app/sources/252790985.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:0f8243c8d3e399dfa6a1db2708b1080eb4ce8bbc633cd1110508b44f636b1e58" [label="local://context" shape="ellipse"];
  "sha256:53dd100249bec386acca4fdba7dac96e1c1126efc0bebe5e333831f7ab6b7333" [label="copy{src=/, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:974e36357896d205d41929fbaac2c95f3f55efd78fd22d7947fa183613fc6631" [label="sha256:974e36357896d205d41929fbaac2c95f3f55efd78fd22d7947fa183613fc6631" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:53dd100249bec386acca4fdba7dac96e1c1126efc0bebe5e333831f7ab6b7333" [label=""];
  "sha256:0f8243c8d3e399dfa6a1db2708b1080eb4ce8bbc633cd1110508b44f636b1e58" -> "sha256:53dd100249bec386acca4fdba7dac96e1c1126efc0bebe5e333831f7ab6b7333" [label=""];
  "sha256:53dd100249bec386acca4fdba7dac96e1c1126efc0bebe5e333831f7ab6b7333" -> "sha256:974e36357896d205d41929fbaac2c95f3f55efd78fd22d7947fa183613fc6631" [label=""];
}

