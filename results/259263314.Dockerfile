[app/sources/259263314.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:4492a62d5b0cb9bcd62f7f461774647e2e4e8496f72ac2f59efa8f0daf480e56" [label="local://context" shape="ellipse"];
  "sha256:fdbb49fba13eeff906d456aa50d64ff767985a495b6dfc546395811409143d05" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:8819abe3e16c692471be2ec2a77b9b95799033d191f5448c39fe1b9947e5b72e" [label="sha256:8819abe3e16c692471be2ec2a77b9b95799033d191f5448c39fe1b9947e5b72e" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:fdbb49fba13eeff906d456aa50d64ff767985a495b6dfc546395811409143d05" [label=""];
  "sha256:4492a62d5b0cb9bcd62f7f461774647e2e4e8496f72ac2f59efa8f0daf480e56" -> "sha256:fdbb49fba13eeff906d456aa50d64ff767985a495b6dfc546395811409143d05" [label=""];
  "sha256:fdbb49fba13eeff906d456aa50d64ff767985a495b6dfc546395811409143d05" -> "sha256:8819abe3e16c692471be2ec2a77b9b95799033d191f5448c39fe1b9947e5b72e" [label=""];
}

