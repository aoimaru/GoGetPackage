[app/sources/228512019.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:b930e3d43a030d92bcced2d1726f837bbc373cec7c7751942dc90839b250ed36" [label="/bin/sh -c mkdir /test_go" shape="box"];
  "sha256:eb7ad7a7bf8d0d0744b726116404d466cfc8c8040fdf1af65491d9ab7e29b3f2" [label="local://context" shape="ellipse"];
  "sha256:def0bbb82da7a30ba9d405b4e006dc71ff4f54197d96ad04af39757638bc9359" [label="copy{src=/test_expvar.go, dest=/test_go}" shape="note"];
  "sha256:3226fe01f4da5b3a02daa07f6821823d55b5b770ceba7ca5e67e07f2e9f4e4e1" [label="sha256:3226fe01f4da5b3a02daa07f6821823d55b5b770ceba7ca5e67e07f2e9f4e4e1" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:b930e3d43a030d92bcced2d1726f837bbc373cec7c7751942dc90839b250ed36" [label=""];
  "sha256:b930e3d43a030d92bcced2d1726f837bbc373cec7c7751942dc90839b250ed36" -> "sha256:def0bbb82da7a30ba9d405b4e006dc71ff4f54197d96ad04af39757638bc9359" [label=""];
  "sha256:eb7ad7a7bf8d0d0744b726116404d466cfc8c8040fdf1af65491d9ab7e29b3f2" -> "sha256:def0bbb82da7a30ba9d405b4e006dc71ff4f54197d96ad04af39757638bc9359" [label=""];
  "sha256:def0bbb82da7a30ba9d405b4e006dc71ff4f54197d96ad04af39757638bc9359" -> "sha256:3226fe01f4da5b3a02daa07f6821823d55b5b770ceba7ca5e67e07f2e9f4e4e1" [label=""];
}

