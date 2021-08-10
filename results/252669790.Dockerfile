[app/sources/252669790.Dockerfile]
digraph {
  "sha256:fd2164aec794a6963e5c26598ca7a6eaabd0922473b9101b427669666ef0f93e" [label="docker-image://docker.io/ccdcoe/sdm-jupyter-notebook:latest" shape="ellipse"];
  "sha256:c893e804b6f1744bc8f4d97ebe5bdf10578b2c0f24cf47c59c4f78d572b86007" [label="/bin/sh -c conda install jupyterlab" shape="box"];
  "sha256:0c1253572fdefbbdd6df5264184067ca460d650b697f15a5e83fa1e658ce123d" [label="sha256:0c1253572fdefbbdd6df5264184067ca460d650b697f15a5e83fa1e658ce123d" shape="plaintext"];
  "sha256:fd2164aec794a6963e5c26598ca7a6eaabd0922473b9101b427669666ef0f93e" -> "sha256:c893e804b6f1744bc8f4d97ebe5bdf10578b2c0f24cf47c59c4f78d572b86007" [label=""];
  "sha256:c893e804b6f1744bc8f4d97ebe5bdf10578b2c0f24cf47c59c4f78d572b86007" -> "sha256:0c1253572fdefbbdd6df5264184067ca460d650b697f15a5e83fa1e658ce123d" [label=""];
}

