[app/sources/151381022.Dockerfile]
digraph {
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" [label="docker-image://docker.io/library/haproxy:1.8" shape="ellipse"];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:6f20a19149a9a7327b7bef005050c17159500191f3a6a66d2aaa5bfb6901374a" [label="local://context" shape="ellipse"];
  "sha256:a57bdb0aaf58f1a37dfdc784fd3058d460a40b7f996653074959f7cbeb885358" [label="copy{src=/haproxy.conf, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:d57a244b47c310f32f3d99792ffe6c79aa31c11d09649efae8136a2bc7ca73a4" [label="sha256:d57a244b47c310f32f3d99792ffe6c79aa31c11d09649efae8136a2bc7ca73a4" shape="plaintext"];
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" -> "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label=""];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" -> "sha256:a57bdb0aaf58f1a37dfdc784fd3058d460a40b7f996653074959f7cbeb885358" [label=""];
  "sha256:6f20a19149a9a7327b7bef005050c17159500191f3a6a66d2aaa5bfb6901374a" -> "sha256:a57bdb0aaf58f1a37dfdc784fd3058d460a40b7f996653074959f7cbeb885358" [label=""];
  "sha256:a57bdb0aaf58f1a37dfdc784fd3058d460a40b7f996653074959f7cbeb885358" -> "sha256:d57a244b47c310f32f3d99792ffe6c79aa31c11d09649efae8136a2bc7ca73a4" [label=""];
}

