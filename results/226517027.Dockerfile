[app/sources/226517027.Dockerfile]
digraph {
  "sha256:218c56afc6682e98a7cc206424dbac42a51b94613e1275f1ca2769928e2b977a" [label="docker-image://docker.io/library/ruby:2.3.1@sha256:a5ebd3bc0bf3881258975f8afa1c6d24429dfd4d7dd53a299559a3e927b77fd7" shape="ellipse"];
  "sha256:b391412bcedcd34cede2c8b8d9760a41ebba573a4cee978840d83b59b02ba6ad" [label="/bin/sh -c apt-get update -yqq   && apt-get install -yqq --no-install-recommends     postgresql-client     nodejs   && apt-get -q clean   && rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:d41302e8e4aa567737fb13dadef4cbd5293062c4d60befcc1334af77e5ce7d44" [label="/bin/sh -c gem install nokogiri -v \"1.6.8.1\"" shape="box"];
  "sha256:888358046a89dd72959d0aafa17f1de69270d4bfbd4dc97d07beb0e890e2c3e4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f6bb1d09ef9ebf44ebfb1fe9898032b1743466a3369558678c4676a6d6a02d49" [label="local://context" shape="ellipse"];
  "sha256:f6e29019a601f2e0b532b3989cf7717fb07bd75648183d4080381ab8d2654cd3" [label="copy{src=/Gemfile*, dest=/usr/src/app/}" shape="note"];
  "sha256:4580055b47bfbad59d89aa9fe35b3690d97a18a3700f0e82aad6063557d67520" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:06ad4e0285124d7cd4de8a1894fdfc9d1d786c4bf04242a48d16408ca6388cdf" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:3a64ca7dd9040bb41923617e9f7a1496bae7211435125d0101d01890642f2b5c" [label="/bin/sh -c rails assets:precompile" shape="box"];
  "sha256:fad61721b738daadeaffd7c6446b891813469b01f3ec17733bfcd19f167fa0b9" [label="sha256:fad61721b738daadeaffd7c6446b891813469b01f3ec17733bfcd19f167fa0b9" shape="plaintext"];
  "sha256:218c56afc6682e98a7cc206424dbac42a51b94613e1275f1ca2769928e2b977a" -> "sha256:b391412bcedcd34cede2c8b8d9760a41ebba573a4cee978840d83b59b02ba6ad" [label=""];
  "sha256:b391412bcedcd34cede2c8b8d9760a41ebba573a4cee978840d83b59b02ba6ad" -> "sha256:d41302e8e4aa567737fb13dadef4cbd5293062c4d60befcc1334af77e5ce7d44" [label=""];
  "sha256:d41302e8e4aa567737fb13dadef4cbd5293062c4d60befcc1334af77e5ce7d44" -> "sha256:888358046a89dd72959d0aafa17f1de69270d4bfbd4dc97d07beb0e890e2c3e4" [label=""];
  "sha256:888358046a89dd72959d0aafa17f1de69270d4bfbd4dc97d07beb0e890e2c3e4" -> "sha256:f6e29019a601f2e0b532b3989cf7717fb07bd75648183d4080381ab8d2654cd3" [label=""];
  "sha256:f6bb1d09ef9ebf44ebfb1fe9898032b1743466a3369558678c4676a6d6a02d49" -> "sha256:f6e29019a601f2e0b532b3989cf7717fb07bd75648183d4080381ab8d2654cd3" [label=""];
  "sha256:f6e29019a601f2e0b532b3989cf7717fb07bd75648183d4080381ab8d2654cd3" -> "sha256:4580055b47bfbad59d89aa9fe35b3690d97a18a3700f0e82aad6063557d67520" [label=""];
  "sha256:4580055b47bfbad59d89aa9fe35b3690d97a18a3700f0e82aad6063557d67520" -> "sha256:06ad4e0285124d7cd4de8a1894fdfc9d1d786c4bf04242a48d16408ca6388cdf" [label=""];
  "sha256:f6bb1d09ef9ebf44ebfb1fe9898032b1743466a3369558678c4676a6d6a02d49" -> "sha256:06ad4e0285124d7cd4de8a1894fdfc9d1d786c4bf04242a48d16408ca6388cdf" [label=""];
  "sha256:06ad4e0285124d7cd4de8a1894fdfc9d1d786c4bf04242a48d16408ca6388cdf" -> "sha256:3a64ca7dd9040bb41923617e9f7a1496bae7211435125d0101d01890642f2b5c" [label=""];
  "sha256:3a64ca7dd9040bb41923617e9f7a1496bae7211435125d0101d01890642f2b5c" -> "sha256:fad61721b738daadeaffd7c6446b891813469b01f3ec17733bfcd19f167fa0b9" [label=""];
}

