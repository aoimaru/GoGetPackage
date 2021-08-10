[app/sources/252773553.Dockerfile]
digraph {
  "sha256:b67f4efc818efc0d3f20e918a3598630ddd35bb3fe5bd37ddcf7b2ac19a1bac3" [label="docker-image://docker.io/digitallyseamless/nodejs-bower-grunt:latest" shape="ellipse"];
  "sha256:1eedc033c5cc37c3391e197cf99b32bde29904626ac9b42700fdce8e618b18f4" [label="/bin/sh -c apt-get update && apt-get install -y python-pip && pip install sphinx && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /var/tmp/*" shape="box"];
  "sha256:dbb30e43f3bac995ba21831e0833c744619f0464d5bc24ee99ab43fa0956e57a" [label="sha256:dbb30e43f3bac995ba21831e0833c744619f0464d5bc24ee99ab43fa0956e57a" shape="plaintext"];
  "sha256:b67f4efc818efc0d3f20e918a3598630ddd35bb3fe5bd37ddcf7b2ac19a1bac3" -> "sha256:1eedc033c5cc37c3391e197cf99b32bde29904626ac9b42700fdce8e618b18f4" [label=""];
  "sha256:1eedc033c5cc37c3391e197cf99b32bde29904626ac9b42700fdce8e618b18f4" -> "sha256:dbb30e43f3bac995ba21831e0833c744619f0464d5bc24ee99ab43fa0956e57a" [label=""];
}

