[app/sources/334938949.Dockerfile]
digraph {
  "sha256:8674df8c37b64c27d6801dd8878816aeea1a40fd669a09c04a78ea40d6dd7c1f" [label="local://context" shape="ellipse"];
  "sha256:722d3b2ef498d9f8d4577e43e129feaded68215762b2b769a06d19a2e3751562" [label="docker-image://docker.io/appsvcorg/nginx-fpm:0.2" shape="ellipse"];
  "sha256:a6fbce71b11c8c16f57111e256da819392a419367f1714fd9b65ffcccf4d40c8" [label="/bin/sh -c mkdir -p $DOCKER_BUILD_HOME" shape="box"];
  "sha256:12ee17d01c2662b8208806f352d064e06986f2f8c4806d6e7efb835d16e400be" [label="mkdir{path=/dockerbuild}" shape="note"];
  "sha256:79ab49446b9cdef2e482ae3c93615ffc2442b9ed7597cef1269e423afa1cae94" [label="/bin/sh -c mkdir -p $DRUPAL_SOURCE" shape="box"];
  "sha256:40b2c28c7033c5f25d6f0f78e1173d6c8d7b217bef02cd947a70615b4dd2b233" [label="copy{src=/drupal.tar.gz, dest=/usr/src/drupal/}" shape="note"];
  "sha256:8d39fa21941dd8597b4a6603010dc1553e0fa197ec33069f894dc03932f5d30f" [label="mkdir{path=/home/site/wwwroot}" shape="note"];
  "sha256:80b57a364fdb0c6eef11bd2c32471c6d9f85683c5aa62117e0cbd4965d570157" [label="/bin/sh -c rm -rf $DOCKER_BUILD_HOME" shape="box"];
  "sha256:226a4c49717fe0e6c3033f2348fb2becbad64c597a49b5ac50cb82125569f7ca" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:351ed0ace69a606fde645c2f0fac935c1962c2620f1dd538179ba264f12877c9" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:f899448b152404f291ed3427c1a026ea9698739c5a3cdc63e156107a3246c8e5" [label="sha256:f899448b152404f291ed3427c1a026ea9698739c5a3cdc63e156107a3246c8e5" shape="plaintext"];
  "sha256:722d3b2ef498d9f8d4577e43e129feaded68215762b2b769a06d19a2e3751562" -> "sha256:a6fbce71b11c8c16f57111e256da819392a419367f1714fd9b65ffcccf4d40c8" [label=""];
  "sha256:a6fbce71b11c8c16f57111e256da819392a419367f1714fd9b65ffcccf4d40c8" -> "sha256:12ee17d01c2662b8208806f352d064e06986f2f8c4806d6e7efb835d16e400be" [label=""];
  "sha256:12ee17d01c2662b8208806f352d064e06986f2f8c4806d6e7efb835d16e400be" -> "sha256:79ab49446b9cdef2e482ae3c93615ffc2442b9ed7597cef1269e423afa1cae94" [label=""];
  "sha256:79ab49446b9cdef2e482ae3c93615ffc2442b9ed7597cef1269e423afa1cae94" -> "sha256:40b2c28c7033c5f25d6f0f78e1173d6c8d7b217bef02cd947a70615b4dd2b233" [label=""];
  "sha256:8674df8c37b64c27d6801dd8878816aeea1a40fd669a09c04a78ea40d6dd7c1f" -> "sha256:40b2c28c7033c5f25d6f0f78e1173d6c8d7b217bef02cd947a70615b4dd2b233" [label=""];
  "sha256:40b2c28c7033c5f25d6f0f78e1173d6c8d7b217bef02cd947a70615b4dd2b233" -> "sha256:8d39fa21941dd8597b4a6603010dc1553e0fa197ec33069f894dc03932f5d30f" [label=""];
  "sha256:8d39fa21941dd8597b4a6603010dc1553e0fa197ec33069f894dc03932f5d30f" -> "sha256:80b57a364fdb0c6eef11bd2c32471c6d9f85683c5aa62117e0cbd4965d570157" [label=""];
  "sha256:80b57a364fdb0c6eef11bd2c32471c6d9f85683c5aa62117e0cbd4965d570157" -> "sha256:226a4c49717fe0e6c3033f2348fb2becbad64c597a49b5ac50cb82125569f7ca" [label=""];
  "sha256:8674df8c37b64c27d6801dd8878816aeea1a40fd669a09c04a78ea40d6dd7c1f" -> "sha256:226a4c49717fe0e6c3033f2348fb2becbad64c597a49b5ac50cb82125569f7ca" [label=""];
  "sha256:226a4c49717fe0e6c3033f2348fb2becbad64c597a49b5ac50cb82125569f7ca" -> "sha256:351ed0ace69a606fde645c2f0fac935c1962c2620f1dd538179ba264f12877c9" [label=""];
  "sha256:351ed0ace69a606fde645c2f0fac935c1962c2620f1dd538179ba264f12877c9" -> "sha256:f899448b152404f291ed3427c1a026ea9698739c5a3cdc63e156107a3246c8e5" [label=""];
}

