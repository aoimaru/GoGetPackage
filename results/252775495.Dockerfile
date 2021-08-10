[app/sources/252775495.Dockerfile]
digraph {
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" [label="docker-image://docker.io/library/ruby:2.1" shape="ellipse"];
  "sha256:3891609ae471962096ff7b1dd11ab1622668f72e10e4f22aff1a0ce41433ec77" [label="/bin/sh -c mkdir -p /data/app" shape="box"];
  "sha256:2af843e59210416f0a967f564368d2f718d7ad0e4e62532b502aa5b92c4c0680" [label="local://context" shape="ellipse"];
  "sha256:ad594ec5d9024e87b1053af47cd95f250eb8aa25968c0d60e7c6a90fb1b278c5" [label="copy{src=/write-configs, dest=/data/app/},copy{src=/required-variables.txt, dest=/data/app/}" shape="note"];
  "sha256:53ee7befbb534af8ef94ae0c7a01fd61464dab428d183c3f0bb25d33e217edb4" [label="mkdir{path=/data/app}" shape="note"];
  "sha256:1f5047b1c286637c37b85da247e45c5dd63ae495435c1ec4869d68bd7d6fe533" [label="/bin/sh -c gem install newrelic_f5_plugin" shape="box"];
  "sha256:9c9899a2a9b17d123042612ad025d675c8f93b141536df3ace935ce27eaea725" [label="sha256:9c9899a2a9b17d123042612ad025d675c8f93b141536df3ace935ce27eaea725" shape="plaintext"];
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" -> "sha256:3891609ae471962096ff7b1dd11ab1622668f72e10e4f22aff1a0ce41433ec77" [label=""];
  "sha256:3891609ae471962096ff7b1dd11ab1622668f72e10e4f22aff1a0ce41433ec77" -> "sha256:ad594ec5d9024e87b1053af47cd95f250eb8aa25968c0d60e7c6a90fb1b278c5" [label=""];
  "sha256:2af843e59210416f0a967f564368d2f718d7ad0e4e62532b502aa5b92c4c0680" -> "sha256:ad594ec5d9024e87b1053af47cd95f250eb8aa25968c0d60e7c6a90fb1b278c5" [label=""];
  "sha256:ad594ec5d9024e87b1053af47cd95f250eb8aa25968c0d60e7c6a90fb1b278c5" -> "sha256:53ee7befbb534af8ef94ae0c7a01fd61464dab428d183c3f0bb25d33e217edb4" [label=""];
  "sha256:53ee7befbb534af8ef94ae0c7a01fd61464dab428d183c3f0bb25d33e217edb4" -> "sha256:1f5047b1c286637c37b85da247e45c5dd63ae495435c1ec4869d68bd7d6fe533" [label=""];
  "sha256:1f5047b1c286637c37b85da247e45c5dd63ae495435c1ec4869d68bd7d6fe533" -> "sha256:9c9899a2a9b17d123042612ad025d675c8f93b141536df3ace935ce27eaea725" [label=""];
}

