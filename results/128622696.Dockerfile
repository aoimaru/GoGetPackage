[app/sources/128622696.Dockerfile]
digraph {
  "sha256:6f21ad59b47a12696920a8bfac08a716b56fac3c97bbc15c33876a184decf8c8" [label="docker-image://docker.io/library/rabbitmq:3.7.8" shape="ellipse"];
  "sha256:9f26a7705cd778314f93adeaa8c663ffc157e81434c11749aef0dd648412a55c" [label="/bin/sh -c rabbitmq-plugins enable rabbitmq_management" shape="box"];
  "sha256:d5e4ed256ad9e59ac61e8fd921c2f108167749636653882572d0587be5e6dc21" [label="sha256:d5e4ed256ad9e59ac61e8fd921c2f108167749636653882572d0587be5e6dc21" shape="plaintext"];
  "sha256:6f21ad59b47a12696920a8bfac08a716b56fac3c97bbc15c33876a184decf8c8" -> "sha256:9f26a7705cd778314f93adeaa8c663ffc157e81434c11749aef0dd648412a55c" [label=""];
  "sha256:9f26a7705cd778314f93adeaa8c663ffc157e81434c11749aef0dd648412a55c" -> "sha256:d5e4ed256ad9e59ac61e8fd921c2f108167749636653882572d0587be5e6dc21" [label=""];
}

