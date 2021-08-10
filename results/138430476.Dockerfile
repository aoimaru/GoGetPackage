[app/sources/138430476.Dockerfile]
digraph {
  "sha256:73d636e3f8acb7e8734221dfa1aca22bbd9937071adcc0275583a1b8fdbb3f2f" [label="local://context" shape="ellipse"];
  "sha256:0f6159a2c8523c839bea95587c48928da07f1b05417f9ebb4ce7ed118f990a0e" [label="docker-image://docker.io/msati/docker-rvm:latest" shape="ellipse"];
  "sha256:29e672ad0463894b1855bf1720ead762eb46bcd03212d6ede269c04f124d7a7b" [label="/bin/sh -c apt-get update && apt-get install -y locales &&     dpkg-reconfigure locales &&     locale-gen C.UTF-8 &&     /usr/sbin/update-locale LANG=C.UTF-8 &&     echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen &&     locale-gen" shape="box"];
  "sha256:02bf07e0b08e965f2bbb16e628789bdc445760d3a3a56cb7fc4807c151862a7f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6bd0f5cb5a6886036e3e655a7a00eda78d4665c94dbc50f16c5a7284cda9f90c" [label="/bin/sh -c apt-get install -y libsqlite3-dev                        build-essential                        git" shape="box"];
  "sha256:6c772237c0837807759397c7fc5dd9e2e730d8510959d2a3032b9523049cd86e" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:bad5d9470b89d962e84ad1ed90f2c7a98ee9900178fdba6eb22168b4bd48fea4" [label="mkdir{path=/application}" shape="note"];
  "sha256:7a16578639a1cab64b3e3fb0bdee598d03dafc2b1b43b75ed6be6e3b26a93884" [label="/bin/sh -c mkdir -p $APP_HOME/lib/aasm/" shape="box"];
  "sha256:63e6358b59fc0357d7f91267e60516114fd5e9248c108a96f3c0dd18f8e27e49" [label="copy{src=/Gemfile*, dest=/application/}" shape="note"];
  "sha256:a1a73974b7ea3a78a312dec812a3931053afae118cb7f3cb5e4e11635008e938" [label="copy{src=/*.gemspec, dest=/application/}" shape="note"];
  "sha256:13724f2b940e2a6448801c135ae644c3e492c67d8bf9c234601148d24e4a7015" [label="copy{src=/lib/aasm/version.rb, dest=/application/lib/aasm/}" shape="note"];
  "sha256:287cc7fbe325a4a5775688fe1ced2ac6e76a6010c1a4248e530b37d394598114" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:533319a6cbc0ef3a71283b42c2ec28a822e3994041668473a86bbb66bbc92ef8" [label="copy{src=/, dest=/application}" shape="note"];
  "sha256:18b507a771d50dbd177730a68a87062adbe0ff262ecb475cf9a19846f0567244" [label="sha256:18b507a771d50dbd177730a68a87062adbe0ff262ecb475cf9a19846f0567244" shape="plaintext"];
  "sha256:0f6159a2c8523c839bea95587c48928da07f1b05417f9ebb4ce7ed118f990a0e" -> "sha256:29e672ad0463894b1855bf1720ead762eb46bcd03212d6ede269c04f124d7a7b" [label=""];
  "sha256:29e672ad0463894b1855bf1720ead762eb46bcd03212d6ede269c04f124d7a7b" -> "sha256:02bf07e0b08e965f2bbb16e628789bdc445760d3a3a56cb7fc4807c151862a7f" [label=""];
  "sha256:02bf07e0b08e965f2bbb16e628789bdc445760d3a3a56cb7fc4807c151862a7f" -> "sha256:6bd0f5cb5a6886036e3e655a7a00eda78d4665c94dbc50f16c5a7284cda9f90c" [label=""];
  "sha256:6bd0f5cb5a6886036e3e655a7a00eda78d4665c94dbc50f16c5a7284cda9f90c" -> "sha256:6c772237c0837807759397c7fc5dd9e2e730d8510959d2a3032b9523049cd86e" [label=""];
  "sha256:6c772237c0837807759397c7fc5dd9e2e730d8510959d2a3032b9523049cd86e" -> "sha256:bad5d9470b89d962e84ad1ed90f2c7a98ee9900178fdba6eb22168b4bd48fea4" [label=""];
  "sha256:bad5d9470b89d962e84ad1ed90f2c7a98ee9900178fdba6eb22168b4bd48fea4" -> "sha256:7a16578639a1cab64b3e3fb0bdee598d03dafc2b1b43b75ed6be6e3b26a93884" [label=""];
  "sha256:7a16578639a1cab64b3e3fb0bdee598d03dafc2b1b43b75ed6be6e3b26a93884" -> "sha256:63e6358b59fc0357d7f91267e60516114fd5e9248c108a96f3c0dd18f8e27e49" [label=""];
  "sha256:73d636e3f8acb7e8734221dfa1aca22bbd9937071adcc0275583a1b8fdbb3f2f" -> "sha256:63e6358b59fc0357d7f91267e60516114fd5e9248c108a96f3c0dd18f8e27e49" [label=""];
  "sha256:63e6358b59fc0357d7f91267e60516114fd5e9248c108a96f3c0dd18f8e27e49" -> "sha256:a1a73974b7ea3a78a312dec812a3931053afae118cb7f3cb5e4e11635008e938" [label=""];
  "sha256:73d636e3f8acb7e8734221dfa1aca22bbd9937071adcc0275583a1b8fdbb3f2f" -> "sha256:a1a73974b7ea3a78a312dec812a3931053afae118cb7f3cb5e4e11635008e938" [label=""];
  "sha256:a1a73974b7ea3a78a312dec812a3931053afae118cb7f3cb5e4e11635008e938" -> "sha256:13724f2b940e2a6448801c135ae644c3e492c67d8bf9c234601148d24e4a7015" [label=""];
  "sha256:73d636e3f8acb7e8734221dfa1aca22bbd9937071adcc0275583a1b8fdbb3f2f" -> "sha256:13724f2b940e2a6448801c135ae644c3e492c67d8bf9c234601148d24e4a7015" [label=""];
  "sha256:13724f2b940e2a6448801c135ae644c3e492c67d8bf9c234601148d24e4a7015" -> "sha256:287cc7fbe325a4a5775688fe1ced2ac6e76a6010c1a4248e530b37d394598114" [label=""];
  "sha256:287cc7fbe325a4a5775688fe1ced2ac6e76a6010c1a4248e530b37d394598114" -> "sha256:533319a6cbc0ef3a71283b42c2ec28a822e3994041668473a86bbb66bbc92ef8" [label=""];
  "sha256:73d636e3f8acb7e8734221dfa1aca22bbd9937071adcc0275583a1b8fdbb3f2f" -> "sha256:533319a6cbc0ef3a71283b42c2ec28a822e3994041668473a86bbb66bbc92ef8" [label=""];
  "sha256:533319a6cbc0ef3a71283b42c2ec28a822e3994041668473a86bbb66bbc92ef8" -> "sha256:18b507a771d50dbd177730a68a87062adbe0ff262ecb475cf9a19846f0567244" [label=""];
}

