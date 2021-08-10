[app/sources/147768070.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:fc01a5e92bb15c9e89f60e69f8b876d997b3bd5a53c7e997c7ed7fc3be25cf1a" [label="local://context" shape="ellipse"];
  "sha256:f6b1df9d042b715561e10700013ec72f1e2113c34633160bbe08604926b608ae" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:b3390f6abfb86b9929880ffe6d33a5044fd5afba9c42f786b856a4242c6ed3f9" [label="sha256:b3390f6abfb86b9929880ffe6d33a5044fd5afba9c42f786b856a4242c6ed3f9" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:f6b1df9d042b715561e10700013ec72f1e2113c34633160bbe08604926b608ae" [label=""];
  "sha256:fc01a5e92bb15c9e89f60e69f8b876d997b3bd5a53c7e997c7ed7fc3be25cf1a" -> "sha256:f6b1df9d042b715561e10700013ec72f1e2113c34633160bbe08604926b608ae" [label=""];
  "sha256:f6b1df9d042b715561e10700013ec72f1e2113c34633160bbe08604926b608ae" -> "sha256:b3390f6abfb86b9929880ffe6d33a5044fd5afba9c42f786b856a4242c6ed3f9" [label=""];
}

