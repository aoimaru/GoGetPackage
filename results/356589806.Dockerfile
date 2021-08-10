[app/sources/356589806.Dockerfile]
digraph {
  "sha256:c3d0d67fa894d2b7b3ab2da94fe71ab48c004ec7e9dd37eb5b2e2c9bce35407c" [label="docker-image://docker.io/qkrijger/wiremock:0.1" shape="ellipse"];
  "sha256:fcbf3416757c643a812727557c15a5315049fe1e7c9f657bc51de94c6e903fba" [label="local://context" shape="ellipse"];
  "sha256:66ffb6729e5d6d06c8956a6bf2b2dc28140b7019e74e816b995a18563de69b04" [label="copy{src=/frontendstub-config.json, dest=/root/mappings/config.json}" shape="note"];
  "sha256:98b95fb6ce27b14ee03785190f35a9650f4fd847feeca576195a5933bc65819e" [label="sha256:98b95fb6ce27b14ee03785190f35a9650f4fd847feeca576195a5933bc65819e" shape="plaintext"];
  "sha256:c3d0d67fa894d2b7b3ab2da94fe71ab48c004ec7e9dd37eb5b2e2c9bce35407c" -> "sha256:66ffb6729e5d6d06c8956a6bf2b2dc28140b7019e74e816b995a18563de69b04" [label=""];
  "sha256:fcbf3416757c643a812727557c15a5315049fe1e7c9f657bc51de94c6e903fba" -> "sha256:66ffb6729e5d6d06c8956a6bf2b2dc28140b7019e74e816b995a18563de69b04" [label=""];
  "sha256:66ffb6729e5d6d06c8956a6bf2b2dc28140b7019e74e816b995a18563de69b04" -> "sha256:98b95fb6ce27b14ee03785190f35a9650f4fd847feeca576195a5933bc65819e" [label=""];
}

