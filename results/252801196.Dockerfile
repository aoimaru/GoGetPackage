[app/sources/252801196.Dockerfile]
digraph {
  "sha256:727f86b45f0126781d552ce73367cf61463445ebabfddb2508079365886061fc" [label="local://context" shape="ellipse"];
  "sha256:9f9bbabc95c9138d1daf8af6bd7eff970e499d124e00c9c71cd60a375e49f7af" [label="docker-image://docker.io/library/ruby:2.2.2" shape="ellipse"];
  "sha256:f3d90729b331e5cf28d523c8cd986b3b823138aa2605caf4e0ffe1444a1a282a" [label="/bin/sh -c apt-get update && apt-get install -y net-tools" shape="box"];
  "sha256:29f3d70eb29a54575ecdd70a1624f0ff8354daca2962dc4fe0b92ce1238ebe9d" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:bbd0018da4044321e9bbc1a19d19144af300e0a97ff1bf34c477c7bd5e78ef5a" [label="mkdir{path=/book_search}" shape="note"];
  "sha256:e714fb029e520fc734f526f6b54d80a42b6e16cdb55eecc01cc56bd21fcff170" [label="copy{src=/Gemfile*, dest=/book_search/}" shape="note"];
  "sha256:e34f10b0a8a49ea832001c566893e9ab089d5d317dc0b3aca8a349777ebf3f0f" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d929f52292ae94a953fd6be9e074eab4794ea6ce559808d7cb15991b5dc6fc0b" [label="copy{src=/, dest=/book_search}" shape="note"];
  "sha256:bdcde542659a9002e4b04fd018a02b4b172b3c09a598ebd8488007b7e0928e1a" [label="sha256:bdcde542659a9002e4b04fd018a02b4b172b3c09a598ebd8488007b7e0928e1a" shape="plaintext"];
  "sha256:9f9bbabc95c9138d1daf8af6bd7eff970e499d124e00c9c71cd60a375e49f7af" -> "sha256:f3d90729b331e5cf28d523c8cd986b3b823138aa2605caf4e0ffe1444a1a282a" [label=""];
  "sha256:f3d90729b331e5cf28d523c8cd986b3b823138aa2605caf4e0ffe1444a1a282a" -> "sha256:29f3d70eb29a54575ecdd70a1624f0ff8354daca2962dc4fe0b92ce1238ebe9d" [label=""];
  "sha256:29f3d70eb29a54575ecdd70a1624f0ff8354daca2962dc4fe0b92ce1238ebe9d" -> "sha256:bbd0018da4044321e9bbc1a19d19144af300e0a97ff1bf34c477c7bd5e78ef5a" [label=""];
  "sha256:bbd0018da4044321e9bbc1a19d19144af300e0a97ff1bf34c477c7bd5e78ef5a" -> "sha256:e714fb029e520fc734f526f6b54d80a42b6e16cdb55eecc01cc56bd21fcff170" [label=""];
  "sha256:727f86b45f0126781d552ce73367cf61463445ebabfddb2508079365886061fc" -> "sha256:e714fb029e520fc734f526f6b54d80a42b6e16cdb55eecc01cc56bd21fcff170" [label=""];
  "sha256:e714fb029e520fc734f526f6b54d80a42b6e16cdb55eecc01cc56bd21fcff170" -> "sha256:e34f10b0a8a49ea832001c566893e9ab089d5d317dc0b3aca8a349777ebf3f0f" [label=""];
  "sha256:e34f10b0a8a49ea832001c566893e9ab089d5d317dc0b3aca8a349777ebf3f0f" -> "sha256:d929f52292ae94a953fd6be9e074eab4794ea6ce559808d7cb15991b5dc6fc0b" [label=""];
  "sha256:727f86b45f0126781d552ce73367cf61463445ebabfddb2508079365886061fc" -> "sha256:d929f52292ae94a953fd6be9e074eab4794ea6ce559808d7cb15991b5dc6fc0b" [label=""];
  "sha256:d929f52292ae94a953fd6be9e074eab4794ea6ce559808d7cb15991b5dc6fc0b" -> "sha256:bdcde542659a9002e4b04fd018a02b4b172b3c09a598ebd8488007b7e0928e1a" [label=""];
}

