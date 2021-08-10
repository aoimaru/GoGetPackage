[app/sources/291181279.Dockerfile]
digraph {
  "sha256:4c8500cea0e7e7359be30682b26ccb86cc7cd3c4215a05ce5038bbaf9966d5dd" [label="docker-image://docker.io/circleci/mysql:5.5.58@sha256:9e07c8412c881e64219b6d1e4d7811669b51158b97132a1e3bd78ee7f63cb7da" shape="ellipse"];
  "sha256:286f717bbd7b7aaa0dd3e665940030c8ef2f3446df834300d41f911d19e55e8b" [label="/bin/sh -c echo '\\n[mysqld]\\ndatadir = /dev/shm/mysql\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:ce7aacd974f973a48ab6c3d21ebc211c864e64d7fbfa158f7cecd7406f2e14b9" [label="sha256:ce7aacd974f973a48ab6c3d21ebc211c864e64d7fbfa158f7cecd7406f2e14b9" shape="plaintext"];
  "sha256:4c8500cea0e7e7359be30682b26ccb86cc7cd3c4215a05ce5038bbaf9966d5dd" -> "sha256:286f717bbd7b7aaa0dd3e665940030c8ef2f3446df834300d41f911d19e55e8b" [label=""];
  "sha256:286f717bbd7b7aaa0dd3e665940030c8ef2f3446df834300d41f911d19e55e8b" -> "sha256:ce7aacd974f973a48ab6c3d21ebc211c864e64d7fbfa158f7cecd7406f2e14b9" [label=""];
}

