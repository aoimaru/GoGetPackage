[app/sources/252767496.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:af2230813a703639cdd18379b40165ce28cb507a79c19a6eeb1df4803edc8b29" [label="local://context" shape="ellipse"];
  "sha256:37f8d51f5ec38eb6465aae8a247d1d8dc3c2ce15f748a2e8d2a39400c2c2dd26" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:abfed7270fc68b38e6cf545419e4852c124340a32c300907fa5ffbf7794d264e" [label="copy{src=/nginx.vh.default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:70626d0e484fac8760c8ba6e2a9e1ca80db3638fa63404eb63b1127905e318de" [label="sha256:70626d0e484fac8760c8ba6e2a9e1ca80db3638fa63404eb63b1127905e318de" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:37f8d51f5ec38eb6465aae8a247d1d8dc3c2ce15f748a2e8d2a39400c2c2dd26" [label=""];
  "sha256:af2230813a703639cdd18379b40165ce28cb507a79c19a6eeb1df4803edc8b29" -> "sha256:37f8d51f5ec38eb6465aae8a247d1d8dc3c2ce15f748a2e8d2a39400c2c2dd26" [label=""];
  "sha256:37f8d51f5ec38eb6465aae8a247d1d8dc3c2ce15f748a2e8d2a39400c2c2dd26" -> "sha256:abfed7270fc68b38e6cf545419e4852c124340a32c300907fa5ffbf7794d264e" [label=""];
  "sha256:af2230813a703639cdd18379b40165ce28cb507a79c19a6eeb1df4803edc8b29" -> "sha256:abfed7270fc68b38e6cf545419e4852c124340a32c300907fa5ffbf7794d264e" [label=""];
  "sha256:abfed7270fc68b38e6cf545419e4852c124340a32c300907fa5ffbf7794d264e" -> "sha256:70626d0e484fac8760c8ba6e2a9e1ca80db3638fa63404eb63b1127905e318de" [label=""];
}

