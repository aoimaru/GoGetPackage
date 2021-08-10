[app/sources/183510896.Dockerfile]
digraph {
  "sha256:9405d9f17b126917858bfb290d29ddd7f3dd4d32c22a61ed8c067047f3402455" [label="docker-image://docker.io/internavenue/centos-php:centos7" shape="ellipse"];
  "sha256:bee38f70a9dc7243974c45f13f32cc71a7d26261160e798ee337cf425033bca4" [label="/bin/sh -c yum -y install      git      python-pygments      ctags    &&    yum clean all" shape="box"];
  "sha256:904f296b71c548a6785c642a5c0aee147a37bf3f08ea2975d3885a69e48b7cd3" [label="/bin/sh -c mkdir -p /srv/www/phabricator &&   mkdir -p /srv/git/" shape="box"];
  "sha256:e6f9a907eee0ec1ee727873aa681441b3833ce17d6571e8cf7abdfcb656f8b8c" [label="local://context" shape="ellipse"];
  "sha256:39f72e8884d4279eb936262f01685c0b65d2ec3ed88ca8d239d82bcfdc151a23" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:c76b42d29fc2e944d255154a1ec17d22102cb09fe3ff9b07c2c5bee187337665" [label="/bin/sh -c chmod +x /scripts/start.sh" shape="box"];
  "sha256:7c8158cff7b8a14fbe413c2870376107c17897685143fd33b3b447fc0cd7899c" [label="/bin/sh -c touch /first_run" shape="box"];
  "sha256:634cf6c460bce7990c50937b95b29e8ae80015c09f8321e105f981b70a24266d" [label="sha256:634cf6c460bce7990c50937b95b29e8ae80015c09f8321e105f981b70a24266d" shape="plaintext"];
  "sha256:9405d9f17b126917858bfb290d29ddd7f3dd4d32c22a61ed8c067047f3402455" -> "sha256:bee38f70a9dc7243974c45f13f32cc71a7d26261160e798ee337cf425033bca4" [label=""];
  "sha256:bee38f70a9dc7243974c45f13f32cc71a7d26261160e798ee337cf425033bca4" -> "sha256:904f296b71c548a6785c642a5c0aee147a37bf3f08ea2975d3885a69e48b7cd3" [label=""];
  "sha256:904f296b71c548a6785c642a5c0aee147a37bf3f08ea2975d3885a69e48b7cd3" -> "sha256:39f72e8884d4279eb936262f01685c0b65d2ec3ed88ca8d239d82bcfdc151a23" [label=""];
  "sha256:e6f9a907eee0ec1ee727873aa681441b3833ce17d6571e8cf7abdfcb656f8b8c" -> "sha256:39f72e8884d4279eb936262f01685c0b65d2ec3ed88ca8d239d82bcfdc151a23" [label=""];
  "sha256:39f72e8884d4279eb936262f01685c0b65d2ec3ed88ca8d239d82bcfdc151a23" -> "sha256:c76b42d29fc2e944d255154a1ec17d22102cb09fe3ff9b07c2c5bee187337665" [label=""];
  "sha256:c76b42d29fc2e944d255154a1ec17d22102cb09fe3ff9b07c2c5bee187337665" -> "sha256:7c8158cff7b8a14fbe413c2870376107c17897685143fd33b3b447fc0cd7899c" [label=""];
  "sha256:7c8158cff7b8a14fbe413c2870376107c17897685143fd33b3b447fc0cd7899c" -> "sha256:634cf6c460bce7990c50937b95b29e8ae80015c09f8321e105f981b70a24266d" [label=""];
}

