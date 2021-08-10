[app/sources/135455610.Dockerfile]
digraph {
  "sha256:9354a672a79f137ddcfe2784d9c39b76428362b94dc842662a25395723b29fe4" [label="docker-image://docker.io/nordstrom/python:2.7" shape="ellipse"];
  "sha256:e9c19565fc88db4e375543f89c5b5aef4f3a3ca39074baa7e5f4c2d9de626878" [label="/bin/sh -c pip install awscli  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:0c71c33738e47d099d6260f8407ad30d626114f0b539f6b09a93509dfddfe7d4" [label="sha256:0c71c33738e47d099d6260f8407ad30d626114f0b539f6b09a93509dfddfe7d4" shape="plaintext"];
  "sha256:9354a672a79f137ddcfe2784d9c39b76428362b94dc842662a25395723b29fe4" -> "sha256:e9c19565fc88db4e375543f89c5b5aef4f3a3ca39074baa7e5f4c2d9de626878" [label=""];
  "sha256:e9c19565fc88db4e375543f89c5b5aef4f3a3ca39074baa7e5f4c2d9de626878" -> "sha256:0c71c33738e47d099d6260f8407ad30d626114f0b539f6b09a93509dfddfe7d4" [label=""];
}

