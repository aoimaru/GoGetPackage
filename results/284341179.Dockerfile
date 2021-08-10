[app/sources/284341179.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:4a8edb9dfe6d289aaebe6e916a9004b7469a3bda73f5bec5f2020797b00efaac" [label="/bin/sh -c apt-get update &&     apt-get install -y \t\t\tcurl \t\t\tgpg \t\t\tpython \t\t\tsudo \t\t\tsystemd \t\t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0d1f7126d54215634f363fb8f4d19c64263ca572b13d179bbf5d3152da72f825" [label="/bin/sh -c useradd -ms /bin/bash user \t\t&& echo 'user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:d6028304b69d0260a1b6b6382cafd5349a446a586081b2ed89c4c867593146d8" [label="sha256:d6028304b69d0260a1b6b6382cafd5349a446a586081b2ed89c4c867593146d8" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:4a8edb9dfe6d289aaebe6e916a9004b7469a3bda73f5bec5f2020797b00efaac" [label=""];
  "sha256:4a8edb9dfe6d289aaebe6e916a9004b7469a3bda73f5bec5f2020797b00efaac" -> "sha256:0d1f7126d54215634f363fb8f4d19c64263ca572b13d179bbf5d3152da72f825" [label=""];
  "sha256:0d1f7126d54215634f363fb8f4d19c64263ca572b13d179bbf5d3152da72f825" -> "sha256:d6028304b69d0260a1b6b6382cafd5349a446a586081b2ed89c4c867593146d8" [label=""];
}

