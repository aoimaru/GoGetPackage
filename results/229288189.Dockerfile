[app/sources/229288189.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:1670e88bb63240a6e5654583998bee5ffdf7c1645cdfe5e91e3e772ec41271d1" [label="/bin/sh -c gem update -N --system && gem install -N bundler" shape="box"];
  "sha256:99c259a957cf365092abd6bd7bfeeecf50e9da9b9c72e616af5631cb529a2b96" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:0ae0274a3af7eb9da17a45f0cdcd9e6edee52521e768275ccd6746e112f31d5e" [label="mkdir{path=/app}" shape="note"];
  "sha256:df0ccd52b1b5274bbb72b6affc911db6f726ab0553c7fdd4513bdf67911c087c" [label="local://context" shape="ellipse"];
  "sha256:9e94b825d9651a0fb4fbdb548b9a84b291e6d884a7567309fa211d1f67481d3d" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:a461e2c820b1413debc019d463a518ca2af9825cf336f646387662698f88e33a" [label="/bin/sh -c bundle install --jobs 4" shape="box"];
  "sha256:3d9b87ea7386555466e254a3dc5ca8f2009bde1991aa338878f875d5a806086e" [label="sha256:3d9b87ea7386555466e254a3dc5ca8f2009bde1991aa338878f875d5a806086e" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:1670e88bb63240a6e5654583998bee5ffdf7c1645cdfe5e91e3e772ec41271d1" [label=""];
  "sha256:1670e88bb63240a6e5654583998bee5ffdf7c1645cdfe5e91e3e772ec41271d1" -> "sha256:99c259a957cf365092abd6bd7bfeeecf50e9da9b9c72e616af5631cb529a2b96" [label=""];
  "sha256:99c259a957cf365092abd6bd7bfeeecf50e9da9b9c72e616af5631cb529a2b96" -> "sha256:0ae0274a3af7eb9da17a45f0cdcd9e6edee52521e768275ccd6746e112f31d5e" [label=""];
  "sha256:0ae0274a3af7eb9da17a45f0cdcd9e6edee52521e768275ccd6746e112f31d5e" -> "sha256:9e94b825d9651a0fb4fbdb548b9a84b291e6d884a7567309fa211d1f67481d3d" [label=""];
  "sha256:df0ccd52b1b5274bbb72b6affc911db6f726ab0553c7fdd4513bdf67911c087c" -> "sha256:9e94b825d9651a0fb4fbdb548b9a84b291e6d884a7567309fa211d1f67481d3d" [label=""];
  "sha256:9e94b825d9651a0fb4fbdb548b9a84b291e6d884a7567309fa211d1f67481d3d" -> "sha256:a461e2c820b1413debc019d463a518ca2af9825cf336f646387662698f88e33a" [label=""];
  "sha256:a461e2c820b1413debc019d463a518ca2af9825cf336f646387662698f88e33a" -> "sha256:3d9b87ea7386555466e254a3dc5ca8f2009bde1991aa338878f875d5a806086e" [label=""];
}

