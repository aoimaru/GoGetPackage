[app/sources/316056861.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:620a223d76ea65b40e882eb03dc3690a52df4ec2f66af6709cc4efcd22f125e0" [label="local://context" shape="ellipse"];
  "sha256:0539ebfb686692dbd45713273cac5e115616ca91bd1aa49a8a22375d49409948" [label="copy{src=/index2.html, dest=/usr/share/nginx/html/index2.html}" shape="note"];
  "sha256:5b913965f1a678874c43b7e529c95fd87a2f5a1109d8a6ee8e5b01e3ae0952d0" [label="/bin/sh -c chmod +r /usr/share/nginx/html/index2.html" shape="box"];
  "sha256:a37c6ebbde238ddf49515b45a1c9bd8d928b8f7d0b3ca655c4fad3f562a116dd" [label="copy{src=/auto-reload-nginx.sh, dest=/home/auto-reload-nginx.sh}" shape="note"];
  "sha256:4ea0d5663f7d599e603d97038d4342a4385b2bc3ea75557cdb3b47983909b522" [label="/bin/sh -c chmod +x /home/auto-reload-nginx.sh" shape="box"];
  "sha256:4ca0558251edf1f20697ebfaaaae1ea4dda620a3dadb3fd1e3ab6c1aa86c2a7d" [label="/bin/sh -c apt-get update && apt-get install -y inotify-tools" shape="box"];
  "sha256:1936445e3a92254001527fa56a0fc3db1dafa9a717a55fad1dcad430e5e8aaf6" [label="sha256:1936445e3a92254001527fa56a0fc3db1dafa9a717a55fad1dcad430e5e8aaf6" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:0539ebfb686692dbd45713273cac5e115616ca91bd1aa49a8a22375d49409948" [label=""];
  "sha256:620a223d76ea65b40e882eb03dc3690a52df4ec2f66af6709cc4efcd22f125e0" -> "sha256:0539ebfb686692dbd45713273cac5e115616ca91bd1aa49a8a22375d49409948" [label=""];
  "sha256:0539ebfb686692dbd45713273cac5e115616ca91bd1aa49a8a22375d49409948" -> "sha256:5b913965f1a678874c43b7e529c95fd87a2f5a1109d8a6ee8e5b01e3ae0952d0" [label=""];
  "sha256:5b913965f1a678874c43b7e529c95fd87a2f5a1109d8a6ee8e5b01e3ae0952d0" -> "sha256:a37c6ebbde238ddf49515b45a1c9bd8d928b8f7d0b3ca655c4fad3f562a116dd" [label=""];
  "sha256:620a223d76ea65b40e882eb03dc3690a52df4ec2f66af6709cc4efcd22f125e0" -> "sha256:a37c6ebbde238ddf49515b45a1c9bd8d928b8f7d0b3ca655c4fad3f562a116dd" [label=""];
  "sha256:a37c6ebbde238ddf49515b45a1c9bd8d928b8f7d0b3ca655c4fad3f562a116dd" -> "sha256:4ea0d5663f7d599e603d97038d4342a4385b2bc3ea75557cdb3b47983909b522" [label=""];
  "sha256:4ea0d5663f7d599e603d97038d4342a4385b2bc3ea75557cdb3b47983909b522" -> "sha256:4ca0558251edf1f20697ebfaaaae1ea4dda620a3dadb3fd1e3ab6c1aa86c2a7d" [label=""];
  "sha256:4ca0558251edf1f20697ebfaaaae1ea4dda620a3dadb3fd1e3ab6c1aa86c2a7d" -> "sha256:1936445e3a92254001527fa56a0fc3db1dafa9a717a55fad1dcad430e5e8aaf6" [label=""];
}

