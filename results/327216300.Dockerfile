[app/sources/327216300.Dockerfile]
digraph {
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" [label="docker-image://docker.io/library/haproxy:1.8" shape="ellipse"];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:c11f3607ef2036c9de393c4ce7b1aef1e2f5fc728b48733e76a72eef7939d4a4" [label="local://context" shape="ellipse"];
  "sha256:0b76821e96d858a6a32f1efad62d7adcf622bc4f12f5e5db6ee75502dd84b4c1" [label="copy{src=/haproxy.conf, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:b7af4782a3996e16895dd22df67ae69efe411fdb0d7ab9cbde11c30344167ca4" [label="sha256:b7af4782a3996e16895dd22df67ae69efe411fdb0d7ab9cbde11c30344167ca4" shape="plaintext"];
  "sha256:be7080794b04bbf9f5556a1d12c3535685d6dbdbd117c923a6db680d0eaa77a7" -> "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" [label=""];
  "sha256:244041740473422bdf8d2b61474f6ed7d3d3db400ea44037602e73e86d82a31e" -> "sha256:0b76821e96d858a6a32f1efad62d7adcf622bc4f12f5e5db6ee75502dd84b4c1" [label=""];
  "sha256:c11f3607ef2036c9de393c4ce7b1aef1e2f5fc728b48733e76a72eef7939d4a4" -> "sha256:0b76821e96d858a6a32f1efad62d7adcf622bc4f12f5e5db6ee75502dd84b4c1" [label=""];
  "sha256:0b76821e96d858a6a32f1efad62d7adcf622bc4f12f5e5db6ee75502dd84b4c1" -> "sha256:b7af4782a3996e16895dd22df67ae69efe411fdb0d7ab9cbde11c30344167ca4" [label=""];
}

