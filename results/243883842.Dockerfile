[app/sources/243883842.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:6949d14d766632cf10e16f1cfd927b5ace0c149b34fc944de4e439e046da3f07" [label="/bin/sh -c apt-get -q update" shape="box"];
  "sha256:65d79e715fd0842533437f44f5fdb12c24e4b7bd642a40449363f32519efc457" [label="/bin/sh -c apt-get -q install -y --no-install-recommends locales && locale-gen C.UTF-8" shape="box"];
  "sha256:a76648bfe6eee3634a1ed9667cfa3deff677c2c55562477f689449b1a33dcc07" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y   sudo   bzip2   curl   make   libncurses5   gawk   git   ca-certificates" shape="box"];
  "sha256:1bfdefab3767653fb22868d38539e3fb30f635e758b945cf93c37bfb11d82dad" [label="local://context" shape="ellipse"];
  "sha256:eec2742a21bf762a3d693bcfcef14ef002f5b390e5082e73b56b859300bcfae4" [label="copy{src=/scripts, dest=/tmp/scripts/}" shape="note"];
  "sha256:02b487b7153bcbe8a38b7facea62fee77ca052aed04573fc898165bc6855330a" [label="/bin/sh -c /tmp/scripts/install-toolchain.sh --prefix=/opt/arm-none-eabi" shape="box"];
  "sha256:4dbedf0d6b7bd97ccbea617aee943c9f75753d35f8ccc2e31b2b6f77c08aefe2" [label="/bin/sh -c curl -sSL https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc > /usr/local/bin/gh-md-toc     && chmod +x /usr/local/bin/gh-md-toc" shape="box"];
  "sha256:f98b060deec392323a8ce7147ec4df39405759c97f0d7f606255685cf1f4eacb" [label="/bin/sh -c useradd -m --uid $uid --user-group user     && echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/user     && chmod a=r,o= /etc/sudoers.d/user" shape="box"];
  "sha256:48612be2b41ff4cf37afde82003940827b9f7c3f37c03fd496195eca23ae8bf6" [label="sha256:48612be2b41ff4cf37afde82003940827b9f7c3f37c03fd496195eca23ae8bf6" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:6949d14d766632cf10e16f1cfd927b5ace0c149b34fc944de4e439e046da3f07" [label=""];
  "sha256:6949d14d766632cf10e16f1cfd927b5ace0c149b34fc944de4e439e046da3f07" -> "sha256:65d79e715fd0842533437f44f5fdb12c24e4b7bd642a40449363f32519efc457" [label=""];
  "sha256:65d79e715fd0842533437f44f5fdb12c24e4b7bd642a40449363f32519efc457" -> "sha256:a76648bfe6eee3634a1ed9667cfa3deff677c2c55562477f689449b1a33dcc07" [label=""];
  "sha256:a76648bfe6eee3634a1ed9667cfa3deff677c2c55562477f689449b1a33dcc07" -> "sha256:eec2742a21bf762a3d693bcfcef14ef002f5b390e5082e73b56b859300bcfae4" [label=""];
  "sha256:1bfdefab3767653fb22868d38539e3fb30f635e758b945cf93c37bfb11d82dad" -> "sha256:eec2742a21bf762a3d693bcfcef14ef002f5b390e5082e73b56b859300bcfae4" [label=""];
  "sha256:eec2742a21bf762a3d693bcfcef14ef002f5b390e5082e73b56b859300bcfae4" -> "sha256:02b487b7153bcbe8a38b7facea62fee77ca052aed04573fc898165bc6855330a" [label=""];
  "sha256:02b487b7153bcbe8a38b7facea62fee77ca052aed04573fc898165bc6855330a" -> "sha256:4dbedf0d6b7bd97ccbea617aee943c9f75753d35f8ccc2e31b2b6f77c08aefe2" [label=""];
  "sha256:4dbedf0d6b7bd97ccbea617aee943c9f75753d35f8ccc2e31b2b6f77c08aefe2" -> "sha256:f98b060deec392323a8ce7147ec4df39405759c97f0d7f606255685cf1f4eacb" [label=""];
  "sha256:f98b060deec392323a8ce7147ec4df39405759c97f0d7f606255685cf1f4eacb" -> "sha256:48612be2b41ff4cf37afde82003940827b9f7c3f37c03fd496195eca23ae8bf6" [label=""];
}

