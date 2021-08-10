[app/sources/401870421.Dockerfile]
digraph {
  "sha256:dc6d5bdc6f1bbf2d0061751d7e64abd5cfdc170a854626c7b14b40ce9c07d96a" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:410255486b30f2cdcfaf0839ed35b0663c0f0b823c6cff5e2c2117fffcfa9282" [label="/bin/sh -c apt-get install git" shape="box"];
  "sha256:5703cd8eb0d58d3d3016087ca5f06d24557f620810ec63d019176a2aa6e2984d" [label="/bin/sh -c useradd -ms /bin/bash geotrellis" shape="box"];
  "sha256:769fb185096b8b450b255b8e01f326ca9caec0f56cf40ad49f554646db0ffa37" [label="/bin/sh -c mkdir /home/geotrellis/.ivy2" shape="box"];
  "sha256:7d8ad27364037103b345b9db1493c0ff44c7a3f987eb42f6015562df6415e675" [label="copy{src=/gpg.sbt, dest=/home/geotrellis/.sbt/1.0/plugins/gpg.sbt}" shape="note"];
  "sha256:6dfd56f6ed419ec3c57b0bbfb9a5d6458fa20c80397baed7afed72da64a3ebeb" [label="/bin/sh -c chown -R geotrellis:geotrellis /home/geotrellis" shape="box"];
  "sha256:4869fae15ccf1e75f6e6b52dbd8c625a7149e4e745f9145920f74e099ae53059" [label="/bin/sh -c set -x     && cd /home/geotrellis     && git clone https://github.com/locationtech/geotrellis /home/geotrellis/geotrellis     && cd /home/geotrellis/geotrellis     && git checkout $RELEASE_TAG" shape="box"];
  "sha256:75d7324e6e2182a53e277065ab7577212a6c3610ffbdbc878289250ca9cf625b" [label="mkdir{path=/home/geotrellis/geotrellis}" shape="note"];
  "sha256:d766ae99efa405be5b6b556a53e56b569c2b6a535c379c8bfa8435b4d151ce58" [label="sha256:d766ae99efa405be5b6b556a53e56b569c2b6a535c379c8bfa8435b4d151ce58" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:410255486b30f2cdcfaf0839ed35b0663c0f0b823c6cff5e2c2117fffcfa9282" [label=""];
  "sha256:410255486b30f2cdcfaf0839ed35b0663c0f0b823c6cff5e2c2117fffcfa9282" -> "sha256:5703cd8eb0d58d3d3016087ca5f06d24557f620810ec63d019176a2aa6e2984d" [label=""];
  "sha256:5703cd8eb0d58d3d3016087ca5f06d24557f620810ec63d019176a2aa6e2984d" -> "sha256:769fb185096b8b450b255b8e01f326ca9caec0f56cf40ad49f554646db0ffa37" [label=""];
  "sha256:769fb185096b8b450b255b8e01f326ca9caec0f56cf40ad49f554646db0ffa37" -> "sha256:7d8ad27364037103b345b9db1493c0ff44c7a3f987eb42f6015562df6415e675" [label=""];
  "sha256:dc6d5bdc6f1bbf2d0061751d7e64abd5cfdc170a854626c7b14b40ce9c07d96a" -> "sha256:7d8ad27364037103b345b9db1493c0ff44c7a3f987eb42f6015562df6415e675" [label=""];
  "sha256:7d8ad27364037103b345b9db1493c0ff44c7a3f987eb42f6015562df6415e675" -> "sha256:6dfd56f6ed419ec3c57b0bbfb9a5d6458fa20c80397baed7afed72da64a3ebeb" [label=""];
  "sha256:6dfd56f6ed419ec3c57b0bbfb9a5d6458fa20c80397baed7afed72da64a3ebeb" -> "sha256:4869fae15ccf1e75f6e6b52dbd8c625a7149e4e745f9145920f74e099ae53059" [label=""];
  "sha256:4869fae15ccf1e75f6e6b52dbd8c625a7149e4e745f9145920f74e099ae53059" -> "sha256:75d7324e6e2182a53e277065ab7577212a6c3610ffbdbc878289250ca9cf625b" [label=""];
  "sha256:75d7324e6e2182a53e277065ab7577212a6c3610ffbdbc878289250ca9cf625b" -> "sha256:d766ae99efa405be5b6b556a53e56b569c2b6a535c379c8bfa8435b4d151ce58" [label=""];
}

