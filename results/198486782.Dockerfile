[app/sources/198486782.Dockerfile]
digraph {
  "sha256:9f3d8c8fdd4532be9f3e00bf55c2654fdd67149658a33b433bf62d5b6da5d6a3" [label="docker-image://docker.io/million12/varnish:latest" shape="ellipse"];
  "sha256:672816e507b49216cd12abdc75c45437c14544c9ffbf73910aa7d2ff0692a11d" [label="local://context" shape="ellipse"];
  "sha256:0b1d62e41d1fc9db48c2f160acde38d0ee974c8012c9694ac913dd3707bf524e" [label="copy{src=/etc/varnish.vcl, dest=/data/varnish.vcl}" shape="note"];
  "sha256:ffc252d2bffe49c92b0e89da927bc8eca61c3ac5f10cc956da8d62863e322b2a" [label="sha256:ffc252d2bffe49c92b0e89da927bc8eca61c3ac5f10cc956da8d62863e322b2a" shape="plaintext"];
  "sha256:9f3d8c8fdd4532be9f3e00bf55c2654fdd67149658a33b433bf62d5b6da5d6a3" -> "sha256:0b1d62e41d1fc9db48c2f160acde38d0ee974c8012c9694ac913dd3707bf524e" [label=""];
  "sha256:672816e507b49216cd12abdc75c45437c14544c9ffbf73910aa7d2ff0692a11d" -> "sha256:0b1d62e41d1fc9db48c2f160acde38d0ee974c8012c9694ac913dd3707bf524e" [label=""];
  "sha256:0b1d62e41d1fc9db48c2f160acde38d0ee974c8012c9694ac913dd3707bf524e" -> "sha256:ffc252d2bffe49c92b0e89da927bc8eca61c3ac5f10cc956da8d62863e322b2a" [label=""];
}

