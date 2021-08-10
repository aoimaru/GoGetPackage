[app/sources/252791075.Dockerfile]
digraph {
  "sha256:c8ab1e866d346ca5573f5a6c1a274ac61bf2d065ae64467eb5fa1b4dcd300d56" [label="docker-image://docker.io/library/python:3.4.6@sha256:9c6c97ea31915fc82d4adeca1f9aa8cbad0ca113f4237d350ab726cf05485585" shape="ellipse"];
  "sha256:7fbb367dad40eb3a109506c7f40d3169dcfa87ad28794deaaf1c13b5ee3a64d5" [label="/bin/sh -c pip install nibabel scikit-image" shape="box"];
  "sha256:bb9c4ac5d2dd7b710ed99889df8dacea4a92b961fad06d6dde9dd66ac4e66afe" [label="local://context" shape="ellipse"];
  "sha256:49fa0aa212b3552642e47676809997e6893122e85f672bb66dd68248d9bff778" [label="copy{src=/myImageComparison.py, dest=/myImageComparison.py}" shape="note"];
  "sha256:ed50550bbbe537a00cd758eef56fe781a01b77a85f54ec68c0d338b04a9a2844" [label="sha256:ed50550bbbe537a00cd758eef56fe781a01b77a85f54ec68c0d338b04a9a2844" shape="plaintext"];
  "sha256:c8ab1e866d346ca5573f5a6c1a274ac61bf2d065ae64467eb5fa1b4dcd300d56" -> "sha256:7fbb367dad40eb3a109506c7f40d3169dcfa87ad28794deaaf1c13b5ee3a64d5" [label=""];
  "sha256:7fbb367dad40eb3a109506c7f40d3169dcfa87ad28794deaaf1c13b5ee3a64d5" -> "sha256:49fa0aa212b3552642e47676809997e6893122e85f672bb66dd68248d9bff778" [label=""];
  "sha256:bb9c4ac5d2dd7b710ed99889df8dacea4a92b961fad06d6dde9dd66ac4e66afe" -> "sha256:49fa0aa212b3552642e47676809997e6893122e85f672bb66dd68248d9bff778" [label=""];
  "sha256:49fa0aa212b3552642e47676809997e6893122e85f672bb66dd68248d9bff778" -> "sha256:ed50550bbbe537a00cd758eef56fe781a01b77a85f54ec68c0d338b04a9a2844" [label=""];
}

