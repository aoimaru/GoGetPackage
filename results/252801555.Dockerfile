[app/sources/252801555.Dockerfile]
digraph {
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" [label="docker-image://docker.io/library/ruby:2.4.1" shape="ellipse"];
  "sha256:204e7b628e03f93a744ece754992eaac5643860d37c1b7fa3701d207458ad77b" [label="/bin/sh -c gem install bundler && gem install smashing && curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs && apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3ecd5f134abd2d739a6c284cef5317f9235a060e4fa4c4f251e444330bcc4205" [label="sha256:3ecd5f134abd2d739a6c284cef5317f9235a060e4fa4c4f251e444330bcc4205" shape="plaintext"];
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" -> "sha256:204e7b628e03f93a744ece754992eaac5643860d37c1b7fa3701d207458ad77b" [label=""];
  "sha256:204e7b628e03f93a744ece754992eaac5643860d37c1b7fa3701d207458ad77b" -> "sha256:3ecd5f134abd2d739a6c284cef5317f9235a060e4fa4c4f251e444330bcc4205" [label=""];
}

