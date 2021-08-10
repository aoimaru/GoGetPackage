[app/sources/252798722.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:e8a9cc9cb9f48b62471b2925f062406a089e418f5f002e2ca22fd351df97522b" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive; apt-get update; apt-get install -y git build-essential curl python;" shape="box"];
  "sha256:03665560d6ffc318403db4cc3a1198eb2b64b5bfa2e929c3490fb84b696b8e34" [label="/bin/sh -c mkdir -p /usr/src; git clone https://github.com/cjdelisle/cjdns.git /usr/src/cjdns; cd /usr/src/cjdns; : git checkout -f $(git describe --abbrev=0 --tags --always); ./do; install -m755 -oroot -groot /usr/src/cjdns/cjdroute /usr/bin/cjdroute; mkdir -p /etc/cjdns; rm -rf /usr/src/cjdns;" shape="box"];
  "sha256:c579a3e6e6f2b6eff53e52dff758de34702d49e71b17fa73cf230a9bc0e40657" [label="/bin/sh -c apt-get remove -y build-essential curl; apt-get autoremove; apt-get clean;" shape="box"];
  "sha256:0ac36e5846cb8a1faa6cdad7b82a267077f1f0d1d1838a865a3a1fa30f247d6e" [label="local://context" shape="ellipse"];
  "sha256:2e6c6766272b871376d429e1d62eb1bc3c98604fd7313621cd69e17fd03c8dbd" [label="copy{src=/entry.sh, dest=/entry.sh}" shape="note"];
  "sha256:54520a091796fcdd06b20a759fbe3d2f4d9599f2dce8eace6b1fa30d0269db6f" [label="sha256:54520a091796fcdd06b20a759fbe3d2f4d9599f2dce8eace6b1fa30d0269db6f" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:e8a9cc9cb9f48b62471b2925f062406a089e418f5f002e2ca22fd351df97522b" [label=""];
  "sha256:e8a9cc9cb9f48b62471b2925f062406a089e418f5f002e2ca22fd351df97522b" -> "sha256:03665560d6ffc318403db4cc3a1198eb2b64b5bfa2e929c3490fb84b696b8e34" [label=""];
  "sha256:03665560d6ffc318403db4cc3a1198eb2b64b5bfa2e929c3490fb84b696b8e34" -> "sha256:c579a3e6e6f2b6eff53e52dff758de34702d49e71b17fa73cf230a9bc0e40657" [label=""];
  "sha256:c579a3e6e6f2b6eff53e52dff758de34702d49e71b17fa73cf230a9bc0e40657" -> "sha256:2e6c6766272b871376d429e1d62eb1bc3c98604fd7313621cd69e17fd03c8dbd" [label=""];
  "sha256:0ac36e5846cb8a1faa6cdad7b82a267077f1f0d1d1838a865a3a1fa30f247d6e" -> "sha256:2e6c6766272b871376d429e1d62eb1bc3c98604fd7313621cd69e17fd03c8dbd" [label=""];
  "sha256:2e6c6766272b871376d429e1d62eb1bc3c98604fd7313621cd69e17fd03c8dbd" -> "sha256:54520a091796fcdd06b20a759fbe3d2f4d9599f2dce8eace6b1fa30d0269db6f" [label=""];
}

