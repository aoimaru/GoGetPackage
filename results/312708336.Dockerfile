[app/sources/312708336.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:872fa98a827582e49096472eef1e5d36e8015f3244f1286974af553bcfb5aa22" [label="/bin/sh -c yum update -y \t&& yum groupinstall -y \"Development Tools\" \t&& yum install -y wget tar gcc-c++" shape="box"];
  "sha256:06bd04a0890a29c814c32034d19c83e0e833a1d0b57cdd1c3dbc2e0cdd919476" [label="/bin/sh -c yum install -y \tlibpng-devel \tglib2-devel \tlibjpeg-devel \texpat-devel \tpango-devel \tzlib-devel" shape="box"];
  "sha256:a4d9cb190090f96a0303854027ab30bc8f29ee3ba01e91d162e2f903a79b320c" [label="/bin/sh -c cd /usr/local/src \t&& wget ${VIPS_URL}/v${VIPS_VERSION}/vips-${VIPS_VERSION}.tar.gz \t&& tar xzf vips-${VIPS_VERSION}.tar.gz \t&& cd vips-${VIPS_VERSION} \t&& ./configure \t&& make \t&& make install" shape="box"];
  "sha256:e4bbfd96f75334d8a67b6e5478fa5a368503a2373e93fc7d40656dd584d72c00" [label="/bin/sh -c yum install -y \tgdb \tgtk2-devel \tlibxml2-devel \tbison \tflex" shape="box"];
  "sha256:179a13b9ff1523e5314e992e9c013e96e57dbff909cdb4c9ed9f2f7fe8661eb9" [label="/bin/sh -c cd /usr/local/src \t&& wget ${NIP2_URL}/nip2-${NIP2_VERSION}.tar.gz \t&& tar xzf nip2-${NIP2_VERSION}.tar.gz \t&& cd nip2-${NIP2_VERSION} \t&& export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig \t&& ./configure \t&& make \t&& make install" shape="box"];
  "sha256:c23f000f34867834dee0477ada2b9bd2f9fd5a2a2871853bba303b8b0e74a362" [label="sha256:c23f000f34867834dee0477ada2b9bd2f9fd5a2a2871853bba303b8b0e74a362" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:872fa98a827582e49096472eef1e5d36e8015f3244f1286974af553bcfb5aa22" [label=""];
  "sha256:872fa98a827582e49096472eef1e5d36e8015f3244f1286974af553bcfb5aa22" -> "sha256:06bd04a0890a29c814c32034d19c83e0e833a1d0b57cdd1c3dbc2e0cdd919476" [label=""];
  "sha256:06bd04a0890a29c814c32034d19c83e0e833a1d0b57cdd1c3dbc2e0cdd919476" -> "sha256:a4d9cb190090f96a0303854027ab30bc8f29ee3ba01e91d162e2f903a79b320c" [label=""];
  "sha256:a4d9cb190090f96a0303854027ab30bc8f29ee3ba01e91d162e2f903a79b320c" -> "sha256:e4bbfd96f75334d8a67b6e5478fa5a368503a2373e93fc7d40656dd584d72c00" [label=""];
  "sha256:e4bbfd96f75334d8a67b6e5478fa5a368503a2373e93fc7d40656dd584d72c00" -> "sha256:179a13b9ff1523e5314e992e9c013e96e57dbff909cdb4c9ed9f2f7fe8661eb9" [label=""];
  "sha256:179a13b9ff1523e5314e992e9c013e96e57dbff909cdb4c9ed9f2f7fe8661eb9" -> "sha256:c23f000f34867834dee0477ada2b9bd2f9fd5a2a2871853bba303b8b0e74a362" [label=""];
}

