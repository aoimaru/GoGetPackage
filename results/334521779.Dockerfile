[app/sources/334521779.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1a2494c42f648b52b735232c314de3e3954cf2906c59535c60e9b478476f7df4" [label="/bin/sh -c go get -u github.com/gopherjs/gopherjs" shape="box"];
  "sha256:128b2cb12999ee16b152092680e7cffcb8c8cd8da429f3f2f673e060dd87a7b2" [label="/bin/sh -c go get -u honnef.co/go/js/dom" shape="box"];
  "sha256:88ec6f410c9a09ba0be2605f56a6c35761c4ef89c9a90f67b160b6772cfd82fd" [label="/bin/sh -c go get -u -d -tags=js github.com/gopherjs/jsbuiltin" shape="box"];
  "sha256:a8e4819b6e00771694845908b502a5d6e05bd9ab18eb0308323762447f9a7d01" [label="/bin/sh -c go get -u honnef.co/go/js/xhr" shape="box"];
  "sha256:0a2ed2c76dfe8f6ce3604328c209e168c732904098e80607f20434fb90c43c07" [label="/bin/sh -c go get -u github.com/gopherjs/websocket" shape="box"];
  "sha256:a8fa277802e5c919899655dc606a80851cd2cedaaf31ae0a045c77172d1c6630" [label="/bin/sh -c go get -u github.com/tdewolff/minify/cmd/minify" shape="box"];
  "sha256:90d617f5dfd6f799b80a5da368ecbce4a443fffe1bb104f189cdc94aed67125d" [label="/bin/sh -c go get -u github.com/isomorphicgo/isokit" shape="box"];
  "sha256:d320e6e7eff8b88fc5181cce7c343dbbdb95ef19295d106a989c864d831c64c1" [label="/bin/sh -c go get -u github.com/uxtoolkit/cog" shape="box"];
  "sha256:35ef5c8353090649b61ce0f0feb32b63b9a484f7cb4269de0073f6e46ce6c43e" [label="/bin/sh -c go get -u github.com/EngineerKamesh/igb" shape="box"];
  "sha256:ac5a9a12829e3f27bdba27a3bc7e289651b0f284b0482880435fdb40e006ef1a" [label="/bin/sh -c go install github.com/tdewolff/minify" shape="box"];
  "sha256:12330a953cd29ea21417bd4f58e2eb9c7161f66b25b30d0f7305cf819de5c2db" [label="/bin/sh -c cd $IGWEB_APP_ROOT/client; go get ./..; /go/bin/gopherjs build -m --verbose --tags clientonly -o $IGWEB_APP_ROOT/static/js/client.min.js" shape="box"];
  "sha256:d7278859bd893e1e5ddcd5abf1955aba9f9a7e14bccd7129a5606bbdc787e198" [label="/bin/sh -c go install github.com/EngineerKamesh/igb/igweb" shape="box"];
  "sha256:8f5b92b209c01d188287593f37ef0b55b50e032e5e2c8d02acdc6d02bae3d54d" [label="/bin/sh -c /go/bin/igweb --generate-static-assets" shape="box"];
  "sha256:9de93c476c1945d954708050df5c5aeb3bf5b3b7e869e961c84a84241bfb5674" [label="/bin/sh -c /go/bin/minify --mime=\"text/css\" $IGWEB_APP_ROOT/static/css/igweb.css > $IGWEB_APP_ROOT/static/css/igweb.min.css" shape="box"];
  "sha256:780b1f50dd659705bb31888379476b42479f4f2e6761c31dd3d16ac7d83fe5cb" [label="sha256:780b1f50dd659705bb31888379476b42479f4f2e6761c31dd3d16ac7d83fe5cb" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1a2494c42f648b52b735232c314de3e3954cf2906c59535c60e9b478476f7df4" [label=""];
  "sha256:1a2494c42f648b52b735232c314de3e3954cf2906c59535c60e9b478476f7df4" -> "sha256:128b2cb12999ee16b152092680e7cffcb8c8cd8da429f3f2f673e060dd87a7b2" [label=""];
  "sha256:128b2cb12999ee16b152092680e7cffcb8c8cd8da429f3f2f673e060dd87a7b2" -> "sha256:88ec6f410c9a09ba0be2605f56a6c35761c4ef89c9a90f67b160b6772cfd82fd" [label=""];
  "sha256:88ec6f410c9a09ba0be2605f56a6c35761c4ef89c9a90f67b160b6772cfd82fd" -> "sha256:a8e4819b6e00771694845908b502a5d6e05bd9ab18eb0308323762447f9a7d01" [label=""];
  "sha256:a8e4819b6e00771694845908b502a5d6e05bd9ab18eb0308323762447f9a7d01" -> "sha256:0a2ed2c76dfe8f6ce3604328c209e168c732904098e80607f20434fb90c43c07" [label=""];
  "sha256:0a2ed2c76dfe8f6ce3604328c209e168c732904098e80607f20434fb90c43c07" -> "sha256:a8fa277802e5c919899655dc606a80851cd2cedaaf31ae0a045c77172d1c6630" [label=""];
  "sha256:a8fa277802e5c919899655dc606a80851cd2cedaaf31ae0a045c77172d1c6630" -> "sha256:90d617f5dfd6f799b80a5da368ecbce4a443fffe1bb104f189cdc94aed67125d" [label=""];
  "sha256:90d617f5dfd6f799b80a5da368ecbce4a443fffe1bb104f189cdc94aed67125d" -> "sha256:d320e6e7eff8b88fc5181cce7c343dbbdb95ef19295d106a989c864d831c64c1" [label=""];
  "sha256:d320e6e7eff8b88fc5181cce7c343dbbdb95ef19295d106a989c864d831c64c1" -> "sha256:35ef5c8353090649b61ce0f0feb32b63b9a484f7cb4269de0073f6e46ce6c43e" [label=""];
  "sha256:35ef5c8353090649b61ce0f0feb32b63b9a484f7cb4269de0073f6e46ce6c43e" -> "sha256:ac5a9a12829e3f27bdba27a3bc7e289651b0f284b0482880435fdb40e006ef1a" [label=""];
  "sha256:ac5a9a12829e3f27bdba27a3bc7e289651b0f284b0482880435fdb40e006ef1a" -> "sha256:12330a953cd29ea21417bd4f58e2eb9c7161f66b25b30d0f7305cf819de5c2db" [label=""];
  "sha256:12330a953cd29ea21417bd4f58e2eb9c7161f66b25b30d0f7305cf819de5c2db" -> "sha256:d7278859bd893e1e5ddcd5abf1955aba9f9a7e14bccd7129a5606bbdc787e198" [label=""];
  "sha256:d7278859bd893e1e5ddcd5abf1955aba9f9a7e14bccd7129a5606bbdc787e198" -> "sha256:8f5b92b209c01d188287593f37ef0b55b50e032e5e2c8d02acdc6d02bae3d54d" [label=""];
  "sha256:8f5b92b209c01d188287593f37ef0b55b50e032e5e2c8d02acdc6d02bae3d54d" -> "sha256:9de93c476c1945d954708050df5c5aeb3bf5b3b7e869e961c84a84241bfb5674" [label=""];
  "sha256:9de93c476c1945d954708050df5c5aeb3bf5b3b7e869e961c84a84241bfb5674" -> "sha256:780b1f50dd659705bb31888379476b42479f4f2e6761c31dd3d16ac7d83fe5cb" [label=""];
}

