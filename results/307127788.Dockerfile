[app/sources/307127788.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" [label="/bin/sh -c yum install -y wget" shape="box"];
  "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" [label="/bin/sh -c wget https://bintray.com/deepstreamio/rpm/rpm -O /etc/yum.repos.d/bintray-deepstreamio-rpm.repo" shape="box"];
  "sha256:5a64d39b40f611fba4e2475f6e7a44a76e3b5de519c5e595df947795a2105977" [label="/bin/sh -c yum install -y deepstream.io-3.1.4" shape="box"];
  "sha256:7aed68658ab33e332857363527d8cbd49ef9f2b0af9bd33831ecd43f0a427a00" [label="/bin/sh -c deepstream install storage postgres &&     deepstream install storage elasticsearch &&     deepstream install storage mongodb &&     deepstream install storage rethinkdb &&     deepstream install cache redis &&     deepstream install cache hazelcast &&     deepstream install cache memcached" shape="box"];
  "sha256:e6c5307bd20bf46c3782d5c26a18285a42c4815348d329fba9e6bcb483cc4674" [label="sha256:e6c5307bd20bf46c3782d5c26a18285a42c4815348d329fba9e6bcb483cc4674" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" [label=""];
  "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" -> "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" [label=""];
  "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" -> "sha256:5a64d39b40f611fba4e2475f6e7a44a76e3b5de519c5e595df947795a2105977" [label=""];
  "sha256:5a64d39b40f611fba4e2475f6e7a44a76e3b5de519c5e595df947795a2105977" -> "sha256:7aed68658ab33e332857363527d8cbd49ef9f2b0af9bd33831ecd43f0a427a00" [label=""];
  "sha256:7aed68658ab33e332857363527d8cbd49ef9f2b0af9bd33831ecd43f0a427a00" -> "sha256:e6c5307bd20bf46c3782d5c26a18285a42c4815348d329fba9e6bcb483cc4674" [label=""];
}

