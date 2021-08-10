[app/sources/245373870.Dockerfile]
digraph {
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" [label="docker-image://gcr.io/google_containers/ubuntu-slim:0.6@sha256:6fce5203ddcbe38d86b396efddd388bd28e1b36ec44deb98af6303397d4c2174" shape="ellipse"];
  "sha256:14ff5f7dd78a9b33dab1b563794185fc9b2eb26cf412f7c0a120a76b678617aa" [label="local://context" shape="ellipse"];
  "sha256:d1e4e6ac99408bce4d210bbe399bfb82d42c3b154a085f6f90b7ac340b78e245" [label="copy{src=/logs-generator, dest=/}" shape="note"];
  "sha256:d728a5ffb49e3ede6d254c9c915868f3daec7e526665310521f4657d6551864a" [label="sha256:d728a5ffb49e3ede6d254c9c915868f3daec7e526665310521f4657d6551864a" shape="plaintext"];
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" -> "sha256:d1e4e6ac99408bce4d210bbe399bfb82d42c3b154a085f6f90b7ac340b78e245" [label=""];
  "sha256:14ff5f7dd78a9b33dab1b563794185fc9b2eb26cf412f7c0a120a76b678617aa" -> "sha256:d1e4e6ac99408bce4d210bbe399bfb82d42c3b154a085f6f90b7ac340b78e245" [label=""];
  "sha256:d1e4e6ac99408bce4d210bbe399bfb82d42c3b154a085f6f90b7ac340b78e245" -> "sha256:d728a5ffb49e3ede6d254c9c915868f3daec7e526665310521f4657d6551864a" [label=""];
}

