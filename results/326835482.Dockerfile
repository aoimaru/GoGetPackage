[app/sources/326835482.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:15bbdc44e9baeb17811d78997a50ccf16eef212466ac142b1dcb3b0556e63222" [label="local://context" shape="ellipse"];
  "sha256:017b4a1db9493a8195dee9726aae42da0229fa85637035277c9feed213e80718" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:a4f73bb9ec772a808eb1fdbb2b3621d97a8b26b81e6e323ed7f9d2c6178594d3" [label="sha256:a4f73bb9ec772a808eb1fdbb2b3621d97a8b26b81e6e323ed7f9d2c6178594d3" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:017b4a1db9493a8195dee9726aae42da0229fa85637035277c9feed213e80718" [label=""];
  "sha256:15bbdc44e9baeb17811d78997a50ccf16eef212466ac142b1dcb3b0556e63222" -> "sha256:017b4a1db9493a8195dee9726aae42da0229fa85637035277c9feed213e80718" [label=""];
  "sha256:017b4a1db9493a8195dee9726aae42da0229fa85637035277c9feed213e80718" -> "sha256:a4f73bb9ec772a808eb1fdbb2b3621d97a8b26b81e6e323ed7f9d2c6178594d3" [label=""];
}

