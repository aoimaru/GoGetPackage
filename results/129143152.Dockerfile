[app/sources/129143152.Dockerfile]
digraph {
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" [label="docker-image://docker.io/library/ruby:2.5.1" shape="ellipse"];
  "sha256:d85f43bc91c125a34d29b32f51bd8a6d4d5ba3e4a826756963c73d50350481a1" [label="/bin/sh -c mkdir /circuitverse" shape="box"];
  "sha256:b97b623b95b986b524def5dd9693630a5c8b06c176d558917d6d8d30a02b71b9" [label="mkdir{path=/circuitverse}" shape="note"];
  "sha256:ae541dd72bb6a61cd8aea2279208f048970c03155e4364bbbad445f9f315bff5" [label="/bin/sh -c apt-get update -qq && apt-get install -y imagemagick && apt-get clean" shape="box"];
  "sha256:4bbb6e4c601e077cbcd4b8194f3d4e38297054a64c59fd11907672683fb87952" [label="/bin/sh -c wget -qO- https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && apt-get clean" shape="box"];
  "sha256:06122430c593b2dbae1eaf7ca5666a8bad84660a2ba752d714fbd5612a03a2ea" [label="local://context" shape="ellipse"];
  "sha256:b9cbd6d56096577248ea0327571ca68db4730841d2344eda8ff8c5a6730d54a8" [label="copy{src=/Gemfile, dest=/circuitverse/Gemfile}" shape="note"];
  "sha256:3be467ba377098d03870cbeb55db586c6aefe3d199e569acce32e42aab980b8c" [label="copy{src=/Gemfile.lock, dest=/circuitverse/Gemfile.lock}" shape="note"];
  "sha256:7dcc8ece5fa630b9a8cf5f85ffd9ef733892e1be1e46cb0e19d098ed5b9833c3" [label="/bin/sh -c bundle install  --without production" shape="box"];
  "sha256:83971015b3ee43ba33a52aa1074233f68eb555f0f8e9b6cb7eb5c83af81ccdd8" [label="copy{src=/, dest=/circuitverse}" shape="note"];
  "sha256:4997cd9fa3d0acaca2fbf1b780e6f8a6d97e0fc37f93d29cb59c38a00d390f65" [label="sha256:4997cd9fa3d0acaca2fbf1b780e6f8a6d97e0fc37f93d29cb59c38a00d390f65" shape="plaintext"];
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" -> "sha256:d85f43bc91c125a34d29b32f51bd8a6d4d5ba3e4a826756963c73d50350481a1" [label=""];
  "sha256:d85f43bc91c125a34d29b32f51bd8a6d4d5ba3e4a826756963c73d50350481a1" -> "sha256:b97b623b95b986b524def5dd9693630a5c8b06c176d558917d6d8d30a02b71b9" [label=""];
  "sha256:b97b623b95b986b524def5dd9693630a5c8b06c176d558917d6d8d30a02b71b9" -> "sha256:ae541dd72bb6a61cd8aea2279208f048970c03155e4364bbbad445f9f315bff5" [label=""];
  "sha256:ae541dd72bb6a61cd8aea2279208f048970c03155e4364bbbad445f9f315bff5" -> "sha256:4bbb6e4c601e077cbcd4b8194f3d4e38297054a64c59fd11907672683fb87952" [label=""];
  "sha256:4bbb6e4c601e077cbcd4b8194f3d4e38297054a64c59fd11907672683fb87952" -> "sha256:b9cbd6d56096577248ea0327571ca68db4730841d2344eda8ff8c5a6730d54a8" [label=""];
  "sha256:06122430c593b2dbae1eaf7ca5666a8bad84660a2ba752d714fbd5612a03a2ea" -> "sha256:b9cbd6d56096577248ea0327571ca68db4730841d2344eda8ff8c5a6730d54a8" [label=""];
  "sha256:b9cbd6d56096577248ea0327571ca68db4730841d2344eda8ff8c5a6730d54a8" -> "sha256:3be467ba377098d03870cbeb55db586c6aefe3d199e569acce32e42aab980b8c" [label=""];
  "sha256:06122430c593b2dbae1eaf7ca5666a8bad84660a2ba752d714fbd5612a03a2ea" -> "sha256:3be467ba377098d03870cbeb55db586c6aefe3d199e569acce32e42aab980b8c" [label=""];
  "sha256:3be467ba377098d03870cbeb55db586c6aefe3d199e569acce32e42aab980b8c" -> "sha256:7dcc8ece5fa630b9a8cf5f85ffd9ef733892e1be1e46cb0e19d098ed5b9833c3" [label=""];
  "sha256:7dcc8ece5fa630b9a8cf5f85ffd9ef733892e1be1e46cb0e19d098ed5b9833c3" -> "sha256:83971015b3ee43ba33a52aa1074233f68eb555f0f8e9b6cb7eb5c83af81ccdd8" [label=""];
  "sha256:06122430c593b2dbae1eaf7ca5666a8bad84660a2ba752d714fbd5612a03a2ea" -> "sha256:83971015b3ee43ba33a52aa1074233f68eb555f0f8e9b6cb7eb5c83af81ccdd8" [label=""];
  "sha256:83971015b3ee43ba33a52aa1074233f68eb555f0f8e9b6cb7eb5c83af81ccdd8" -> "sha256:4997cd9fa3d0acaca2fbf1b780e6f8a6d97e0fc37f93d29cb59c38a00d390f65" [label=""];
}

