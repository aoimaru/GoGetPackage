[app/sources/317188477.Dockerfile]
digraph {
  "sha256:1e6061a3c305d6c070ba7c70e0d096de76aa700e5f96cc410680882c2102485c" [label="docker-image://docker.io/library/ruby:2.5-alpine" shape="ellipse"];
  "sha256:269c26141e1302337338d1abf1cfdfd7da00da4794b947fa116fe57bf2eae8b2" [label="/bin/sh -c apk --no-cache add   zlib-dev   build-base   libxml2-dev   libxslt-dev   readline-dev   libffi-dev   yaml-dev   zlib-dev   libffi-dev   cmake   nodejs" shape="box"];
  "sha256:891d3c1efc342953e96f80b2d3542fa7552748761bcb1ca18c90ac6c0522f3b0" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:d84df906c06885795ba1f97a0691f40774b6bf33118a18c2d02f0023d533800d" [label="mkdir{path=/app}" shape="note"];
  "sha256:af2d4ec9061ce7703ef63284691624048fcee0df8994ed62db9b8d62e3f7abdf" [label="local://context" shape="ellipse"];
  "sha256:d9eb4d71f3fa86e740479f06447695c58bb9ddaa0def0d18531972d1aa90527a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:080f01de92a5b36a1aaac5cee909281e7c1b40856a9074b846c61bea47ca1cde" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:7660e07feac9af34cc3e854b3acae5dbb7b306376a63d7c163edb21bf2424557" [label="/bin/sh -c JEKYLL_ENV=production bundle exec jekyll build --destination /public" shape="box"];
  "sha256:f99321aa5a3d1b44e8f5b3dc3912b876163cfa829ad60c0253dd59c0888f6eb1" [label="sha256:f99321aa5a3d1b44e8f5b3dc3912b876163cfa829ad60c0253dd59c0888f6eb1" shape="plaintext"];
  "sha256:1e6061a3c305d6c070ba7c70e0d096de76aa700e5f96cc410680882c2102485c" -> "sha256:269c26141e1302337338d1abf1cfdfd7da00da4794b947fa116fe57bf2eae8b2" [label=""];
  "sha256:269c26141e1302337338d1abf1cfdfd7da00da4794b947fa116fe57bf2eae8b2" -> "sha256:891d3c1efc342953e96f80b2d3542fa7552748761bcb1ca18c90ac6c0522f3b0" [label=""];
  "sha256:891d3c1efc342953e96f80b2d3542fa7552748761bcb1ca18c90ac6c0522f3b0" -> "sha256:d84df906c06885795ba1f97a0691f40774b6bf33118a18c2d02f0023d533800d" [label=""];
  "sha256:d84df906c06885795ba1f97a0691f40774b6bf33118a18c2d02f0023d533800d" -> "sha256:d9eb4d71f3fa86e740479f06447695c58bb9ddaa0def0d18531972d1aa90527a" [label=""];
  "sha256:af2d4ec9061ce7703ef63284691624048fcee0df8994ed62db9b8d62e3f7abdf" -> "sha256:d9eb4d71f3fa86e740479f06447695c58bb9ddaa0def0d18531972d1aa90527a" [label=""];
  "sha256:d9eb4d71f3fa86e740479f06447695c58bb9ddaa0def0d18531972d1aa90527a" -> "sha256:080f01de92a5b36a1aaac5cee909281e7c1b40856a9074b846c61bea47ca1cde" [label=""];
  "sha256:080f01de92a5b36a1aaac5cee909281e7c1b40856a9074b846c61bea47ca1cde" -> "sha256:7660e07feac9af34cc3e854b3acae5dbb7b306376a63d7c163edb21bf2424557" [label=""];
  "sha256:7660e07feac9af34cc3e854b3acae5dbb7b306376a63d7c163edb21bf2424557" -> "sha256:f99321aa5a3d1b44e8f5b3dc3912b876163cfa829ad60c0253dd59c0888f6eb1" [label=""];
}

