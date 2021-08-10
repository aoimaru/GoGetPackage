[app/sources/148742974.Dockerfile]
digraph {
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" [label="docker-image://docker.io/library/ruby:2.5.3" shape="ellipse"];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label="mkdir{path=/opt/puppet}" shape="note"];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label="/bin/sh -c mkdir -p /etc/sv" shape="box"];
  "sha256:c2d3530f84bbf7e618aba77fac101cdff89771817c842979e9e72949a39ef9ff" [label="local://context" shape="ellipse"];
  "sha256:e46d40173b66491415c274d6033cd8c8f8020b069245cd9f82e7bbab8918ac66" [label="copy{src=/Gemfile, dest=/opt/puppet/}" shape="note"];
  "sha256:925798ebde38fe64541842c8bdef873b977bcc2a632f45d7f8a572e6bb1e186a" [label="/bin/sh -c bundle install --without system_tests development release --path=${BUNDLE_PATH:-vendor/bundle}" shape="box"];
  "sha256:72071cce9b3d8833eb42e8ae2f74168d1b650894bf3ed4aee540ada384cbc5b6" [label="copy{src=/, dest=/opt/puppet/}" shape="note"];
  "sha256:77fd05cc7202f6d174428f4c41712ccf0973396ead93877092587d06560ec9c7" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d3c7751220a795d0abf8dcc937938c22fc7ccddaa9f2359617a7001fcbdb9125" [label="/bin/sh -c bundle exec release_checks" shape="box"];
  "sha256:1d7c46260c63c440a1bf86ed87e9e8536b3fc1b482e7ddda3d445a83f0b0f040" [label="/bin/sh -c exit 1" shape="box"];
  "sha256:b5e403bd8df182be6b2e07eeba30a1055d60e34060da22a485cb7b53be253a99" [label="sha256:b5e403bd8df182be6b2e07eeba30a1055d60e34060da22a485cb7b53be253a99" shape="plaintext"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" -> "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label=""];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" -> "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label=""];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" -> "sha256:e46d40173b66491415c274d6033cd8c8f8020b069245cd9f82e7bbab8918ac66" [label=""];
  "sha256:c2d3530f84bbf7e618aba77fac101cdff89771817c842979e9e72949a39ef9ff" -> "sha256:e46d40173b66491415c274d6033cd8c8f8020b069245cd9f82e7bbab8918ac66" [label=""];
  "sha256:e46d40173b66491415c274d6033cd8c8f8020b069245cd9f82e7bbab8918ac66" -> "sha256:925798ebde38fe64541842c8bdef873b977bcc2a632f45d7f8a572e6bb1e186a" [label=""];
  "sha256:925798ebde38fe64541842c8bdef873b977bcc2a632f45d7f8a572e6bb1e186a" -> "sha256:72071cce9b3d8833eb42e8ae2f74168d1b650894bf3ed4aee540ada384cbc5b6" [label=""];
  "sha256:c2d3530f84bbf7e618aba77fac101cdff89771817c842979e9e72949a39ef9ff" -> "sha256:72071cce9b3d8833eb42e8ae2f74168d1b650894bf3ed4aee540ada384cbc5b6" [label=""];
  "sha256:72071cce9b3d8833eb42e8ae2f74168d1b650894bf3ed4aee540ada384cbc5b6" -> "sha256:77fd05cc7202f6d174428f4c41712ccf0973396ead93877092587d06560ec9c7" [label=""];
  "sha256:77fd05cc7202f6d174428f4c41712ccf0973396ead93877092587d06560ec9c7" -> "sha256:d3c7751220a795d0abf8dcc937938c22fc7ccddaa9f2359617a7001fcbdb9125" [label=""];
  "sha256:d3c7751220a795d0abf8dcc937938c22fc7ccddaa9f2359617a7001fcbdb9125" -> "sha256:1d7c46260c63c440a1bf86ed87e9e8536b3fc1b482e7ddda3d445a83f0b0f040" [label=""];
  "sha256:1d7c46260c63c440a1bf86ed87e9e8536b3fc1b482e7ddda3d445a83f0b0f040" -> "sha256:b5e403bd8df182be6b2e07eeba30a1055d60e34060da22a485cb7b53be253a99" [label=""];
}

