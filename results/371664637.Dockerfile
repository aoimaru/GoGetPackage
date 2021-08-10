[app/sources/371664637.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:87ddbcd29825a2fb25321fcdad04dbd00733df94afe05eccdb13764fdf1b552a" [label="/bin/sh -c apt-get -qq update && \tapt-get -qqy install   libssl1.0.0 \tfontconfig \tlibfontconfig1 \tlibfreetype6 \tlibjpeg-turbo8 \tlibx11-6 \tlibxext6 \tlibxrender1 \txfonts-base \txfonts-75dpi \txz-utils" shape="box"];
  "sha256:c17b037cf08d3ce8cbd37ec389232f78f1c1fe50c11f24ee71ad12c0ba63e4e2" [label="/bin/sh -c mkdir /tmp/wkhtmltox" shape="box"];
  "sha256:e55b3ea27f4c5d337147077880edb05a7f0ed9ee13033934f26c7cb932e2fb2e" [label="mkdir{path=/tmp/wkhtmltox}" shape="note"];
  "sha256:b154338f7ce6463f443c4d5fefd354f15eefc1a388488542a6c17b4d253c2061" [label="https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" shape="ellipse"];
  "sha256:7d1854a1468711f9c87e8248626c07d23276619d220157894573645c38747d9c" [label="copy{src=/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz, dest=/tmp/wkhtmltox/}" shape="note"];
  "sha256:8d5dc9b7c890beed99f27003558ec8aeac8659367e07ecdb808982691b21956b" [label="/bin/sh -c tar xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz &&\tmv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/" shape="box"];
  "sha256:f02d2628dbff0817750340ebf41ed9524736eef2886e9e68b178276b1cd93972" [label="/bin/sh -c rm -fr /tmp/wkhtmltox" shape="box"];
  "sha256:40cb1ee07fc96fd17ba5efd054c04ae9ff9513b1c1d7da951a10a384e4bf7c93" [label="local://context" shape="ellipse"];
  "sha256:1ba3635f741b5e0454ca9d8f429b0cc698491a02533c8b533a7639f02772dad5" [label="copy{src=/pdfgen, dest=/usr/local/bin/pdfgen}" shape="note"];
  "sha256:ecd27a7b6233e7f2526a6c7190d1d9118bb2643cf340b908324fc7399941737e" [label="sha256:ecd27a7b6233e7f2526a6c7190d1d9118bb2643cf340b908324fc7399941737e" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:87ddbcd29825a2fb25321fcdad04dbd00733df94afe05eccdb13764fdf1b552a" [label=""];
  "sha256:87ddbcd29825a2fb25321fcdad04dbd00733df94afe05eccdb13764fdf1b552a" -> "sha256:c17b037cf08d3ce8cbd37ec389232f78f1c1fe50c11f24ee71ad12c0ba63e4e2" [label=""];
  "sha256:c17b037cf08d3ce8cbd37ec389232f78f1c1fe50c11f24ee71ad12c0ba63e4e2" -> "sha256:e55b3ea27f4c5d337147077880edb05a7f0ed9ee13033934f26c7cb932e2fb2e" [label=""];
  "sha256:e55b3ea27f4c5d337147077880edb05a7f0ed9ee13033934f26c7cb932e2fb2e" -> "sha256:7d1854a1468711f9c87e8248626c07d23276619d220157894573645c38747d9c" [label=""];
  "sha256:b154338f7ce6463f443c4d5fefd354f15eefc1a388488542a6c17b4d253c2061" -> "sha256:7d1854a1468711f9c87e8248626c07d23276619d220157894573645c38747d9c" [label=""];
  "sha256:7d1854a1468711f9c87e8248626c07d23276619d220157894573645c38747d9c" -> "sha256:8d5dc9b7c890beed99f27003558ec8aeac8659367e07ecdb808982691b21956b" [label=""];
  "sha256:8d5dc9b7c890beed99f27003558ec8aeac8659367e07ecdb808982691b21956b" -> "sha256:f02d2628dbff0817750340ebf41ed9524736eef2886e9e68b178276b1cd93972" [label=""];
  "sha256:f02d2628dbff0817750340ebf41ed9524736eef2886e9e68b178276b1cd93972" -> "sha256:1ba3635f741b5e0454ca9d8f429b0cc698491a02533c8b533a7639f02772dad5" [label=""];
  "sha256:40cb1ee07fc96fd17ba5efd054c04ae9ff9513b1c1d7da951a10a384e4bf7c93" -> "sha256:1ba3635f741b5e0454ca9d8f429b0cc698491a02533c8b533a7639f02772dad5" [label=""];
  "sha256:1ba3635f741b5e0454ca9d8f429b0cc698491a02533c8b533a7639f02772dad5" -> "sha256:ecd27a7b6233e7f2526a6c7190d1d9118bb2643cf340b908324fc7399941737e" [label=""];
}

