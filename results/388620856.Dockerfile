[app/sources/388620856.Dockerfile]
digraph {
  "sha256:0c17a9617dee92de419b37948aa4f445663cb0785cfb5c836d585763f8164544" [label="docker-image://docker.io/alanz/haskell-platform-2013.2-deb64:latest" shape="ellipse"];
  "sha256:3ba927b973322fda26f0c4da861c9addfee643461775d0980de00ebddf2ec49c" [label="/bin/sh -c echo \"deb http://cdn.debian.net/debian/ testing main non-free contrib\" >> /etc/apt/sources.list" shape="box"];
  "sha256:8e045b069fc9441b4e63972b52e4b9e10acd5fc6f364e60b7fec74094c4895c0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ef4da7e375c3f809b9f19235509ec15d3ecb006be06c6e45f5b28cca78e6e34c" [label="/bin/sh -c apt-get -y dist-upgrade" shape="box"];
  "sha256:f0c9b33204d4bd09aefc9d5c15fac3fbb4a2dcb525c1a61a0946ba2865bfbd46" [label="/bin/sh -c apt-get -y install ssh openssh-server" shape="box"];
  "sha256:ce50e8f9c204a70a57e7ca88c31ddc9db14f15b6e3bba5e926b8d2b2145ffc21" [label="/bin/sh -c apt-get -y install sudo" shape="box"];
  "sha256:a5bfa412697b882b8037393a139ae2648463e267e53913eeb1ad088265d51c50" [label="/bin/sh -c apt-get -y install git" shape="box"];
  "sha256:6b91c120f176a90046862ff315720f3524096b4021b2f7a6077a76a49134478b" [label="/bin/sh -c apt-get -y install emacs24" shape="box"];
  "sha256:6e1ca7c4c287ecc5ea3f07e2f19852ac6617da821574fd8ec7e5380964b9054f" [label="local://context" shape="ellipse"];
  "sha256:423c270bbd15b3faa376b23f74b80d31db17d84665d2fc40011e4a832a29c6e1" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:cc4b9c0282813ed1d8f7616f5cdf1bce439544af090f51833a076d3228c755ea" [label="/bin/sh -c /src/setup.sh" shape="box"];
  "sha256:413d31d9f2d9e0075d93e465c85b0fae088c8abf69568cb51745f4932ff5e8f4" [label="sha256:413d31d9f2d9e0075d93e465c85b0fae088c8abf69568cb51745f4932ff5e8f4" shape="plaintext"];
  "sha256:0c17a9617dee92de419b37948aa4f445663cb0785cfb5c836d585763f8164544" -> "sha256:3ba927b973322fda26f0c4da861c9addfee643461775d0980de00ebddf2ec49c" [label=""];
  "sha256:3ba927b973322fda26f0c4da861c9addfee643461775d0980de00ebddf2ec49c" -> "sha256:8e045b069fc9441b4e63972b52e4b9e10acd5fc6f364e60b7fec74094c4895c0" [label=""];
  "sha256:8e045b069fc9441b4e63972b52e4b9e10acd5fc6f364e60b7fec74094c4895c0" -> "sha256:ef4da7e375c3f809b9f19235509ec15d3ecb006be06c6e45f5b28cca78e6e34c" [label=""];
  "sha256:ef4da7e375c3f809b9f19235509ec15d3ecb006be06c6e45f5b28cca78e6e34c" -> "sha256:f0c9b33204d4bd09aefc9d5c15fac3fbb4a2dcb525c1a61a0946ba2865bfbd46" [label=""];
  "sha256:f0c9b33204d4bd09aefc9d5c15fac3fbb4a2dcb525c1a61a0946ba2865bfbd46" -> "sha256:ce50e8f9c204a70a57e7ca88c31ddc9db14f15b6e3bba5e926b8d2b2145ffc21" [label=""];
  "sha256:ce50e8f9c204a70a57e7ca88c31ddc9db14f15b6e3bba5e926b8d2b2145ffc21" -> "sha256:a5bfa412697b882b8037393a139ae2648463e267e53913eeb1ad088265d51c50" [label=""];
  "sha256:a5bfa412697b882b8037393a139ae2648463e267e53913eeb1ad088265d51c50" -> "sha256:6b91c120f176a90046862ff315720f3524096b4021b2f7a6077a76a49134478b" [label=""];
  "sha256:6b91c120f176a90046862ff315720f3524096b4021b2f7a6077a76a49134478b" -> "sha256:423c270bbd15b3faa376b23f74b80d31db17d84665d2fc40011e4a832a29c6e1" [label=""];
  "sha256:6e1ca7c4c287ecc5ea3f07e2f19852ac6617da821574fd8ec7e5380964b9054f" -> "sha256:423c270bbd15b3faa376b23f74b80d31db17d84665d2fc40011e4a832a29c6e1" [label=""];
  "sha256:423c270bbd15b3faa376b23f74b80d31db17d84665d2fc40011e4a832a29c6e1" -> "sha256:cc4b9c0282813ed1d8f7616f5cdf1bce439544af090f51833a076d3228c755ea" [label=""];
  "sha256:cc4b9c0282813ed1d8f7616f5cdf1bce439544af090f51833a076d3228c755ea" -> "sha256:413d31d9f2d9e0075d93e465c85b0fae088c8abf69568cb51745f4932ff5e8f4" [label=""];
}

