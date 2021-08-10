[app/sources/355444414.Dockerfile]
digraph {
  "sha256:4038d9cae371b699ecf9321c6bfcf2101a3570664572ed6d3dee5e22bd126c7a" [label="docker-image://docker.io/treeder/go-dind:latest" shape="ellipse"];
  "sha256:0c971c81c519438e7d7336621e7fc7a9f43b46dcca4d01281880d98663080e78" [label="local://context" shape="ellipse"];
  "sha256:53a9894c5254ab91fbaa7ed6dead62c00a88957379742aa0aa10338d951e8be1" [label="copy{src=/go.sh, dest=/scripts/}" shape="note"];
  "sha256:cf3ad0c7add94acb667496d47792a557dfede459e0e7622b21a95a42473c9eb9" [label="copy{src=/lib/*, dest=/scripts/lib/}" shape="note"];
  "sha256:faf11fc3664a3f7bcb48ac8542bfab0f316ce3655a3f4044b2763aeff1f6ad71" [label="copy{src=/app.go, dest=/app/app.go}" shape="note"];
  "sha256:c50b60a5dd5b5452726d7a03ba17047dcd3a1e77ca451f5a8f15ee07533c9cb0" [label="mkdir{path=/app}" shape="note"];
  "sha256:fabd377c4b812a841f4015e7fe9eaf7a8befbdb4aa788c79f04397b8b99f0202" [label="sha256:fabd377c4b812a841f4015e7fe9eaf7a8befbdb4aa788c79f04397b8b99f0202" shape="plaintext"];
  "sha256:4038d9cae371b699ecf9321c6bfcf2101a3570664572ed6d3dee5e22bd126c7a" -> "sha256:53a9894c5254ab91fbaa7ed6dead62c00a88957379742aa0aa10338d951e8be1" [label=""];
  "sha256:0c971c81c519438e7d7336621e7fc7a9f43b46dcca4d01281880d98663080e78" -> "sha256:53a9894c5254ab91fbaa7ed6dead62c00a88957379742aa0aa10338d951e8be1" [label=""];
  "sha256:53a9894c5254ab91fbaa7ed6dead62c00a88957379742aa0aa10338d951e8be1" -> "sha256:cf3ad0c7add94acb667496d47792a557dfede459e0e7622b21a95a42473c9eb9" [label=""];
  "sha256:0c971c81c519438e7d7336621e7fc7a9f43b46dcca4d01281880d98663080e78" -> "sha256:cf3ad0c7add94acb667496d47792a557dfede459e0e7622b21a95a42473c9eb9" [label=""];
  "sha256:cf3ad0c7add94acb667496d47792a557dfede459e0e7622b21a95a42473c9eb9" -> "sha256:faf11fc3664a3f7bcb48ac8542bfab0f316ce3655a3f4044b2763aeff1f6ad71" [label=""];
  "sha256:0c971c81c519438e7d7336621e7fc7a9f43b46dcca4d01281880d98663080e78" -> "sha256:faf11fc3664a3f7bcb48ac8542bfab0f316ce3655a3f4044b2763aeff1f6ad71" [label=""];
  "sha256:faf11fc3664a3f7bcb48ac8542bfab0f316ce3655a3f4044b2763aeff1f6ad71" -> "sha256:c50b60a5dd5b5452726d7a03ba17047dcd3a1e77ca451f5a8f15ee07533c9cb0" [label=""];
  "sha256:c50b60a5dd5b5452726d7a03ba17047dcd3a1e77ca451f5a8f15ee07533c9cb0" -> "sha256:fabd377c4b812a841f4015e7fe9eaf7a8befbdb4aa788c79f04397b8b99f0202" [label=""];
}

