[app/sources/394988635.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" [label="/bin/sh -c sed 's/main$/main universe/' -i /etc/apt/sources.list" shape="box"];
  "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common python-software-properties" shape="box"];
  "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" [label="/bin/sh -c apt-get install -y wget unzip" shape="box"];
  "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" [label="/bin/sh -c apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" [label="/bin/sh -c mkdir /nxt" shape="box"];
  "sha256:2652dd4303edfa36f1d313c341ac2bc13a9bedc882c3eb2387042ab2c7931142" [label="local://context" shape="ellipse"];
  "sha256:3621a9acb53388931c67c6842300cbbcc4afc916417c992da8a85d9e49bb297f" [label="copy{src=/, dest=/nxt}" shape="note"];
  "sha256:714b6ccc2b287f022a5bf7e307597833d5c8fecaa05ce4c21bc71379fde5e720" [label="copy{src=/contrib/docker_start.sh, dest=/docker_start.sh}" shape="note"];
  "sha256:124ab2c69a9db38558e8f4d8d6a8c316ff72697d19ebc2088ed938a977de172a" [label="/bin/sh -c echo 'nxt.allowedBotHosts=*' >> /nxt/conf/nxt.properties" shape="box"];
  "sha256:a020470efe0e7582c6a7b49e4f711d924b547a038348399872bd6e45672e2a90" [label="/bin/sh -c echo 'nxt.apiServerHost=0.0.0.0' >> /nxt/conf/nxt.properties" shape="box"];
  "sha256:cef75da8e45a5bedce65f9f869fc9b7e33523d55ffe041706a0ea2f6f5a3be32" [label="/bin/sh -c chmod +x /docker_start.sh" shape="box"];
  "sha256:541a35c8d2772632df4b4d048309bb9bf123760b2d2f5bc7fdb8b44bdf82ef3a" [label="/bin/sh -c cd /nxt; ./compile.sh" shape="box"];
  "sha256:0a750e2096936c54e270d133bceb2ffae52d59ea06bddbd88515e4cac4d00b95" [label="sha256:0a750e2096936c54e270d133bceb2ffae52d59ea06bddbd88515e4cac4d00b95" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" [label=""];
  "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" -> "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" [label=""];
  "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" -> "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" [label=""];
  "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" -> "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" [label=""];
  "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" -> "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" [label=""];
  "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" -> "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" [label=""];
  "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" -> "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" [label=""];
  "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" -> "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" [label=""];
  "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" -> "sha256:3621a9acb53388931c67c6842300cbbcc4afc916417c992da8a85d9e49bb297f" [label=""];
  "sha256:2652dd4303edfa36f1d313c341ac2bc13a9bedc882c3eb2387042ab2c7931142" -> "sha256:3621a9acb53388931c67c6842300cbbcc4afc916417c992da8a85d9e49bb297f" [label=""];
  "sha256:3621a9acb53388931c67c6842300cbbcc4afc916417c992da8a85d9e49bb297f" -> "sha256:714b6ccc2b287f022a5bf7e307597833d5c8fecaa05ce4c21bc71379fde5e720" [label=""];
  "sha256:2652dd4303edfa36f1d313c341ac2bc13a9bedc882c3eb2387042ab2c7931142" -> "sha256:714b6ccc2b287f022a5bf7e307597833d5c8fecaa05ce4c21bc71379fde5e720" [label=""];
  "sha256:714b6ccc2b287f022a5bf7e307597833d5c8fecaa05ce4c21bc71379fde5e720" -> "sha256:124ab2c69a9db38558e8f4d8d6a8c316ff72697d19ebc2088ed938a977de172a" [label=""];
  "sha256:124ab2c69a9db38558e8f4d8d6a8c316ff72697d19ebc2088ed938a977de172a" -> "sha256:a020470efe0e7582c6a7b49e4f711d924b547a038348399872bd6e45672e2a90" [label=""];
  "sha256:a020470efe0e7582c6a7b49e4f711d924b547a038348399872bd6e45672e2a90" -> "sha256:cef75da8e45a5bedce65f9f869fc9b7e33523d55ffe041706a0ea2f6f5a3be32" [label=""];
  "sha256:cef75da8e45a5bedce65f9f869fc9b7e33523d55ffe041706a0ea2f6f5a3be32" -> "sha256:541a35c8d2772632df4b4d048309bb9bf123760b2d2f5bc7fdb8b44bdf82ef3a" [label=""];
  "sha256:541a35c8d2772632df4b4d048309bb9bf123760b2d2f5bc7fdb8b44bdf82ef3a" -> "sha256:0a750e2096936c54e270d133bceb2ffae52d59ea06bddbd88515e4cac4d00b95" [label=""];
}

