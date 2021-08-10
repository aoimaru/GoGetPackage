[app/sources/252779702.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:4f93c7f9bce109a34cf0eb252b710fe5b1f70e8eed1948c68eed983299d5e6c1" [label="/bin/sh -c yum install -y epel-release && yum install -y ruby ruby-devel nginx nodejs && yum clean all -y" shape="box"];
  "sha256:609ba2a80f521dbf3bfec741f7c2c4bdb0ebb1a49994aed8792d31bc857b7306" [label="/bin/sh -c gem install jekyll -v 3.2.1" shape="box"];
  "sha256:5130a3390d1f79fd2848a12136c6b365ed56d9d7b048ef94987a3412c25b253f" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:466db7a7a4d3e90d740f4e2aa4706cd80f0289a73f6b54cc01cc686178bd9f02" [label="local://context" shape="ellipse"];
  "sha256:6481eca210e74b6a216b311b87447b5df3ab0502636ec61179f19894201c6098" [label="copy{src=/.s2i/bin, dest=/usr/libexec/s2i}" shape="note"];
  "sha256:fbef0945cb03c89ba5652f0fb300ef59bee9ab33a509021716b837d5f4da5f22" [label="/bin/sh -c mkdir -p /opt/app-root/etc/nginx && mkdir -p /opt/app-root/var/run/nginx && mkdir -p /opt/app-root/var/log/nginx && mkdir -p /opt/app-root/var/lib/nginx/tmp" shape="box"];
  "sha256:f8700c462d4e47eb350123997d67cdecc8825013576d50adabac75545fcb8832" [label="copy{src=/etc, dest=/opt/app-root/etc}" shape="note"];
  "sha256:9d5f4b6c8be79df6e49c303fcd0aab910069991605f5f8fd0288a88427aee2e5" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/error.log && ln -sf /dev/stdout /opt/app-root/var/log/nginx/access.log && ln -sf /dev/stderr /opt/app-root/var/log/nginx/error.log" shape="box"];
  "sha256:3d7df478d12e4624088f1ad786af15b7e5fb8db6d3548ca1fd4d3042de57b27c" [label="/bin/sh -c chown -R 1001:0 /opt/app-root && chmod -R og+rwx /opt/app-root" shape="box"];
  "sha256:ac3d647c6db6032023bda119224d11cf76dd45ff99d92a4d51ef605f7372dfb1" [label="sha256:ac3d647c6db6032023bda119224d11cf76dd45ff99d92a4d51ef605f7372dfb1" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:4f93c7f9bce109a34cf0eb252b710fe5b1f70e8eed1948c68eed983299d5e6c1" [label=""];
  "sha256:4f93c7f9bce109a34cf0eb252b710fe5b1f70e8eed1948c68eed983299d5e6c1" -> "sha256:609ba2a80f521dbf3bfec741f7c2c4bdb0ebb1a49994aed8792d31bc857b7306" [label=""];
  "sha256:609ba2a80f521dbf3bfec741f7c2c4bdb0ebb1a49994aed8792d31bc857b7306" -> "sha256:5130a3390d1f79fd2848a12136c6b365ed56d9d7b048ef94987a3412c25b253f" [label=""];
  "sha256:5130a3390d1f79fd2848a12136c6b365ed56d9d7b048ef94987a3412c25b253f" -> "sha256:6481eca210e74b6a216b311b87447b5df3ab0502636ec61179f19894201c6098" [label=""];
  "sha256:466db7a7a4d3e90d740f4e2aa4706cd80f0289a73f6b54cc01cc686178bd9f02" -> "sha256:6481eca210e74b6a216b311b87447b5df3ab0502636ec61179f19894201c6098" [label=""];
  "sha256:6481eca210e74b6a216b311b87447b5df3ab0502636ec61179f19894201c6098" -> "sha256:fbef0945cb03c89ba5652f0fb300ef59bee9ab33a509021716b837d5f4da5f22" [label=""];
  "sha256:fbef0945cb03c89ba5652f0fb300ef59bee9ab33a509021716b837d5f4da5f22" -> "sha256:f8700c462d4e47eb350123997d67cdecc8825013576d50adabac75545fcb8832" [label=""];
  "sha256:466db7a7a4d3e90d740f4e2aa4706cd80f0289a73f6b54cc01cc686178bd9f02" -> "sha256:f8700c462d4e47eb350123997d67cdecc8825013576d50adabac75545fcb8832" [label=""];
  "sha256:f8700c462d4e47eb350123997d67cdecc8825013576d50adabac75545fcb8832" -> "sha256:9d5f4b6c8be79df6e49c303fcd0aab910069991605f5f8fd0288a88427aee2e5" [label=""];
  "sha256:9d5f4b6c8be79df6e49c303fcd0aab910069991605f5f8fd0288a88427aee2e5" -> "sha256:3d7df478d12e4624088f1ad786af15b7e5fb8db6d3548ca1fd4d3042de57b27c" [label=""];
  "sha256:3d7df478d12e4624088f1ad786af15b7e5fb8db6d3548ca1fd4d3042de57b27c" -> "sha256:ac3d647c6db6032023bda119224d11cf76dd45ff99d92a4d51ef605f7372dfb1" [label=""];
}

