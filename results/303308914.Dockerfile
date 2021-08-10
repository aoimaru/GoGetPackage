[app/sources/303308914.Dockerfile]
digraph {
  "sha256:2f6a048e5e0567f63fdbd18afdedbd58529fbf12811c12186e2ff911b336e8fa" [label="docker-image://docker.io/library/elixir:1.5.1@sha256:2c9cbc8f7e87b06db6616d88190ce02b524534bb368e7b7e472531e9fb675d73" shape="ellipse"];
  "sha256:c717d4d8dc3fc32aa782ef019fd17684d537149b323cb491209f058bab00d45b" [label="/bin/sh -c apt-get update     && curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash     && apt-get install -y nodejs inotify-tools" shape="box"];
  "sha256:2831044ddcfd7a08b9ae64e3e6e552facf9f96b745810f95b3c6fb58845ca238" [label="/bin/sh -c mkdir /myapp" shape="box"];
  "sha256:37b901b58681b2bec04aa2145befd533065eebac28b567246586cda64adcd43d" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:e2de0138366cdd4b391c37986aa3eda46bb1e82db4ee36558608a35af209b82b" [label="/bin/sh -c wget http://download.redis.io/releases/redis-5.0.3.tar.gz     && tar xzf redis-5.0.3.tar.gz     && cd redis-5.0.3     && make" shape="box"];
  "sha256:c84a1e5bbe17ff69cb9d34515fcc07bf2aeb9ceec7c08043ffd8c702c9cbdb6f" [label="local://context" shape="ellipse"];
  "sha256:1d26de9e025387a9a96d223ddf0928984e55694cda88036c56003f6a00ca6d18" [label="copy{src=/, dest=/myapp}" shape="note"];
  "sha256:e51bca9395073c35579879f922e398efd90a87ec1c6356308721810b306e71fe" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:9142c401ce1dfea4dcb804eee86dd7fc45ba7f5f9b20f60d89cc5f17b25622fc" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:08a0d7a81bd69a78cc8e72733867a02e6050e515d4a4af33773b418e97bd4090" [label="/bin/sh -c mix deps.get" shape="box"];
  "sha256:250e32b89fb3b29edb2b9065a37d1590d7941d7d68ec02df4c12ffafa1e1a685" [label="/bin/sh -c mix deps.compile" shape="box"];
  "sha256:2f236678a02fabb8ab8469e308ffd38ecdebe22b5842f038acbc4ad83a2fd8d5" [label="/bin/sh -c cd assets && npm install" shape="box"];
  "sha256:511bbda397eaa474373688fce9ccf435c1ec2eb862fcfb65cfd0b2b04bca8cda" [label="sha256:511bbda397eaa474373688fce9ccf435c1ec2eb862fcfb65cfd0b2b04bca8cda" shape="plaintext"];
  "sha256:2f6a048e5e0567f63fdbd18afdedbd58529fbf12811c12186e2ff911b336e8fa" -> "sha256:c717d4d8dc3fc32aa782ef019fd17684d537149b323cb491209f058bab00d45b" [label=""];
  "sha256:c717d4d8dc3fc32aa782ef019fd17684d537149b323cb491209f058bab00d45b" -> "sha256:2831044ddcfd7a08b9ae64e3e6e552facf9f96b745810f95b3c6fb58845ca238" [label=""];
  "sha256:2831044ddcfd7a08b9ae64e3e6e552facf9f96b745810f95b3c6fb58845ca238" -> "sha256:37b901b58681b2bec04aa2145befd533065eebac28b567246586cda64adcd43d" [label=""];
  "sha256:37b901b58681b2bec04aa2145befd533065eebac28b567246586cda64adcd43d" -> "sha256:e2de0138366cdd4b391c37986aa3eda46bb1e82db4ee36558608a35af209b82b" [label=""];
  "sha256:e2de0138366cdd4b391c37986aa3eda46bb1e82db4ee36558608a35af209b82b" -> "sha256:1d26de9e025387a9a96d223ddf0928984e55694cda88036c56003f6a00ca6d18" [label=""];
  "sha256:c84a1e5bbe17ff69cb9d34515fcc07bf2aeb9ceec7c08043ffd8c702c9cbdb6f" -> "sha256:1d26de9e025387a9a96d223ddf0928984e55694cda88036c56003f6a00ca6d18" [label=""];
  "sha256:1d26de9e025387a9a96d223ddf0928984e55694cda88036c56003f6a00ca6d18" -> "sha256:e51bca9395073c35579879f922e398efd90a87ec1c6356308721810b306e71fe" [label=""];
  "sha256:e51bca9395073c35579879f922e398efd90a87ec1c6356308721810b306e71fe" -> "sha256:9142c401ce1dfea4dcb804eee86dd7fc45ba7f5f9b20f60d89cc5f17b25622fc" [label=""];
  "sha256:9142c401ce1dfea4dcb804eee86dd7fc45ba7f5f9b20f60d89cc5f17b25622fc" -> "sha256:08a0d7a81bd69a78cc8e72733867a02e6050e515d4a4af33773b418e97bd4090" [label=""];
  "sha256:08a0d7a81bd69a78cc8e72733867a02e6050e515d4a4af33773b418e97bd4090" -> "sha256:250e32b89fb3b29edb2b9065a37d1590d7941d7d68ec02df4c12ffafa1e1a685" [label=""];
  "sha256:250e32b89fb3b29edb2b9065a37d1590d7941d7d68ec02df4c12ffafa1e1a685" -> "sha256:2f236678a02fabb8ab8469e308ffd38ecdebe22b5842f038acbc4ad83a2fd8d5" [label=""];
  "sha256:2f236678a02fabb8ab8469e308ffd38ecdebe22b5842f038acbc4ad83a2fd8d5" -> "sha256:511bbda397eaa474373688fce9ccf435c1ec2eb862fcfb65cfd0b2b04bca8cda" [label=""];
}

