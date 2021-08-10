[app/sources/252788571.Dockerfile]
digraph {
  "sha256:616b965b8365dc210aff40c79fc3010ac1a367520355f58078826a4b66e0261e" [label="docker-image://docker.io/csanchez/jenkins-for-volumes:latest" shape="ellipse"];
  "sha256:2ddafee79a6ea13532043e205f8442e29fe64e44b4f32f52e8fd3e27cc3ed820" [label="local://context" shape="ellipse"];
  "sha256:14ea91deb83f13bfc04a3fae37c5181bde07043ab6585eaf92a5cdf438ef1096" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/plugins.txt}" shape="note"];
  "sha256:300a5f2712fd14b5b791d707758455c9f11559a9a9a9161a8e3ad74badcef08b" [label="/bin/sh -c /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt" shape="box"];
  "sha256:b904ea65f5162eb75d8593d5b5ea1b5c9ea059041214fbd45d31f3a84eb18b2c" [label="copy{src=/master-executors.groovy, dest=/usr/share/jenkins/ref/init.groovy.d/}" shape="note"];
  "sha256:253cc7c3471f1de583edf52206fa8f679289068b3be2964279e1d520c2ee5bf4" [label="sha256:253cc7c3471f1de583edf52206fa8f679289068b3be2964279e1d520c2ee5bf4" shape="plaintext"];
  "sha256:616b965b8365dc210aff40c79fc3010ac1a367520355f58078826a4b66e0261e" -> "sha256:14ea91deb83f13bfc04a3fae37c5181bde07043ab6585eaf92a5cdf438ef1096" [label=""];
  "sha256:2ddafee79a6ea13532043e205f8442e29fe64e44b4f32f52e8fd3e27cc3ed820" -> "sha256:14ea91deb83f13bfc04a3fae37c5181bde07043ab6585eaf92a5cdf438ef1096" [label=""];
  "sha256:14ea91deb83f13bfc04a3fae37c5181bde07043ab6585eaf92a5cdf438ef1096" -> "sha256:300a5f2712fd14b5b791d707758455c9f11559a9a9a9161a8e3ad74badcef08b" [label=""];
  "sha256:300a5f2712fd14b5b791d707758455c9f11559a9a9a9161a8e3ad74badcef08b" -> "sha256:b904ea65f5162eb75d8593d5b5ea1b5c9ea059041214fbd45d31f3a84eb18b2c" [label=""];
  "sha256:2ddafee79a6ea13532043e205f8442e29fe64e44b4f32f52e8fd3e27cc3ed820" -> "sha256:b904ea65f5162eb75d8593d5b5ea1b5c9ea059041214fbd45d31f3a84eb18b2c" [label=""];
  "sha256:b904ea65f5162eb75d8593d5b5ea1b5c9ea059041214fbd45d31f3a84eb18b2c" -> "sha256:253cc7c3471f1de583edf52206fa8f679289068b3be2964279e1d520c2ee5bf4" [label=""];
}

