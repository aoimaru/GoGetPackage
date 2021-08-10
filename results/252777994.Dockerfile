[app/sources/252777994.Dockerfile]
digraph {
  "sha256:5af152db4112ff6373fd3d4b8657fa2960f52371f04bc7cce6cf629ce0cc4e7d" [label="local://context" shape="ellipse"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" [label="docker-image://docker.io/library/maven:3.5-jdk-8-alpine" shape="ellipse"];
  "sha256:a00c3c0a01168b7fc859a81cbfed2f7734dac4edde4222bc6e5ca29ff890f519" [label="/bin/sh -c mkdir -p $BUILD_DIR" shape="box"];
  "sha256:b9aa4cf8d4d7fb8b5ba750f4838cd8385ea3db9331c72e606058b33a2c4ac6df" [label="mkdir{path=/build}" shape="note"];
  "sha256:1bd24d88f0b9cc50289021c982fdb917d954078c322e80439f8e760d24d4761b" [label="copy{src=/src, dest=/build/src}" shape="note"];
  "sha256:b9adef4404802e965e94a48f4cec6efe855aa115519e0877f8ab48a56eed3099" [label="copy{src=/pom.xml, dest=/build/},copy{src=/LICENSE.txt, dest=/build/}" shape="note"];
  "sha256:3e6ee889c00d7fd4eb63a4bcf4d0ebe5681b3be45725b13da38cd486c2954532" [label="/bin/sh -c mvn package" shape="box"];
  "sha256:c92cf937474c3bbec10678a9741b6694efacda722c9c0bb560253c8b6cd649ce" [label="/bin/sh -c mkdir -p $APP_DIR/config && cp $BUILD_DIR/target/classes/entrypoint.sh $APP_DIR && cp $RESOURCE_DIR/*.yml $APP_DIR/config && chmod u+x $APP_DIR/entrypoint.sh && cp $BUILD_DIR/target/rdap-ingressd*.jar $APP_DIR && rm -rf $BUILD_DIR" shape="box"];
  "sha256:c877022ffd9e8292074a3fd762e131f413e75a380889bfef682f37fd20f94da9" [label="mkdir{path=/app}" shape="note"];
  "sha256:2e0684d4ef3ac5c24b03fa52e6c44fbd7183e287b97b4e84a6a17ba5edb8d29a" [label="sha256:2e0684d4ef3ac5c24b03fa52e6c44fbd7183e287b97b4e84a6a17ba5edb8d29a" shape="plaintext"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" -> "sha256:a00c3c0a01168b7fc859a81cbfed2f7734dac4edde4222bc6e5ca29ff890f519" [label=""];
  "sha256:a00c3c0a01168b7fc859a81cbfed2f7734dac4edde4222bc6e5ca29ff890f519" -> "sha256:b9aa4cf8d4d7fb8b5ba750f4838cd8385ea3db9331c72e606058b33a2c4ac6df" [label=""];
  "sha256:b9aa4cf8d4d7fb8b5ba750f4838cd8385ea3db9331c72e606058b33a2c4ac6df" -> "sha256:1bd24d88f0b9cc50289021c982fdb917d954078c322e80439f8e760d24d4761b" [label=""];
  "sha256:5af152db4112ff6373fd3d4b8657fa2960f52371f04bc7cce6cf629ce0cc4e7d" -> "sha256:1bd24d88f0b9cc50289021c982fdb917d954078c322e80439f8e760d24d4761b" [label=""];
  "sha256:1bd24d88f0b9cc50289021c982fdb917d954078c322e80439f8e760d24d4761b" -> "sha256:b9adef4404802e965e94a48f4cec6efe855aa115519e0877f8ab48a56eed3099" [label=""];
  "sha256:5af152db4112ff6373fd3d4b8657fa2960f52371f04bc7cce6cf629ce0cc4e7d" -> "sha256:b9adef4404802e965e94a48f4cec6efe855aa115519e0877f8ab48a56eed3099" [label=""];
  "sha256:b9adef4404802e965e94a48f4cec6efe855aa115519e0877f8ab48a56eed3099" -> "sha256:3e6ee889c00d7fd4eb63a4bcf4d0ebe5681b3be45725b13da38cd486c2954532" [label=""];
  "sha256:3e6ee889c00d7fd4eb63a4bcf4d0ebe5681b3be45725b13da38cd486c2954532" -> "sha256:c92cf937474c3bbec10678a9741b6694efacda722c9c0bb560253c8b6cd649ce" [label=""];
  "sha256:c92cf937474c3bbec10678a9741b6694efacda722c9c0bb560253c8b6cd649ce" -> "sha256:c877022ffd9e8292074a3fd762e131f413e75a380889bfef682f37fd20f94da9" [label=""];
  "sha256:c877022ffd9e8292074a3fd762e131f413e75a380889bfef682f37fd20f94da9" -> "sha256:2e0684d4ef3ac5c24b03fa52e6c44fbd7183e287b97b4e84a6a17ba5edb8d29a" [label=""];
}

