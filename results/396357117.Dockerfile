[app/sources/396357117.Dockerfile]
digraph {
  "sha256:3b7915b9ef4de929716c2cda8fb2fea064c651e65d917d19235d52550e19f0d0" [label="docker-image://docker.io/library/ruby:2.6.3-slim-stretch" shape="ellipse"];
  "sha256:d44300980ae2d6fcd1e05c911e5f5d41f2defd29868eb1440cf83853131c2693" [label="/bin/sh -c gem install bundler --version '~> 2.0'" shape="box"];
  "sha256:d39fea06b68fe49672cc52dc87d096775f7dda2ad94a9d83eb4b7040d85af77d" [label="local://context" shape="ellipse"];
  "sha256:6444dd1a301a944470ae73f399515474290b1f7f751f9ff858bfbf57ae509ec1" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Gemfile.lock, dest=/usr/src/app/},copy{src=/Rakefile, dest=/usr/src/app/},copy{src=/.rspec, dest=/usr/src/app/}" shape="note"];
  "sha256:a6701f1754ee66953fd13cf8391bc22193398565adee656bdefd5e7f43765093" [label="copy{src=/spec, dest=/usr/src/app/spec/}" shape="note"];
  "sha256:7b760193ff6887c8f6acac634236ba6d759e7b2ad4392f2809b0eb9841cc58dd" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:9227af05aae4cfe731fcf78d4ab8244d760e4e8bdb4d15f2ec6f6986c3b20d0e" [label="/bin/sh -c bundle install --path=vendor/bundle --jobs=4" shape="box"];
  "sha256:a3f73d83780f9371c6d62490f7ab9ba0c3da878e099c96eb9c36cfd0b8fcdf11" [label="sha256:a3f73d83780f9371c6d62490f7ab9ba0c3da878e099c96eb9c36cfd0b8fcdf11" shape="plaintext"];
  "sha256:3b7915b9ef4de929716c2cda8fb2fea064c651e65d917d19235d52550e19f0d0" -> "sha256:d44300980ae2d6fcd1e05c911e5f5d41f2defd29868eb1440cf83853131c2693" [label=""];
  "sha256:d44300980ae2d6fcd1e05c911e5f5d41f2defd29868eb1440cf83853131c2693" -> "sha256:6444dd1a301a944470ae73f399515474290b1f7f751f9ff858bfbf57ae509ec1" [label=""];
  "sha256:d39fea06b68fe49672cc52dc87d096775f7dda2ad94a9d83eb4b7040d85af77d" -> "sha256:6444dd1a301a944470ae73f399515474290b1f7f751f9ff858bfbf57ae509ec1" [label=""];
  "sha256:6444dd1a301a944470ae73f399515474290b1f7f751f9ff858bfbf57ae509ec1" -> "sha256:a6701f1754ee66953fd13cf8391bc22193398565adee656bdefd5e7f43765093" [label=""];
  "sha256:d39fea06b68fe49672cc52dc87d096775f7dda2ad94a9d83eb4b7040d85af77d" -> "sha256:a6701f1754ee66953fd13cf8391bc22193398565adee656bdefd5e7f43765093" [label=""];
  "sha256:a6701f1754ee66953fd13cf8391bc22193398565adee656bdefd5e7f43765093" -> "sha256:7b760193ff6887c8f6acac634236ba6d759e7b2ad4392f2809b0eb9841cc58dd" [label=""];
  "sha256:7b760193ff6887c8f6acac634236ba6d759e7b2ad4392f2809b0eb9841cc58dd" -> "sha256:9227af05aae4cfe731fcf78d4ab8244d760e4e8bdb4d15f2ec6f6986c3b20d0e" [label=""];
  "sha256:9227af05aae4cfe731fcf78d4ab8244d760e4e8bdb4d15f2ec6f6986c3b20d0e" -> "sha256:a3f73d83780f9371c6d62490f7ab9ba0c3da878e099c96eb9c36cfd0b8fcdf11" [label=""];
}

