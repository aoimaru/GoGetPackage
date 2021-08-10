[app/sources/310132645.Dockerfile]
digraph {
  "sha256:83ac9998f514f44ff49e1011ccd6d146173822b353e41965e427eae91b013ab2" [label="docker-image://docker.io/library/python:3.7.0" shape="ellipse"];
  "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" [label="/bin/sh -c apt-get update -yqq && apt-get install -yqq --no-install-recommends netcat && apt-get -q clean" shape="box"];
  "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" [label="/bin/sh -c pip install --no-cache-dir pipenv" shape="box"];
  "sha256:f493e16f2092099dd079ef2def60184d0c08d70d2ed9fe35e691b59a51b1fe78" [label="local://context" shape="ellipse"];
  "sha256:61891a31dc7feb4556d67697775a654255db4b6086e5c0ef8f493d023ec6fae3" [label="copy{src=/Pipfile, dest=/usr/src/app/},copy{src=/Pipfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:e0e781e4723b245b62ce1bcdb49e774d2fd99a9a405877f0d0c219721e0be94a" [label="/bin/sh -c pipenv install --deploy --dev --ignore-pipfile --system" shape="box"];
  "sha256:e9f63a3f28a0525d48bdaa6192d1a90ec3761337aa541770856bdef4e6629ac8" [label="copy{src=/newrelic.ini, dest=/usr/src/app/newrelic.ini}" shape="note"];
  "sha256:bd4b7ce4e71d1d2a6ed03b85629267f88200e25509254da16e35ee45fb35d648" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:8ce112a81b5ff13eec80c17b4200c50307f421ceed5b2dd7859eb27455eb1036" [label="sha256:8ce112a81b5ff13eec80c17b4200c50307f421ceed5b2dd7859eb27455eb1036" shape="plaintext"];
  "sha256:83ac9998f514f44ff49e1011ccd6d146173822b353e41965e427eae91b013ab2" -> "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" [label=""];
  "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" -> "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" [label=""];
  "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" -> "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" [label=""];
  "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" -> "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" [label=""];
  "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" -> "sha256:61891a31dc7feb4556d67697775a654255db4b6086e5c0ef8f493d023ec6fae3" [label=""];
  "sha256:f493e16f2092099dd079ef2def60184d0c08d70d2ed9fe35e691b59a51b1fe78" -> "sha256:61891a31dc7feb4556d67697775a654255db4b6086e5c0ef8f493d023ec6fae3" [label=""];
  "sha256:61891a31dc7feb4556d67697775a654255db4b6086e5c0ef8f493d023ec6fae3" -> "sha256:e0e781e4723b245b62ce1bcdb49e774d2fd99a9a405877f0d0c219721e0be94a" [label=""];
  "sha256:e0e781e4723b245b62ce1bcdb49e774d2fd99a9a405877f0d0c219721e0be94a" -> "sha256:e9f63a3f28a0525d48bdaa6192d1a90ec3761337aa541770856bdef4e6629ac8" [label=""];
  "sha256:f493e16f2092099dd079ef2def60184d0c08d70d2ed9fe35e691b59a51b1fe78" -> "sha256:e9f63a3f28a0525d48bdaa6192d1a90ec3761337aa541770856bdef4e6629ac8" [label=""];
  "sha256:e9f63a3f28a0525d48bdaa6192d1a90ec3761337aa541770856bdef4e6629ac8" -> "sha256:bd4b7ce4e71d1d2a6ed03b85629267f88200e25509254da16e35ee45fb35d648" [label=""];
  "sha256:f493e16f2092099dd079ef2def60184d0c08d70d2ed9fe35e691b59a51b1fe78" -> "sha256:bd4b7ce4e71d1d2a6ed03b85629267f88200e25509254da16e35ee45fb35d648" [label=""];
  "sha256:bd4b7ce4e71d1d2a6ed03b85629267f88200e25509254da16e35ee45fb35d648" -> "sha256:8ce112a81b5ff13eec80c17b4200c50307f421ceed5b2dd7859eb27455eb1036" [label=""];
}

