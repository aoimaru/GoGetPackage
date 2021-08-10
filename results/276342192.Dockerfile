[app/sources/276342192.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:c87ae2cdfa1d524c86008fa186f3a863e2b57fa9ee2f400debd9c35d9ebfe411" [label="/bin/sh -c apk add --update git bash openssh" shape="box"];
  "sha256:2bac9a669345031d397ea5ac15a8bd08225c5fa9221075eea3e249cf5907b061" [label="mkdir{path=/src/github.com/hashicorp/terraform}" shape="note"];
  "sha256:c8f07fd3b2ff0a80d84ec24bb3e7dcc7ffca39a93455c2be563ef6b75689ffac" [label="local://context" shape="ellipse"];
  "sha256:355b407b02891d07f15a2f55de8331f930ee0421b962575b54e63ec4789c0072" [label="copy{src=/, dest=/src/github.com/hashicorp/terraform/}" shape="note"];
  "sha256:2334008eef0945c8a109d9ddbb7a703ad957e16493c144810735a0103c70d023" [label="/bin/sh -c /bin/bash scripts/build.sh" shape="box"];
  "sha256:67ea00eb1a65f26f17b222f2d7a2cfbe7a129951fd7a9580582c86884b942a7b" [label="mkdir{path=/src/github.com/hashicorp/terraform}" shape="note"];
  "sha256:59b64a6dab19cc72d861b3991e27740ac44d99ae6a2ceb76c04ec49406aa33a5" [label="sha256:59b64a6dab19cc72d861b3991e27740ac44d99ae6a2ceb76c04ec49406aa33a5" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:c87ae2cdfa1d524c86008fa186f3a863e2b57fa9ee2f400debd9c35d9ebfe411" [label=""];
  "sha256:c87ae2cdfa1d524c86008fa186f3a863e2b57fa9ee2f400debd9c35d9ebfe411" -> "sha256:2bac9a669345031d397ea5ac15a8bd08225c5fa9221075eea3e249cf5907b061" [label=""];
  "sha256:2bac9a669345031d397ea5ac15a8bd08225c5fa9221075eea3e249cf5907b061" -> "sha256:355b407b02891d07f15a2f55de8331f930ee0421b962575b54e63ec4789c0072" [label=""];
  "sha256:c8f07fd3b2ff0a80d84ec24bb3e7dcc7ffca39a93455c2be563ef6b75689ffac" -> "sha256:355b407b02891d07f15a2f55de8331f930ee0421b962575b54e63ec4789c0072" [label=""];
  "sha256:355b407b02891d07f15a2f55de8331f930ee0421b962575b54e63ec4789c0072" -> "sha256:2334008eef0945c8a109d9ddbb7a703ad957e16493c144810735a0103c70d023" [label=""];
  "sha256:2334008eef0945c8a109d9ddbb7a703ad957e16493c144810735a0103c70d023" -> "sha256:67ea00eb1a65f26f17b222f2d7a2cfbe7a129951fd7a9580582c86884b942a7b" [label=""];
  "sha256:67ea00eb1a65f26f17b222f2d7a2cfbe7a129951fd7a9580582c86884b942a7b" -> "sha256:59b64a6dab19cc72d861b3991e27740ac44d99ae6a2ceb76c04ec49406aa33a5" [label=""];
}

