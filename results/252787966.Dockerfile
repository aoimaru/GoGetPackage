[app/sources/252787966.Dockerfile]
digraph {
  "sha256:72ba01787af7eb9e0a2293687f4514327ea1a486674c2c9c9d345e23c7f7c276" [label="docker-image://docker.io/library/ruby:2.2.5" shape="ellipse"];
  "sha256:2e33b081dc8319b76dd2822e95337884862fe4105c81019b06839c4ec5949a31" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && rm -rf /var/cache/apt && npm install -g yarn" shape="box"];
  "sha256:415c2d379adc46dc44d115e1c56e553223b683a33433a88fb51073f5f4b1a1dc" [label="sha256:415c2d379adc46dc44d115e1c56e553223b683a33433a88fb51073f5f4b1a1dc" shape="plaintext"];
  "sha256:72ba01787af7eb9e0a2293687f4514327ea1a486674c2c9c9d345e23c7f7c276" -> "sha256:2e33b081dc8319b76dd2822e95337884862fe4105c81019b06839c4ec5949a31" [label=""];
  "sha256:2e33b081dc8319b76dd2822e95337884862fe4105c81019b06839c4ec5949a31" -> "sha256:415c2d379adc46dc44d115e1c56e553223b683a33433a88fb51073f5f4b1a1dc" [label=""];
}

