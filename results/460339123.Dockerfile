[app/sources/460339123.Dockerfile]
digraph {
  "sha256:335704e890541ad09e52d9401f839cfbcce43bba7e908752c33a70e04100a6c0" [label="docker-image://docker.io/balenalib/i386-golang:1.10.8" shape="ellipse"];
  "sha256:28c946f326011e2a09d21e5aa06327e5e319e6babcb840527b649683960a82dc" [label="/bin/sh -c apt-get update \t&& apt-get install -y \t\tbtrfs-tools \t\tlibapparmor-dev \t\tlibdevmapper-dev \t\tlibnl-3-dev \t\tlibsystemd-dev \t\tlibudev-dev" shape="box"];
  "sha256:280fefe9ce16cb83783c129535722a58e8a57ecd3e2b802a7202a47062cdf924" [label="local://context" shape="ellipse"];
  "sha256:116759706d8599706b2ddc53fab2f57056412e14ae26e5663f6db3faae3e3300" [label="copy{src=/, dest=/balena-engine}" shape="note"];
  "sha256:c26eb0faa92f0ae99d1fb4d8256bb4c6d9d5446b6c717048cd94c316849d3f16" [label="mkdir{path=/balena-engine}" shape="note"];
  "sha256:f2e47ceb6cd868885818c02fabd4506523b420baf52eede1237f37c2ee5abf82" [label="sha256:f2e47ceb6cd868885818c02fabd4506523b420baf52eede1237f37c2ee5abf82" shape="plaintext"];
  "sha256:335704e890541ad09e52d9401f839cfbcce43bba7e908752c33a70e04100a6c0" -> "sha256:28c946f326011e2a09d21e5aa06327e5e319e6babcb840527b649683960a82dc" [label=""];
  "sha256:28c946f326011e2a09d21e5aa06327e5e319e6babcb840527b649683960a82dc" -> "sha256:116759706d8599706b2ddc53fab2f57056412e14ae26e5663f6db3faae3e3300" [label=""];
  "sha256:280fefe9ce16cb83783c129535722a58e8a57ecd3e2b802a7202a47062cdf924" -> "sha256:116759706d8599706b2ddc53fab2f57056412e14ae26e5663f6db3faae3e3300" [label=""];
  "sha256:116759706d8599706b2ddc53fab2f57056412e14ae26e5663f6db3faae3e3300" -> "sha256:c26eb0faa92f0ae99d1fb4d8256bb4c6d9d5446b6c717048cd94c316849d3f16" [label=""];
  "sha256:c26eb0faa92f0ae99d1fb4d8256bb4c6d9d5446b6c717048cd94c316849d3f16" -> "sha256:f2e47ceb6cd868885818c02fabd4506523b420baf52eede1237f37c2ee5abf82" [label=""];
}

