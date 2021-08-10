[app/sources/216693730.Dockerfile]
digraph {
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" [label="docker-image://docker.io/library/ruby:2.2" shape="ellipse"];
  "sha256:e27a0b430b25139517783d049ef5f3caa4d64177e0d13809506c8217a1c195e3" [label="/bin/sh -c gem install -n /usr/bin bundler" shape="box"];
  "sha256:834e97da41843407df705d5f075a897cd1584336c33b09de30483fadfff9c3da" [label="/bin/sh -c gem install -n /usr/bin rake" shape="box"];
  "sha256:6a9d94bdf6eb461b0b4e8885f3a153e6dafa336038c8bbeeb337fe8cef7e0042" [label="/bin/sh -c apt-get update && apt-get install -y tinycdb && apt-get clean" shape="box"];
  "sha256:cac57ac03381b03085141572f8473d59875e9de545a8e01b7114a8119e0c0389" [label="local://context" shape="ellipse"];
  "sha256:8416e51fd4def22ed0db7698b9a2bf4034e3cff729986488df0446c9f68db3cd" [label="copy{src=/bundle_config, dest=/usr/local/bundle/config}" shape="note"];
  "sha256:c8adedf411ad5caac65f37b3d5fa99a5debd206280309aa06939963f8d6f5d77" [label="mkdir{path=/app}" shape="note"];
  "sha256:26fbfc654a1e68b25ad23fc36f047c6367dcc0e505583ba99487380452c3db1c" [label="sha256:26fbfc654a1e68b25ad23fc36f047c6367dcc0e505583ba99487380452c3db1c" shape="plaintext"];
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" -> "sha256:e27a0b430b25139517783d049ef5f3caa4d64177e0d13809506c8217a1c195e3" [label=""];
  "sha256:e27a0b430b25139517783d049ef5f3caa4d64177e0d13809506c8217a1c195e3" -> "sha256:834e97da41843407df705d5f075a897cd1584336c33b09de30483fadfff9c3da" [label=""];
  "sha256:834e97da41843407df705d5f075a897cd1584336c33b09de30483fadfff9c3da" -> "sha256:6a9d94bdf6eb461b0b4e8885f3a153e6dafa336038c8bbeeb337fe8cef7e0042" [label=""];
  "sha256:6a9d94bdf6eb461b0b4e8885f3a153e6dafa336038c8bbeeb337fe8cef7e0042" -> "sha256:8416e51fd4def22ed0db7698b9a2bf4034e3cff729986488df0446c9f68db3cd" [label=""];
  "sha256:cac57ac03381b03085141572f8473d59875e9de545a8e01b7114a8119e0c0389" -> "sha256:8416e51fd4def22ed0db7698b9a2bf4034e3cff729986488df0446c9f68db3cd" [label=""];
  "sha256:8416e51fd4def22ed0db7698b9a2bf4034e3cff729986488df0446c9f68db3cd" -> "sha256:c8adedf411ad5caac65f37b3d5fa99a5debd206280309aa06939963f8d6f5d77" [label=""];
  "sha256:c8adedf411ad5caac65f37b3d5fa99a5debd206280309aa06939963f8d6f5d77" -> "sha256:26fbfc654a1e68b25ad23fc36f047c6367dcc0e505583ba99487380452c3db1c" [label=""];
}

