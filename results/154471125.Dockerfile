[app/sources/154471125.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:da90fa2b4b3c73e7ee2267dbfb09aa9957a847afe754e05b85859e84d717dadd" [label="/bin/sh -c apt-get update && apt-get install -y     curl     python3-pip     python3-dateutil     python3-psycopg2     python3-astropy     python3-healpy     python3-matplotlib     python3-jsonrpclib-pelix     python3-h5py     python3-pyfftw" shape="box"];
  "sha256:2d992c323d1167bb7a95a22c62f4628bbc7e5b890f461b2153e94ea4eaebd32e" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0a386f8492b171f61194984dcfeec4337815c44c31b7f18397cbab9f8401b30e" [label="mkdir{path=/code}" shape="note"];
  "sha256:2eabe129b820f49c402db68a7e57677e49c4000be75a7d065b338f1c61d26dc0" [label="local://context" shape="ellipse"];
  "sha256:0e1b2edae8dc963bab861361c79af7073b6afbba1b80271101557255561058e9" [label="copy{src=/python_modules, dest=/code/}" shape="note"];
  "sha256:c9bf9be88ce4838ddd3c24c9f3c3127e48e837f531a80486442d59010be5d151" [label="mkdir{path=/code/tart}" shape="note"];
  "sha256:cd573c19e8bdf9a307eaf3405c0f0906a48628b9d693c873247993bd14ff1e33" [label="/bin/sh -c python3 setup.py install" shape="box"];
  "sha256:e92755c7603e3c8cb1bd28ef47eede2a9046309a6ad7342ee31e7ea002cb1fe1" [label="mkdir{path=/code/tart}" shape="note"];
  "sha256:d9f4b3d9a1a289ed0832c47c260bde1f665d530a2c5e8b4048622cc9e0d3d9d1" [label="sha256:d9f4b3d9a1a289ed0832c47c260bde1f665d530a2c5e8b4048622cc9e0d3d9d1" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:da90fa2b4b3c73e7ee2267dbfb09aa9957a847afe754e05b85859e84d717dadd" [label=""];
  "sha256:da90fa2b4b3c73e7ee2267dbfb09aa9957a847afe754e05b85859e84d717dadd" -> "sha256:2d992c323d1167bb7a95a22c62f4628bbc7e5b890f461b2153e94ea4eaebd32e" [label=""];
  "sha256:2d992c323d1167bb7a95a22c62f4628bbc7e5b890f461b2153e94ea4eaebd32e" -> "sha256:0a386f8492b171f61194984dcfeec4337815c44c31b7f18397cbab9f8401b30e" [label=""];
  "sha256:0a386f8492b171f61194984dcfeec4337815c44c31b7f18397cbab9f8401b30e" -> "sha256:0e1b2edae8dc963bab861361c79af7073b6afbba1b80271101557255561058e9" [label=""];
  "sha256:2eabe129b820f49c402db68a7e57677e49c4000be75a7d065b338f1c61d26dc0" -> "sha256:0e1b2edae8dc963bab861361c79af7073b6afbba1b80271101557255561058e9" [label=""];
  "sha256:0e1b2edae8dc963bab861361c79af7073b6afbba1b80271101557255561058e9" -> "sha256:c9bf9be88ce4838ddd3c24c9f3c3127e48e837f531a80486442d59010be5d151" [label=""];
  "sha256:c9bf9be88ce4838ddd3c24c9f3c3127e48e837f531a80486442d59010be5d151" -> "sha256:cd573c19e8bdf9a307eaf3405c0f0906a48628b9d693c873247993bd14ff1e33" [label=""];
  "sha256:cd573c19e8bdf9a307eaf3405c0f0906a48628b9d693c873247993bd14ff1e33" -> "sha256:e92755c7603e3c8cb1bd28ef47eede2a9046309a6ad7342ee31e7ea002cb1fe1" [label=""];
  "sha256:e92755c7603e3c8cb1bd28ef47eede2a9046309a6ad7342ee31e7ea002cb1fe1" -> "sha256:d9f4b3d9a1a289ed0832c47c260bde1f665d530a2c5e8b4048622cc9e0d3d9d1" [label=""];
}

