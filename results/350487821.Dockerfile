[app/sources/350487821.Dockerfile]
digraph {
  "sha256:44944a1bc841a7294b52f0dcd2539275e68e849f4215970f78d2f28b6406adc7" [label="docker-image://docker.io/blockbridge/volumectl-base:latest" shape="ellipse"];
  "sha256:8c11f974e1ba8208a86e8849f95713d4e7049511a35bd1dde8c0c67547509460" [label="/bin/sh -c bundle config --global frozen 1" shape="box"];
  "sha256:2c85c20b6c12e0bc60383fc10ba4d6d5e52bfd58b446254c931aaee768d799f1" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:f8b1949fbaa5f6325bad1e4acf6c8cf23db836d6920814631c1c9e01a8caf418" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" [label="local://context" shape="ellipse"];
  "sha256:6061af7f092def7274064fc7e03e3bf6171e623b143c93bac06a182e440b3132" [label="copy{src=/volumectl/Gemfile, dest=/usr/src/app}" shape="note"];
  "sha256:e3c346730b946783e937993929d564e497a3beb23c5c20bc864cbf4ed7523f8b" [label="copy{src=/volumectl/Gemfile.lock, dest=/usr/src/app}" shape="note"];
  "sha256:edafddb60eb4c78bffa54426c964d51632fd189964f1cbf15c42b6ffba8f3f86" [label="copy{src=/gem-cleaner.sh, dest=/gem-cleaner.sh}" shape="note"];
  "sha256:10fc18e21b093a76a3a2f9b00ead6552e0a762ca98decbb31a00a676fff351bd" [label="/bin/sh -c apk --no-cache add --virtual build-deps git bash bison gcc g++ git curl     openssl-dev gdb gdbm-dev linux-headers libffi-dev zlib-dev yaml-dev     readline-dev ncurses-dev tar make     && bundle install --standalone     && apk del build-deps     && /gem-cleaner.sh" shape="box"];
  "sha256:ff352597ae4bd0e6cf8adfc4c8369208beae71c6b6089f2f4f3dfc88e76082f0" [label="copy{src=/exe, dest=/usr/src/app/exe}" shape="note"];
  "sha256:a48e2da98629f6aea1af61c650b825168080b32d7d5d5e22ee7acd95c76420e4" [label="copy{src=/volumectl, dest=/usr/src/app/volumectl}" shape="note"];
  "sha256:62f46469bb8846a8f29438572cbf7dc60613406d2c02bb45ec3240d9367b8360" [label="copy{src=/volume_driver/helpers, dest=/usr/src/app/volume_driver/helpers}" shape="note"];
  "sha256:c756319c33e13cc19ae496e2464fc814e21b1255fee486340330b12896bc3aa1" [label="copy{src=/volume_driver/help.rb, dest=/usr/src/app/volume_driver/help.rb}" shape="note"];
  "sha256:9cc5dc5ca1489346d20651d9767215b9539b50d5b6a389731fd374be48ced196" [label="sha256:9cc5dc5ca1489346d20651d9767215b9539b50d5b6a389731fd374be48ced196" shape="plaintext"];
  "sha256:44944a1bc841a7294b52f0dcd2539275e68e849f4215970f78d2f28b6406adc7" -> "sha256:8c11f974e1ba8208a86e8849f95713d4e7049511a35bd1dde8c0c67547509460" [label=""];
  "sha256:8c11f974e1ba8208a86e8849f95713d4e7049511a35bd1dde8c0c67547509460" -> "sha256:2c85c20b6c12e0bc60383fc10ba4d6d5e52bfd58b446254c931aaee768d799f1" [label=""];
  "sha256:2c85c20b6c12e0bc60383fc10ba4d6d5e52bfd58b446254c931aaee768d799f1" -> "sha256:f8b1949fbaa5f6325bad1e4acf6c8cf23db836d6920814631c1c9e01a8caf418" [label=""];
  "sha256:f8b1949fbaa5f6325bad1e4acf6c8cf23db836d6920814631c1c9e01a8caf418" -> "sha256:6061af7f092def7274064fc7e03e3bf6171e623b143c93bac06a182e440b3132" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:6061af7f092def7274064fc7e03e3bf6171e623b143c93bac06a182e440b3132" [label=""];
  "sha256:6061af7f092def7274064fc7e03e3bf6171e623b143c93bac06a182e440b3132" -> "sha256:e3c346730b946783e937993929d564e497a3beb23c5c20bc864cbf4ed7523f8b" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:e3c346730b946783e937993929d564e497a3beb23c5c20bc864cbf4ed7523f8b" [label=""];
  "sha256:e3c346730b946783e937993929d564e497a3beb23c5c20bc864cbf4ed7523f8b" -> "sha256:edafddb60eb4c78bffa54426c964d51632fd189964f1cbf15c42b6ffba8f3f86" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:edafddb60eb4c78bffa54426c964d51632fd189964f1cbf15c42b6ffba8f3f86" [label=""];
  "sha256:edafddb60eb4c78bffa54426c964d51632fd189964f1cbf15c42b6ffba8f3f86" -> "sha256:10fc18e21b093a76a3a2f9b00ead6552e0a762ca98decbb31a00a676fff351bd" [label=""];
  "sha256:10fc18e21b093a76a3a2f9b00ead6552e0a762ca98decbb31a00a676fff351bd" -> "sha256:ff352597ae4bd0e6cf8adfc4c8369208beae71c6b6089f2f4f3dfc88e76082f0" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:ff352597ae4bd0e6cf8adfc4c8369208beae71c6b6089f2f4f3dfc88e76082f0" [label=""];
  "sha256:ff352597ae4bd0e6cf8adfc4c8369208beae71c6b6089f2f4f3dfc88e76082f0" -> "sha256:a48e2da98629f6aea1af61c650b825168080b32d7d5d5e22ee7acd95c76420e4" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:a48e2da98629f6aea1af61c650b825168080b32d7d5d5e22ee7acd95c76420e4" [label=""];
  "sha256:a48e2da98629f6aea1af61c650b825168080b32d7d5d5e22ee7acd95c76420e4" -> "sha256:62f46469bb8846a8f29438572cbf7dc60613406d2c02bb45ec3240d9367b8360" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:62f46469bb8846a8f29438572cbf7dc60613406d2c02bb45ec3240d9367b8360" [label=""];
  "sha256:62f46469bb8846a8f29438572cbf7dc60613406d2c02bb45ec3240d9367b8360" -> "sha256:c756319c33e13cc19ae496e2464fc814e21b1255fee486340330b12896bc3aa1" [label=""];
  "sha256:f045b515b1deb9ea52722d85cc2e35bfa3fce800e8326633747c367f9177324c" -> "sha256:c756319c33e13cc19ae496e2464fc814e21b1255fee486340330b12896bc3aa1" [label=""];
  "sha256:c756319c33e13cc19ae496e2464fc814e21b1255fee486340330b12896bc3aa1" -> "sha256:9cc5dc5ca1489346d20651d9767215b9539b50d5b6a389731fd374be48ced196" [label=""];
}

