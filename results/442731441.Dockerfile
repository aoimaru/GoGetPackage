[app/sources/442731441.Dockerfile]
digraph {
  "sha256:12384d50382d1d826c650ecf6f092f2341cf8aa255ae8bb65f7fea7a4f99976d" [label="local://context" shape="ellipse"];
  "sha256:10da6e2c034c74a81357bc80a428c024fe1db1db79184101e670f2c7cfe85935" [label="docker-image://docker.io/library/ruby:2.5.1-alpine" shape="ellipse"];
  "sha256:4d3c76db3f468fca5a446565e7031115e9a1db1fae8637c104c45ddbddd62101" [label="/bin/sh -c apk add --update --no-cache build-base ruby-dev libxml2-dev libxslt-dev postgresql-dev mysql-dev openssl ca-certificates wget &&   update-ca-certificates" shape="box"];
  "sha256:150da1cad07af76c9b545c3640ea24f05f0a056cc79506462237b093eab72a0b" [label="/bin/sh -c addgroup bandiera && adduser -D -G bandiera -h /home/bandiera bandiera" shape="box"];
  "sha256:8876e6066b7cb954232d2914860b00dec894a354f7d0ac0892b6ce910a16f26b" [label="mkdir{path=/home/bandiera}" shape="note"];
  "sha256:0e906a28250e61987cdceeee335519fd98a6e4ce322f68b2e064644cf91c1dde" [label="copy{src=/Gemfile, dest=/home/bandiera/Gemfile}" shape="note"];
  "sha256:b276fda17a350d4f00e5ac1f4b168be28736a0fa497adab819035528d3b5a11f" [label="copy{src=/Gemfile.lock, dest=/home/bandiera/Gemfile.lock}" shape="note"];
  "sha256:ff9600980e45afa37fdf370f68e065fc19c7c454aefc58816e5a514ff9b132c9" [label="/bin/sh -c bundle install --retry 10 --jobs 4 --without test" shape="box"];
  "sha256:8de3c4eca8fd33084bf9a399894a5d259dcdf31595bfdb58abb6bf34a5a83d40" [label="copy{src=/, dest=/home/bandiera/}" shape="note"];
  "sha256:f50885149f9805d2e487fd8ceabb4dcab78661c7a9693324d50a8441d4379708" [label="sha256:f50885149f9805d2e487fd8ceabb4dcab78661c7a9693324d50a8441d4379708" shape="plaintext"];
  "sha256:10da6e2c034c74a81357bc80a428c024fe1db1db79184101e670f2c7cfe85935" -> "sha256:4d3c76db3f468fca5a446565e7031115e9a1db1fae8637c104c45ddbddd62101" [label=""];
  "sha256:4d3c76db3f468fca5a446565e7031115e9a1db1fae8637c104c45ddbddd62101" -> "sha256:150da1cad07af76c9b545c3640ea24f05f0a056cc79506462237b093eab72a0b" [label=""];
  "sha256:150da1cad07af76c9b545c3640ea24f05f0a056cc79506462237b093eab72a0b" -> "sha256:8876e6066b7cb954232d2914860b00dec894a354f7d0ac0892b6ce910a16f26b" [label=""];
  "sha256:8876e6066b7cb954232d2914860b00dec894a354f7d0ac0892b6ce910a16f26b" -> "sha256:0e906a28250e61987cdceeee335519fd98a6e4ce322f68b2e064644cf91c1dde" [label=""];
  "sha256:12384d50382d1d826c650ecf6f092f2341cf8aa255ae8bb65f7fea7a4f99976d" -> "sha256:0e906a28250e61987cdceeee335519fd98a6e4ce322f68b2e064644cf91c1dde" [label=""];
  "sha256:0e906a28250e61987cdceeee335519fd98a6e4ce322f68b2e064644cf91c1dde" -> "sha256:b276fda17a350d4f00e5ac1f4b168be28736a0fa497adab819035528d3b5a11f" [label=""];
  "sha256:12384d50382d1d826c650ecf6f092f2341cf8aa255ae8bb65f7fea7a4f99976d" -> "sha256:b276fda17a350d4f00e5ac1f4b168be28736a0fa497adab819035528d3b5a11f" [label=""];
  "sha256:b276fda17a350d4f00e5ac1f4b168be28736a0fa497adab819035528d3b5a11f" -> "sha256:ff9600980e45afa37fdf370f68e065fc19c7c454aefc58816e5a514ff9b132c9" [label=""];
  "sha256:ff9600980e45afa37fdf370f68e065fc19c7c454aefc58816e5a514ff9b132c9" -> "sha256:8de3c4eca8fd33084bf9a399894a5d259dcdf31595bfdb58abb6bf34a5a83d40" [label=""];
  "sha256:12384d50382d1d826c650ecf6f092f2341cf8aa255ae8bb65f7fea7a4f99976d" -> "sha256:8de3c4eca8fd33084bf9a399894a5d259dcdf31595bfdb58abb6bf34a5a83d40" [label=""];
  "sha256:8de3c4eca8fd33084bf9a399894a5d259dcdf31595bfdb58abb6bf34a5a83d40" -> "sha256:f50885149f9805d2e487fd8ceabb4dcab78661c7a9693324d50a8441d4379708" [label=""];
}

