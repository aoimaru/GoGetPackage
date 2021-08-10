[app/sources/343777386.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:3a54c5c877dd42fa5b14b872cdd66408638e2e2f9b0ba8160454641bd3e8c753" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:efe1f320a743f5b68060d06ff6ae47fcbc1f8e52db3f09d58b20d5dbf91c2600" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y unzip ruby bundler fontforge ttfautohint" shape="box"];
  "sha256:73e2846500f6b3de22b7a8cdfd7c92facff7c6036c55b9cb64a4a8026f3bbb06" [label="/bin/sh -c echo $(curl -sS https://appengine.google.com/api/updatecheck) | \tsed -E 's/release: \\\"(.+)\\\".*/\\1/g' > /gae_sdk_version" shape="box"];
  "sha256:8bd01ee17364a3158c462fd434d2a1cbe3cc1080bf5ee4abb8ab08826dd0b2c0" [label="/bin/sh -c curl -sS -o /gae_sdk.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_`cat /gae_sdk_version`.zip" shape="box"];
  "sha256:5eee21d6588c35cac91cbb3c4b60eaecdf822e8bf8a7dd05ae61b727e1bb7e37" [label="/bin/sh -c unzip -q /gae_sdk.zip && rm -rf /google_appengine/lib/django-*" shape="box"];
  "sha256:b54d2faae7666ba38c8d04a4d2caa7a9a5b2237f324c60938fb6744649128b3c" [label="local://context" shape="ellipse"];
  "sha256:4f408a36e1cd14eb17e576b7f06274a2f99e81e072753ef1a2113302c5966db6" [label="copy{src=/, dest=/wf/}" shape="note"];
  "sha256:72144f62456b254f540649fea0dfabe826c220f154f19f906a0a3b6715229c42" [label="mkdir{path=/wf}" shape="note"];
  "sha256:43e8824c0ceb5b2be17d745cc7901dd8ab6d6c9c49cf66517e2b6df425d453c3" [label="/bin/sh -c bundle install --quiet" shape="box"];
  "sha256:56b48ea6b66ef8023580bfbfc9f061c976b6a48b4af1469df2606ade1616c3ae" [label="/bin/sh -c npm install --loglevel error || ( cat /wf/npm-debug.log && exit 1 )" shape="box"];
  "sha256:c11b9ec83534f128da114aff4152adc5086e7cd00f127f1002df87be3fe5c60a" [label="/bin/sh -c npm install --loglevel error -g grunt-cli" shape="box"];
  "sha256:cf2413251f1e6b5388266bc643fd56de7717687c72ee0c54c09656897c556d4a" [label="sha256:cf2413251f1e6b5388266bc643fd56de7717687c72ee0c54c09656897c556d4a" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:3a54c5c877dd42fa5b14b872cdd66408638e2e2f9b0ba8160454641bd3e8c753" [label=""];
  "sha256:3a54c5c877dd42fa5b14b872cdd66408638e2e2f9b0ba8160454641bd3e8c753" -> "sha256:efe1f320a743f5b68060d06ff6ae47fcbc1f8e52db3f09d58b20d5dbf91c2600" [label=""];
  "sha256:efe1f320a743f5b68060d06ff6ae47fcbc1f8e52db3f09d58b20d5dbf91c2600" -> "sha256:73e2846500f6b3de22b7a8cdfd7c92facff7c6036c55b9cb64a4a8026f3bbb06" [label=""];
  "sha256:73e2846500f6b3de22b7a8cdfd7c92facff7c6036c55b9cb64a4a8026f3bbb06" -> "sha256:8bd01ee17364a3158c462fd434d2a1cbe3cc1080bf5ee4abb8ab08826dd0b2c0" [label=""];
  "sha256:8bd01ee17364a3158c462fd434d2a1cbe3cc1080bf5ee4abb8ab08826dd0b2c0" -> "sha256:5eee21d6588c35cac91cbb3c4b60eaecdf822e8bf8a7dd05ae61b727e1bb7e37" [label=""];
  "sha256:5eee21d6588c35cac91cbb3c4b60eaecdf822e8bf8a7dd05ae61b727e1bb7e37" -> "sha256:4f408a36e1cd14eb17e576b7f06274a2f99e81e072753ef1a2113302c5966db6" [label=""];
  "sha256:b54d2faae7666ba38c8d04a4d2caa7a9a5b2237f324c60938fb6744649128b3c" -> "sha256:4f408a36e1cd14eb17e576b7f06274a2f99e81e072753ef1a2113302c5966db6" [label=""];
  "sha256:4f408a36e1cd14eb17e576b7f06274a2f99e81e072753ef1a2113302c5966db6" -> "sha256:72144f62456b254f540649fea0dfabe826c220f154f19f906a0a3b6715229c42" [label=""];
  "sha256:72144f62456b254f540649fea0dfabe826c220f154f19f906a0a3b6715229c42" -> "sha256:43e8824c0ceb5b2be17d745cc7901dd8ab6d6c9c49cf66517e2b6df425d453c3" [label=""];
  "sha256:43e8824c0ceb5b2be17d745cc7901dd8ab6d6c9c49cf66517e2b6df425d453c3" -> "sha256:56b48ea6b66ef8023580bfbfc9f061c976b6a48b4af1469df2606ade1616c3ae" [label=""];
  "sha256:56b48ea6b66ef8023580bfbfc9f061c976b6a48b4af1469df2606ade1616c3ae" -> "sha256:c11b9ec83534f128da114aff4152adc5086e7cd00f127f1002df87be3fe5c60a" [label=""];
  "sha256:c11b9ec83534f128da114aff4152adc5086e7cd00f127f1002df87be3fe5c60a" -> "sha256:cf2413251f1e6b5388266bc643fd56de7717687c72ee0c54c09656897c556d4a" [label=""];
}

