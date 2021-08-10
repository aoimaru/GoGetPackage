[app/sources/356589729.Dockerfile]
digraph {
  "sha256:c3d0d67fa894d2b7b3ab2da94fe71ab48c004ec7e9dd37eb5b2e2c9bce35407c" [label="docker-image://docker.io/qkrijger/wiremock:0.1" shape="ellipse"];
  "sha256:e0328920697d55cc1f9af5ab87caf2fe788a3b4c2bb8d6d383a7517115650df7" [label="local://context" shape="ellipse"];
  "sha256:9f0565795c31f3fae018684a9ef9f36c67b246d939748ee2b531200d66ab3076" [label="copy{src=/frontendstub-config.json, dest=/root/mappings/config.json}" shape="note"];
  "sha256:801c5812d3d97ade88ec5f405a7daa6d5b4923863bd1222456b7152c0488710f" [label="sha256:801c5812d3d97ade88ec5f405a7daa6d5b4923863bd1222456b7152c0488710f" shape="plaintext"];
  "sha256:c3d0d67fa894d2b7b3ab2da94fe71ab48c004ec7e9dd37eb5b2e2c9bce35407c" -> "sha256:9f0565795c31f3fae018684a9ef9f36c67b246d939748ee2b531200d66ab3076" [label=""];
  "sha256:e0328920697d55cc1f9af5ab87caf2fe788a3b4c2bb8d6d383a7517115650df7" -> "sha256:9f0565795c31f3fae018684a9ef9f36c67b246d939748ee2b531200d66ab3076" [label=""];
  "sha256:9f0565795c31f3fae018684a9ef9f36c67b246d939748ee2b531200d66ab3076" -> "sha256:801c5812d3d97ade88ec5f405a7daa6d5b4923863bd1222456b7152c0488710f" [label=""];
}

