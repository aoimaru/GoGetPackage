[app/sources/307127794.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" [label="/bin/sh -c yum install -y wget" shape="box"];
  "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" [label="/bin/sh -c wget https://bintray.com/deepstreamio/rpm/rpm -O /etc/yum.repos.d/bintray-deepstreamio-rpm.repo" shape="box"];
  "sha256:a268b39cb30d420f645adb6100e008442a4f93731d56a3ff8ddd42e4857223ea" [label="/bin/sh -c yum install -y deepstream.io-%VERSION%" shape="box"];
  "sha256:3ba77419dae7466abf2481e3d19b564ae51bfeda78812eaff6a0c8b8aeae5733" [label="/bin/sh -c deepstream install storage postgres &&     deepstream install storage elasticsearch &&     deepstream install storage mongodb &&     deepstream install storage rethinkdb &&     deepstream install cache redis &&     deepstream install cache hazelcast &&     deepstream install cache memcached" shape="box"];
  "sha256:f3d1187282404c822cbf622f173c03e596ee1b615a41e93636bdca064890cd57" [label="sha256:f3d1187282404c822cbf622f173c03e596ee1b615a41e93636bdca064890cd57" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" [label=""];
  "sha256:679ccda66dbd1de7da9f95cde2c1753d87649fb505d0aaa3f279a7df2450992e" -> "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" [label=""];
  "sha256:7e8a799c19e0ea2a5484585407b97fd75e868345eafe2835a4df61efc65190aa" -> "sha256:a268b39cb30d420f645adb6100e008442a4f93731d56a3ff8ddd42e4857223ea" [label=""];
  "sha256:a268b39cb30d420f645adb6100e008442a4f93731d56a3ff8ddd42e4857223ea" -> "sha256:3ba77419dae7466abf2481e3d19b564ae51bfeda78812eaff6a0c8b8aeae5733" [label=""];
  "sha256:3ba77419dae7466abf2481e3d19b564ae51bfeda78812eaff6a0c8b8aeae5733" -> "sha256:f3d1187282404c822cbf622f173c03e596ee1b615a41e93636bdca064890cd57" [label=""];
}

