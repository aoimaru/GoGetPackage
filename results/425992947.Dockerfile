[app/sources/425992947.Dockerfile]
digraph {
  "sha256:755ef625d0e1e9490293eb4998b4165a65bcb3c89056bfbb610a54ac7c17c18e" [label="docker-image://docker.io/opensuse/archive:42.2" shape="ellipse"];
  "sha256:63656e7de79df2af033abd9013e89f1c15e9c4060f7f7ebf41c25e719a2c66d5" [label="/bin/sh -c zypper install -y --no-recommends       ccache       cmake       gcc6-c++       gettext-tools       git       libcurl-devel       lsb-release       lua-devel       make       rpm-build       wxWidgets-3_0-devel  && zypper clean --all  && update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-6 50  && update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-6 50" shape="box"];
  "sha256:5c976e0e4a773c8e1d72c038efd6db42f3866d180347414b904444810b372697" [label="sha256:5c976e0e4a773c8e1d72c038efd6db42f3866d180347414b904444810b372697" shape="plaintext"];
  "sha256:755ef625d0e1e9490293eb4998b4165a65bcb3c89056bfbb610a54ac7c17c18e" -> "sha256:63656e7de79df2af033abd9013e89f1c15e9c4060f7f7ebf41c25e719a2c66d5" [label=""];
  "sha256:63656e7de79df2af033abd9013e89f1c15e9c4060f7f7ebf41c25e719a2c66d5" -> "sha256:5c976e0e4a773c8e1d72c038efd6db42f3866d180347414b904444810b372697" [label=""];
}

