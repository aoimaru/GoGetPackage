[app/sources/252790149.Dockerfile]
digraph {
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" [label="docker-image://docker.io/phusion/baseimage:0.9.19" shape="ellipse"];
  "sha256:6ce8d320223746b50227db0a714bec16f7ada02bb4da28993ef491f8d089a07e" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:8a8fc5c68650e4aa9004de41b99b31307ab9a52cd8b06b04739434f6182bfc9d" [label="/bin/sh -c apt-get upgrade -y -o Dpkg::Options::=\"--force-confold\"" shape="box"];
  "sha256:392dfb4445c3ca902aa6ca5122cc84090af13dabcce79ce288d0550c03c7cd96" [label="/bin/sh -c apt-get install -y zip python nodejs python-pip" shape="box"];
  "sha256:193910fe84ea116d807fc762d510bea51eb90f904e535aa0d3fc3559b29fc2cd" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:1038e3938219b6bfed453353857221cb4b7caea6d3619bc06fa048efaa66f71e" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:ad6f87138eaa0c9e04b7950f9aae9fc08feb519c55dd251975c8e6ffa50823cf" [label="sha256:ad6f87138eaa0c9e04b7950f9aae9fc08feb519c55dd251975c8e6ffa50823cf" shape="plaintext"];
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" -> "sha256:6ce8d320223746b50227db0a714bec16f7ada02bb4da28993ef491f8d089a07e" [label=""];
  "sha256:6ce8d320223746b50227db0a714bec16f7ada02bb4da28993ef491f8d089a07e" -> "sha256:8a8fc5c68650e4aa9004de41b99b31307ab9a52cd8b06b04739434f6182bfc9d" [label=""];
  "sha256:8a8fc5c68650e4aa9004de41b99b31307ab9a52cd8b06b04739434f6182bfc9d" -> "sha256:392dfb4445c3ca902aa6ca5122cc84090af13dabcce79ce288d0550c03c7cd96" [label=""];
  "sha256:392dfb4445c3ca902aa6ca5122cc84090af13dabcce79ce288d0550c03c7cd96" -> "sha256:193910fe84ea116d807fc762d510bea51eb90f904e535aa0d3fc3559b29fc2cd" [label=""];
  "sha256:193910fe84ea116d807fc762d510bea51eb90f904e535aa0d3fc3559b29fc2cd" -> "sha256:1038e3938219b6bfed453353857221cb4b7caea6d3619bc06fa048efaa66f71e" [label=""];
  "sha256:1038e3938219b6bfed453353857221cb4b7caea6d3619bc06fa048efaa66f71e" -> "sha256:ad6f87138eaa0c9e04b7950f9aae9fc08feb519c55dd251975c8e6ffa50823cf" [label=""];
}

