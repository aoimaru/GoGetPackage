[app/sources/323215481.Dockerfile]
digraph {
  "sha256:fb1f58747cf8ece7bfa2a164299761b058a6f1614ad4f59525fb45a8f7608c1f" [label="docker-image://docker.io/library/ruby:2.5-alpine3.7" shape="ellipse"];
  "sha256:877ef8b884b7766b46f81e898261c0d54293586a7690694f4decc51dba9629f1" [label="/bin/sh -c apk add --no-cache libpq tzdata" shape="box"];
  "sha256:182ec8494b9ecdefc3c5c6feb84ed174155a6da3785cd8bd4a56d78656ce46f4" [label="mkdir{path=/usr/src/garrison}" shape="note"];
  "sha256:d170c1b408844b7f051ce6aa2c6d7fd60346474dcc6a122d3cf80d9f90892655" [label="/bin/sh -c apk add --no-cache libxml2-dev libxslt-dev build-base postgresql-dev yarn tzdata" shape="box"];
  "sha256:7a2b94d9ef85a43e70d9207a9299167beb4af907188d0f880ccfd90c80b7f673" [label="/bin/sh -c mkdir -p /usr/src/garrison" shape="box"];
  "sha256:90f98e1d98ea73427b48788a701aca2a9e4ade0e69772334ce3d3bbbb5c4c13c" [label="mkdir{path=/usr/src/garrison}" shape="note"];
  "sha256:2f2dd5b607587ce55a94ac1d48bd5484b4aaa58db269438d070ebe82f29f4493" [label="local://context" shape="ellipse"];
  "sha256:471562527af1ccafb13abc45f631194623f6cc20c902dec07b37c167cd718ae0" [label="copy{src=/Gemfile, dest=/usr/src/garrison/},copy{src=/Gemfile.lock, dest=/usr/src/garrison/}" shape="note"];
  "sha256:a208e50fc967032523ff4e716b399f1b1681638f64b1f9df86329bb8503269c7" [label="/bin/sh -c set -ex;   if [ \"$RAILS_ENV\" = \"production\" ]; then     bundle install --jobs \"$(getconf _NPROCESSORS_ONLN)\" --retry 5 --without test development;   elif [ \"$RAILS_ENV\" = \"development\" ]; then     bundle install --jobs \"$(getconf _NPROCESSORS_ONLN)\" --retry 5;   fi;" shape="box"];
  "sha256:e0b3e91378b647d7f3c64b7f360c4b3645c5e032cb4feafa0453fccd7b88236e" [label="/bin/sh -c rm /usr/local/bundle/cache/*.gem" shape="box"];
  "sha256:c49241c518c02f99553198970d0898cd21e32c31c2d5b98880b3f98e9eca348c" [label="copy{src=/package.json, dest=/usr/src/garrison/},copy{src=/yarn.lock, dest=/usr/src/garrison/}" shape="note"];
  "sha256:622e999de609fe27ff2fb6fbf878745820a6e4ad7bf034e87ff2632b519b6843" [label="/bin/sh -c set -ex;   if [ \"$RAILS_ENV\" = \"production\" ]; then     yarn install --frozen-lockfile --production && yarn cache clean;   elif [ \"$RAILS_ENV\" = \"development\" ]; then     yarn install --frozen-lockfile && yarn cache clean;   fi;" shape="box"];
  "sha256:68347c1948842472bf06f2b59de9a44b81e39d13b777eef39d66d5c66e23cd6e" [label="copy{src=/, dest=/usr/src/garrison}" shape="note"];
  "sha256:88a88a7c7ce7d4185f2748159336cce8bd569aee0ce0883c87843116364c149f" [label="/bin/sh -c SECRET_KEY_BASE=1 bundle exec rake assets:precompile" shape="box"];
  "sha256:709152b1d93e7707fd43a7eb4a17fd89561fba01bcb47f64b9d0b33ad3db54e7" [label="/bin/sh -c rm -rf /usr/src/garrison/app/assets" shape="box"];
  "sha256:c76997e97ded6790b9ce25e5dc2d2870a7c2a13126f4fa75f01a151c27153a5b" [label="/bin/sh -c rm -rf /usr/src/garrison/node_modules" shape="box"];
  "sha256:2a058a1127e3acc75e4ea0423221ce2f01922c3e47293dbb0bc129bcb8cd187a" [label="/bin/sh -c rm -rf /usr/src/garrison/tmp" shape="box"];
  "sha256:24ea88de8af930acfb03efcebf506642642fd13d992e59b7b99ebd2dbb2715bd" [label="/bin/sh -c find /usr/local/bundle -iname '*.o' -exec rm {} \\;" shape="box"];
  "sha256:98064d89b018ea2841685034a2b6d5224870ed22fa4fa7b54d4cfc0ee2c16ffb" [label="/bin/sh -c find /usr/local/bundle -iname '*.a' -exec rm {} \\;" shape="box"];
  "sha256:0da4e88e9d01b4bded6a7dd8d34c899ce56c5fadb961b7def092821adfab3745" [label="copy{src=/usr/local/bundle, dest=/usr/local/bundle}" shape="note"];
  "sha256:2f69c7f6da2e5a443fc5fc17a15005f825617eca012c256f3ad3bf1662b1bffe" [label="copy{src=/usr/src/garrison, dest=/usr/src/garrison}" shape="note"];
  "sha256:408109ed8e13976ee5617a26664504a65e849994b24d6534d8c0ab5e5cc4c6df" [label="/bin/sh -c set -ex;   if [ \"$RAILS_ENV\" = \"production\" ]; then     bundle install --without assets;  elif [ \"$RAILS_ENV\" = \"development\" ]; then     bundle install;    apk add --no-cache build-base nodejs;   fi;" shape="box"];
  "sha256:ff19183168db12cfc4a65c930432dfc70a3c0a6f36e21daacb1bc5e8c5e8dd2f" [label="/bin/sh -c echo $SOURCE_BRANCH >> /usr/src/garrison/source_branch" shape="box"];
  "sha256:c05c74b2fa70476c9a32b5cc4954258d9834862c15050b42a46d59963cec8c7b" [label="/bin/sh -c echo $SOURCE_COMMIT >> /usr/src/garrison/source_commit" shape="box"];
  "sha256:d2beb90f449aee70ebcca69d2f451180bae09722ee27a96949e080eaeac29d2f" [label="sha256:d2beb90f449aee70ebcca69d2f451180bae09722ee27a96949e080eaeac29d2f" shape="plaintext"];
  "sha256:fb1f58747cf8ece7bfa2a164299761b058a6f1614ad4f59525fb45a8f7608c1f" -> "sha256:877ef8b884b7766b46f81e898261c0d54293586a7690694f4decc51dba9629f1" [label=""];
  "sha256:877ef8b884b7766b46f81e898261c0d54293586a7690694f4decc51dba9629f1" -> "sha256:182ec8494b9ecdefc3c5c6feb84ed174155a6da3785cd8bd4a56d78656ce46f4" [label=""];
  "sha256:fb1f58747cf8ece7bfa2a164299761b058a6f1614ad4f59525fb45a8f7608c1f" -> "sha256:d170c1b408844b7f051ce6aa2c6d7fd60346474dcc6a122d3cf80d9f90892655" [label=""];
  "sha256:d170c1b408844b7f051ce6aa2c6d7fd60346474dcc6a122d3cf80d9f90892655" -> "sha256:7a2b94d9ef85a43e70d9207a9299167beb4af907188d0f880ccfd90c80b7f673" [label=""];
  "sha256:7a2b94d9ef85a43e70d9207a9299167beb4af907188d0f880ccfd90c80b7f673" -> "sha256:90f98e1d98ea73427b48788a701aca2a9e4ade0e69772334ce3d3bbbb5c4c13c" [label=""];
  "sha256:90f98e1d98ea73427b48788a701aca2a9e4ade0e69772334ce3d3bbbb5c4c13c" -> "sha256:471562527af1ccafb13abc45f631194623f6cc20c902dec07b37c167cd718ae0" [label=""];
  "sha256:2f2dd5b607587ce55a94ac1d48bd5484b4aaa58db269438d070ebe82f29f4493" -> "sha256:471562527af1ccafb13abc45f631194623f6cc20c902dec07b37c167cd718ae0" [label=""];
  "sha256:471562527af1ccafb13abc45f631194623f6cc20c902dec07b37c167cd718ae0" -> "sha256:a208e50fc967032523ff4e716b399f1b1681638f64b1f9df86329bb8503269c7" [label=""];
  "sha256:a208e50fc967032523ff4e716b399f1b1681638f64b1f9df86329bb8503269c7" -> "sha256:e0b3e91378b647d7f3c64b7f360c4b3645c5e032cb4feafa0453fccd7b88236e" [label=""];
  "sha256:e0b3e91378b647d7f3c64b7f360c4b3645c5e032cb4feafa0453fccd7b88236e" -> "sha256:c49241c518c02f99553198970d0898cd21e32c31c2d5b98880b3f98e9eca348c" [label=""];
  "sha256:2f2dd5b607587ce55a94ac1d48bd5484b4aaa58db269438d070ebe82f29f4493" -> "sha256:c49241c518c02f99553198970d0898cd21e32c31c2d5b98880b3f98e9eca348c" [label=""];
  "sha256:c49241c518c02f99553198970d0898cd21e32c31c2d5b98880b3f98e9eca348c" -> "sha256:622e999de609fe27ff2fb6fbf878745820a6e4ad7bf034e87ff2632b519b6843" [label=""];
  "sha256:622e999de609fe27ff2fb6fbf878745820a6e4ad7bf034e87ff2632b519b6843" -> "sha256:68347c1948842472bf06f2b59de9a44b81e39d13b777eef39d66d5c66e23cd6e" [label=""];
  "sha256:2f2dd5b607587ce55a94ac1d48bd5484b4aaa58db269438d070ebe82f29f4493" -> "sha256:68347c1948842472bf06f2b59de9a44b81e39d13b777eef39d66d5c66e23cd6e" [label=""];
  "sha256:68347c1948842472bf06f2b59de9a44b81e39d13b777eef39d66d5c66e23cd6e" -> "sha256:88a88a7c7ce7d4185f2748159336cce8bd569aee0ce0883c87843116364c149f" [label=""];
  "sha256:88a88a7c7ce7d4185f2748159336cce8bd569aee0ce0883c87843116364c149f" -> "sha256:709152b1d93e7707fd43a7eb4a17fd89561fba01bcb47f64b9d0b33ad3db54e7" [label=""];
  "sha256:709152b1d93e7707fd43a7eb4a17fd89561fba01bcb47f64b9d0b33ad3db54e7" -> "sha256:c76997e97ded6790b9ce25e5dc2d2870a7c2a13126f4fa75f01a151c27153a5b" [label=""];
  "sha256:c76997e97ded6790b9ce25e5dc2d2870a7c2a13126f4fa75f01a151c27153a5b" -> "sha256:2a058a1127e3acc75e4ea0423221ce2f01922c3e47293dbb0bc129bcb8cd187a" [label=""];
  "sha256:2a058a1127e3acc75e4ea0423221ce2f01922c3e47293dbb0bc129bcb8cd187a" -> "sha256:24ea88de8af930acfb03efcebf506642642fd13d992e59b7b99ebd2dbb2715bd" [label=""];
  "sha256:24ea88de8af930acfb03efcebf506642642fd13d992e59b7b99ebd2dbb2715bd" -> "sha256:98064d89b018ea2841685034a2b6d5224870ed22fa4fa7b54d4cfc0ee2c16ffb" [label=""];
  "sha256:182ec8494b9ecdefc3c5c6feb84ed174155a6da3785cd8bd4a56d78656ce46f4" -> "sha256:0da4e88e9d01b4bded6a7dd8d34c899ce56c5fadb961b7def092821adfab3745" [label=""];
  "sha256:98064d89b018ea2841685034a2b6d5224870ed22fa4fa7b54d4cfc0ee2c16ffb" -> "sha256:0da4e88e9d01b4bded6a7dd8d34c899ce56c5fadb961b7def092821adfab3745" [label=""];
  "sha256:0da4e88e9d01b4bded6a7dd8d34c899ce56c5fadb961b7def092821adfab3745" -> "sha256:2f69c7f6da2e5a443fc5fc17a15005f825617eca012c256f3ad3bf1662b1bffe" [label=""];
  "sha256:98064d89b018ea2841685034a2b6d5224870ed22fa4fa7b54d4cfc0ee2c16ffb" -> "sha256:2f69c7f6da2e5a443fc5fc17a15005f825617eca012c256f3ad3bf1662b1bffe" [label=""];
  "sha256:2f69c7f6da2e5a443fc5fc17a15005f825617eca012c256f3ad3bf1662b1bffe" -> "sha256:408109ed8e13976ee5617a26664504a65e849994b24d6534d8c0ab5e5cc4c6df" [label=""];
  "sha256:408109ed8e13976ee5617a26664504a65e849994b24d6534d8c0ab5e5cc4c6df" -> "sha256:ff19183168db12cfc4a65c930432dfc70a3c0a6f36e21daacb1bc5e8c5e8dd2f" [label=""];
  "sha256:ff19183168db12cfc4a65c930432dfc70a3c0a6f36e21daacb1bc5e8c5e8dd2f" -> "sha256:c05c74b2fa70476c9a32b5cc4954258d9834862c15050b42a46d59963cec8c7b" [label=""];
  "sha256:c05c74b2fa70476c9a32b5cc4954258d9834862c15050b42a46d59963cec8c7b" -> "sha256:d2beb90f449aee70ebcca69d2f451180bae09722ee27a96949e080eaeac29d2f" [label=""];
}
