[app/sources/167231522.Dockerfile]
digraph {
  "sha256:043e4a7a2f10cbc0f17f709cee1d0a5cfc091a99f45f588727fff35562dffb2b" [label="docker-image://docker.io/library/perl:latest" shape="ellipse"];
  "sha256:38f23fb00350e8ca185ed43f31ed294a6aa30421ff979688d1700cbe45ef8bdb" [label="/bin/sh -c apt-get update && apt-get install libdb-dev -y" shape="box"];
  "sha256:5a9fd49214ed192aa28331943e8df2ceafc1fc8cd21d646ea11131bed9d94098" [label="/bin/sh -c cpanm --force Capture::Tiny" shape="box"];
  "sha256:fc8a6aa70b9b18468c2201a9be35c35828eb5e6a35ae128bdd4e35a92a387ce4" [label="/bin/sh -c cpanm --force BioPerl" shape="box"];
  "sha256:95b2c49d9285c476956865ce4a64f0daa175f44ca11eeba784b51702f4f1acac" [label="/bin/sh -c cpanm File::Which" shape="box"];
  "sha256:890e920f3ecaf1086c31e814f819ecec1ffcd0787ffb26742db5026a377fe15a" [label="local://context" shape="ellipse"];
  "sha256:b5a23a8faba1bc436a525dd853dfc41cb2b848a997848ae8fc818de026e0210c" [label="copy{src=/wrapper_phage_contigs_sorter_iPlant.pl, dest=/usr/local/bin/}" shape="note"];
  "sha256:c9deb7a7d31007f8d1684d583f6072449815c8c6309e121f48d8ab4b1885266d" [label="copy{src=/Scripts, dest=/usr/local/bin/Scripts/}" shape="note"];
  "sha256:25b083f4ff787ece57b145234d1208610b79b9c70cadd7d54655c370e606fa9b" [label="copy{src=/bin, dest=/usr/local/bin/}" shape="note"];
  "sha256:c77d3b866d8f63247d6dd95e4d244e2f71ecd99f992191001ef3e0dbc763e816" [label="sha256:c77d3b866d8f63247d6dd95e4d244e2f71ecd99f992191001ef3e0dbc763e816" shape="plaintext"];
  "sha256:043e4a7a2f10cbc0f17f709cee1d0a5cfc091a99f45f588727fff35562dffb2b" -> "sha256:38f23fb00350e8ca185ed43f31ed294a6aa30421ff979688d1700cbe45ef8bdb" [label=""];
  "sha256:38f23fb00350e8ca185ed43f31ed294a6aa30421ff979688d1700cbe45ef8bdb" -> "sha256:5a9fd49214ed192aa28331943e8df2ceafc1fc8cd21d646ea11131bed9d94098" [label=""];
  "sha256:5a9fd49214ed192aa28331943e8df2ceafc1fc8cd21d646ea11131bed9d94098" -> "sha256:fc8a6aa70b9b18468c2201a9be35c35828eb5e6a35ae128bdd4e35a92a387ce4" [label=""];
  "sha256:fc8a6aa70b9b18468c2201a9be35c35828eb5e6a35ae128bdd4e35a92a387ce4" -> "sha256:95b2c49d9285c476956865ce4a64f0daa175f44ca11eeba784b51702f4f1acac" [label=""];
  "sha256:95b2c49d9285c476956865ce4a64f0daa175f44ca11eeba784b51702f4f1acac" -> "sha256:b5a23a8faba1bc436a525dd853dfc41cb2b848a997848ae8fc818de026e0210c" [label=""];
  "sha256:890e920f3ecaf1086c31e814f819ecec1ffcd0787ffb26742db5026a377fe15a" -> "sha256:b5a23a8faba1bc436a525dd853dfc41cb2b848a997848ae8fc818de026e0210c" [label=""];
  "sha256:b5a23a8faba1bc436a525dd853dfc41cb2b848a997848ae8fc818de026e0210c" -> "sha256:c9deb7a7d31007f8d1684d583f6072449815c8c6309e121f48d8ab4b1885266d" [label=""];
  "sha256:890e920f3ecaf1086c31e814f819ecec1ffcd0787ffb26742db5026a377fe15a" -> "sha256:c9deb7a7d31007f8d1684d583f6072449815c8c6309e121f48d8ab4b1885266d" [label=""];
  "sha256:c9deb7a7d31007f8d1684d583f6072449815c8c6309e121f48d8ab4b1885266d" -> "sha256:25b083f4ff787ece57b145234d1208610b79b9c70cadd7d54655c370e606fa9b" [label=""];
  "sha256:890e920f3ecaf1086c31e814f819ecec1ffcd0787ffb26742db5026a377fe15a" -> "sha256:25b083f4ff787ece57b145234d1208610b79b9c70cadd7d54655c370e606fa9b" [label=""];
  "sha256:25b083f4ff787ece57b145234d1208610b79b9c70cadd7d54655c370e606fa9b" -> "sha256:c77d3b866d8f63247d6dd95e4d244e2f71ecd99f992191001ef3e0dbc763e816" [label=""];
}

