[app/sources/252776974.Dockerfile]
digraph {
  "sha256:c4bcc2d1ab375d24f9005fd3726af4ee7a349a2840b3312b7ed0d2a8ea0d0dc4" [label="docker-image://docker.io/drydock/u14:prod" shape="ellipse"];
  "sha256:b8e333035d28e340cfe36823d7ef274c995b8cfc988ba30d75007ec27fd17572" [label="/bin/sh -c mkdir -p /tmp && chmod 1777 /tmp" shape="box"];
  "sha256:aa57cda7850a00c921ed8725850a3850201662b972ca61fd5c2d05be79e16f85" [label="/bin/sh -c apt-add-repository -y ppa:brightbox/ruby-ng" shape="box"];
  "sha256:ddcc57edad9e1db2db03a81769f5a529483774da144b53dbb871385ef3b83507" [label="/bin/sh -c add-apt-repository -y ppa:chris-lea/node.js" shape="box"];
  "sha256:9ccf9dcaa374bf49c50c919a452d23b8734caf2ec113918e81949460276c6c1d" [label="/bin/sh -c add-apt-repository -y ppa:danmbox/ppa" shape="box"];
  "sha256:bc7e8e20a043fc636767734a0e0e9d6eb39c3c2318af8e564c0d1cd709d63854" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:54907f781257cd06bc351683e622e22fddfc6185f06a62bc57ce759810a1d584" [label="/bin/sh -c apt-get -y install ruby2.2 ruby2.2-dev" shape="box"];
  "sha256:4911fc0066f070fc17311425b1a7d09d38957ba17f246fa9ec924fa2d443a991" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:4c7bb3bb2338ea14735f1ab92912240f10dd5e290e8b9f9a13d15eb81cbaaa6e" [label="/bin/sh -c apt-get -y install nodejs" shape="box"];
  "sha256:913791961a5adaa6f3e3525ea5f12a069cfe3412023fa6bebfe37af1da669fe9" [label="/bin/sh -c apt-get -y install git libxml2 libxml2-dev libxslt1-dev libssl-dev g++ zlib1g-dev checkinstall zip python-software-properties python2.7-dev python-pip make build-essential software-properties-common" shape="box"];
  "sha256:fdea0cc4fd652c6cb502468198d19835f6b21009598bd3c4e6c6331e1f6f3ceb" [label="/bin/sh -c pip install awsebcli" shape="box"];
  "sha256:8c266e223b175ddc6d4eb493186c5c9cfb235a40f2b86720b6362801b5521441" [label="sha256:8c266e223b175ddc6d4eb493186c5c9cfb235a40f2b86720b6362801b5521441" shape="plaintext"];
  "sha256:c4bcc2d1ab375d24f9005fd3726af4ee7a349a2840b3312b7ed0d2a8ea0d0dc4" -> "sha256:b8e333035d28e340cfe36823d7ef274c995b8cfc988ba30d75007ec27fd17572" [label=""];
  "sha256:b8e333035d28e340cfe36823d7ef274c995b8cfc988ba30d75007ec27fd17572" -> "sha256:aa57cda7850a00c921ed8725850a3850201662b972ca61fd5c2d05be79e16f85" [label=""];
  "sha256:aa57cda7850a00c921ed8725850a3850201662b972ca61fd5c2d05be79e16f85" -> "sha256:ddcc57edad9e1db2db03a81769f5a529483774da144b53dbb871385ef3b83507" [label=""];
  "sha256:ddcc57edad9e1db2db03a81769f5a529483774da144b53dbb871385ef3b83507" -> "sha256:9ccf9dcaa374bf49c50c919a452d23b8734caf2ec113918e81949460276c6c1d" [label=""];
  "sha256:9ccf9dcaa374bf49c50c919a452d23b8734caf2ec113918e81949460276c6c1d" -> "sha256:bc7e8e20a043fc636767734a0e0e9d6eb39c3c2318af8e564c0d1cd709d63854" [label=""];
  "sha256:bc7e8e20a043fc636767734a0e0e9d6eb39c3c2318af8e564c0d1cd709d63854" -> "sha256:54907f781257cd06bc351683e622e22fddfc6185f06a62bc57ce759810a1d584" [label=""];
  "sha256:54907f781257cd06bc351683e622e22fddfc6185f06a62bc57ce759810a1d584" -> "sha256:4911fc0066f070fc17311425b1a7d09d38957ba17f246fa9ec924fa2d443a991" [label=""];
  "sha256:4911fc0066f070fc17311425b1a7d09d38957ba17f246fa9ec924fa2d443a991" -> "sha256:4c7bb3bb2338ea14735f1ab92912240f10dd5e290e8b9f9a13d15eb81cbaaa6e" [label=""];
  "sha256:4c7bb3bb2338ea14735f1ab92912240f10dd5e290e8b9f9a13d15eb81cbaaa6e" -> "sha256:913791961a5adaa6f3e3525ea5f12a069cfe3412023fa6bebfe37af1da669fe9" [label=""];
  "sha256:913791961a5adaa6f3e3525ea5f12a069cfe3412023fa6bebfe37af1da669fe9" -> "sha256:fdea0cc4fd652c6cb502468198d19835f6b21009598bd3c4e6c6331e1f6f3ceb" [label=""];
  "sha256:fdea0cc4fd652c6cb502468198d19835f6b21009598bd3c4e6c6331e1f6f3ceb" -> "sha256:8c266e223b175ddc6d4eb493186c5c9cfb235a40f2b86720b6362801b5521441" [label=""];
}

