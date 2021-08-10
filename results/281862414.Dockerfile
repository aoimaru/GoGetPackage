[app/sources/281862414.Dockerfile]
digraph {
  "sha256:37d6b1d89347b4971ac587793a9202e04bde98b449607c9efbcc5bdb4506cd38" [label="local://context" shape="ellipse"];
  "sha256:849cf514990794e0894e85bc866f5f97becb1e9bf71ef3e9ffec47f9613fd7d7" [label="docker-image://docker.io/library/ruby:2.3.7" shape="ellipse"];
  "sha256:26aaa4383746316707069682c78a3089de4b3019a3f6ed31cbe88dbe14346d2c" [label="/bin/sh -c gem install bundler jekyll" shape="box"];
  "sha256:648c1efb76a37f98df470b039751d9a99d6d6bd1ed76e432d283523fb4117b44" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:3bc3b752dc5f44aaecc254b376a0a2db0e7e9fbbd98fabf2ec4cb058cfe1a0a2" [label="copy{src=/Gemfile**, dest=/src/}" shape="note"];
  "sha256:dc79cdd76a4db1ac6c04bdae847b07bd7438b904f6a17cc0275d9792587d08af" [label="mkdir{path=/src}" shape="note"];
  "sha256:babdf5853b4b9ef8b2747a1e28ee479332721f6b43c78b3d2199ebecb259b5f8" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:60ddbca38cd65a007bd106ade21fc50459e65e5699ecfb222c742afb6d85575a" [label="sha256:60ddbca38cd65a007bd106ade21fc50459e65e5699ecfb222c742afb6d85575a" shape="plaintext"];
  "sha256:849cf514990794e0894e85bc866f5f97becb1e9bf71ef3e9ffec47f9613fd7d7" -> "sha256:26aaa4383746316707069682c78a3089de4b3019a3f6ed31cbe88dbe14346d2c" [label=""];
  "sha256:26aaa4383746316707069682c78a3089de4b3019a3f6ed31cbe88dbe14346d2c" -> "sha256:648c1efb76a37f98df470b039751d9a99d6d6bd1ed76e432d283523fb4117b44" [label=""];
  "sha256:648c1efb76a37f98df470b039751d9a99d6d6bd1ed76e432d283523fb4117b44" -> "sha256:3bc3b752dc5f44aaecc254b376a0a2db0e7e9fbbd98fabf2ec4cb058cfe1a0a2" [label=""];
  "sha256:37d6b1d89347b4971ac587793a9202e04bde98b449607c9efbcc5bdb4506cd38" -> "sha256:3bc3b752dc5f44aaecc254b376a0a2db0e7e9fbbd98fabf2ec4cb058cfe1a0a2" [label=""];
  "sha256:3bc3b752dc5f44aaecc254b376a0a2db0e7e9fbbd98fabf2ec4cb058cfe1a0a2" -> "sha256:dc79cdd76a4db1ac6c04bdae847b07bd7438b904f6a17cc0275d9792587d08af" [label=""];
  "sha256:dc79cdd76a4db1ac6c04bdae847b07bd7438b904f6a17cc0275d9792587d08af" -> "sha256:babdf5853b4b9ef8b2747a1e28ee479332721f6b43c78b3d2199ebecb259b5f8" [label=""];
  "sha256:babdf5853b4b9ef8b2747a1e28ee479332721f6b43c78b3d2199ebecb259b5f8" -> "sha256:60ddbca38cd65a007bd106ade21fc50459e65e5699ecfb222c742afb6d85575a" [label=""];
}

