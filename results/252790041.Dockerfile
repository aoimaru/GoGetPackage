[app/sources/252790041.Dockerfile]
digraph {
  "sha256:b6ab5c31d905a64621822ca9d391bd0df3180add22431b5a6e6700129af30fc3" [label="docker-image://docker.io/camptocamp/collectd:v0.2.3" shape="ellipse"];
  "sha256:dece34790a8b02bba2547236b462dab70a62f4b957f8d72ccbb9bbc521088bf9" [label="/bin/sh -c apt-get update && apt-get -y upgrade && apt-get -y --no-install-suggests --no-install-recommends install libvarnishapi1 && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d27e7062a54ae3601800d6e52f0501ef9a2fdd7612d8824fcf370618fcbf297f" [label="local://context" shape="ellipse"];
  "sha256:0b73f031b9fc0ea2d67318306527faa887cadacba56cc004574215b06a72377f" [label="copy{src=/collectd.conf, dest=/etc/collectd/collectd.conf.d/varnish.conf}" shape="note"];
  "sha256:1456a2ad88de6a7d85fcbf96ab0136caed108fa736e82285d240103c741c703c" [label="sha256:1456a2ad88de6a7d85fcbf96ab0136caed108fa736e82285d240103c741c703c" shape="plaintext"];
  "sha256:b6ab5c31d905a64621822ca9d391bd0df3180add22431b5a6e6700129af30fc3" -> "sha256:dece34790a8b02bba2547236b462dab70a62f4b957f8d72ccbb9bbc521088bf9" [label=""];
  "sha256:dece34790a8b02bba2547236b462dab70a62f4b957f8d72ccbb9bbc521088bf9" -> "sha256:0b73f031b9fc0ea2d67318306527faa887cadacba56cc004574215b06a72377f" [label=""];
  "sha256:d27e7062a54ae3601800d6e52f0501ef9a2fdd7612d8824fcf370618fcbf297f" -> "sha256:0b73f031b9fc0ea2d67318306527faa887cadacba56cc004574215b06a72377f" [label=""];
  "sha256:0b73f031b9fc0ea2d67318306527faa887cadacba56cc004574215b06a72377f" -> "sha256:1456a2ad88de6a7d85fcbf96ab0136caed108fa736e82285d240103c741c703c" [label=""];
}

