[app/sources/326557123.Dockerfile]
digraph {
  "sha256:3d37aeca979eafeafa7e3b7e76550cb5601633e2d285a7720ac37bef1977e70b" [label="local://context" shape="ellipse"];
  "sha256:041e9b89133ed3ba3ea266dde11c1321ed295358abebc4823e900906d96aef09" [label="docker-image://docker.io/fortio/fortio.build:v12" shape="ellipse"];
  "sha256:11090ee23280ba6ce1fed9096ca54ea6bdd52cd7e33e9f0418a0a1287a46a6d0" [label="mkdir{path=/stage}" shape="note"];
  "sha256:ba2bebf56902e5ee11749fb5fa65559deacae4306b881e6ff0ff913c64510665" [label="docker-image://docker.io/library/release:latest" shape="ellipse"];
  "sha256:10b9f84fe4fdeb6cac81da49a6b2f9cb51990aa6a27d23f2c68e5fab0d3eb226" [label="copy{src=/usr/bin/fortio, dest=/stage/usr/bin/fortio}" shape="note"];
  "sha256:38f48876ddbcee80a0a0c1ba0e3528837b8374892aaad0f7077f808a9755c8df" [label="copy{src=/usr/share/fortio, dest=/stage/usr/share/fortio}" shape="note"];
  "sha256:b3171a1e15404fcec7260d50f094fdba0be946319c0f348f2c99a4f61387ba48" [label="copy{src=/docs/fortio.1, dest=/stage/usr/share/man/man1/fortio.1}" shape="note"];
  "sha256:63cd3b1b8c3aaf74e2167208a13d6adf559aa0ce3a51ca1b8094e32c4cf5d03c" [label="/bin/sh -c mkdir /tgz" shape="box"];
  "sha256:03a178a43fde9a505d2626600ef81d816db422d5a7cef137566e776185fad6f5" [label="/bin/sh -c tar cvf - usr/share/fortio/* usr/share/man/man1/fortio.1 usr/bin/fortio | gzip --best > /tgz/fortio-linux_x64-$(./usr/bin/fortio version -s).tgz" shape="box"];
  "sha256:1cea1c829a64a9da9b99b9ae707e287c6dd737df32d3ef342fdfe12cc936c3e3" [label="mkdir{path=/tgz}" shape="note"];
  "sha256:9e043638c9db486a6461859d5598dc2ac83391f48c4710fa540d24377683ea99" [label="copy{src=/release/ffpm.sh, dest=/}" shape="note"];
  "sha256:9dd8b59ebd12550205f48693e635487612272d04afb36fdc6a1049a7cdddf41e" [label="/bin/sh -c bash -x /ffpm.sh deb" shape="box"];
  "sha256:f7a31872c4bdc1cda2aba4ae90c2108febf3b52b148b580e2e18c21014aa733c" [label="/bin/sh -c bash -x /ffpm.sh rpm" shape="box"];
  "sha256:46ea864df911d72587358dfa66d4bbb67301d8e5c154849e9092a8bd56b252f5" [label="copy{src=/tgz, dest=/tgz/}" shape="note"];
  "sha256:81347c338aaaba6bea67fd4d255e1a061184e4975b3f68f0570c17574ea4b637" [label="sha256:81347c338aaaba6bea67fd4d255e1a061184e4975b3f68f0570c17574ea4b637" shape="plaintext"];
  "sha256:041e9b89133ed3ba3ea266dde11c1321ed295358abebc4823e900906d96aef09" -> "sha256:11090ee23280ba6ce1fed9096ca54ea6bdd52cd7e33e9f0418a0a1287a46a6d0" [label=""];
  "sha256:11090ee23280ba6ce1fed9096ca54ea6bdd52cd7e33e9f0418a0a1287a46a6d0" -> "sha256:10b9f84fe4fdeb6cac81da49a6b2f9cb51990aa6a27d23f2c68e5fab0d3eb226" [label=""];
  "sha256:ba2bebf56902e5ee11749fb5fa65559deacae4306b881e6ff0ff913c64510665" -> "sha256:10b9f84fe4fdeb6cac81da49a6b2f9cb51990aa6a27d23f2c68e5fab0d3eb226" [label=""];
  "sha256:10b9f84fe4fdeb6cac81da49a6b2f9cb51990aa6a27d23f2c68e5fab0d3eb226" -> "sha256:38f48876ddbcee80a0a0c1ba0e3528837b8374892aaad0f7077f808a9755c8df" [label=""];
  "sha256:ba2bebf56902e5ee11749fb5fa65559deacae4306b881e6ff0ff913c64510665" -> "sha256:38f48876ddbcee80a0a0c1ba0e3528837b8374892aaad0f7077f808a9755c8df" [label=""];
  "sha256:38f48876ddbcee80a0a0c1ba0e3528837b8374892aaad0f7077f808a9755c8df" -> "sha256:b3171a1e15404fcec7260d50f094fdba0be946319c0f348f2c99a4f61387ba48" [label=""];
  "sha256:3d37aeca979eafeafa7e3b7e76550cb5601633e2d285a7720ac37bef1977e70b" -> "sha256:b3171a1e15404fcec7260d50f094fdba0be946319c0f348f2c99a4f61387ba48" [label=""];
  "sha256:b3171a1e15404fcec7260d50f094fdba0be946319c0f348f2c99a4f61387ba48" -> "sha256:63cd3b1b8c3aaf74e2167208a13d6adf559aa0ce3a51ca1b8094e32c4cf5d03c" [label=""];
  "sha256:63cd3b1b8c3aaf74e2167208a13d6adf559aa0ce3a51ca1b8094e32c4cf5d03c" -> "sha256:03a178a43fde9a505d2626600ef81d816db422d5a7cef137566e776185fad6f5" [label=""];
  "sha256:03a178a43fde9a505d2626600ef81d816db422d5a7cef137566e776185fad6f5" -> "sha256:1cea1c829a64a9da9b99b9ae707e287c6dd737df32d3ef342fdfe12cc936c3e3" [label=""];
  "sha256:1cea1c829a64a9da9b99b9ae707e287c6dd737df32d3ef342fdfe12cc936c3e3" -> "sha256:9e043638c9db486a6461859d5598dc2ac83391f48c4710fa540d24377683ea99" [label=""];
  "sha256:3d37aeca979eafeafa7e3b7e76550cb5601633e2d285a7720ac37bef1977e70b" -> "sha256:9e043638c9db486a6461859d5598dc2ac83391f48c4710fa540d24377683ea99" [label=""];
  "sha256:9e043638c9db486a6461859d5598dc2ac83391f48c4710fa540d24377683ea99" -> "sha256:9dd8b59ebd12550205f48693e635487612272d04afb36fdc6a1049a7cdddf41e" [label=""];
  "sha256:9dd8b59ebd12550205f48693e635487612272d04afb36fdc6a1049a7cdddf41e" -> "sha256:f7a31872c4bdc1cda2aba4ae90c2108febf3b52b148b580e2e18c21014aa733c" [label=""];
  "sha256:f7a31872c4bdc1cda2aba4ae90c2108febf3b52b148b580e2e18c21014aa733c" -> "sha256:46ea864df911d72587358dfa66d4bbb67301d8e5c154849e9092a8bd56b252f5" [label=""];
  "sha256:46ea864df911d72587358dfa66d4bbb67301d8e5c154849e9092a8bd56b252f5" -> "sha256:81347c338aaaba6bea67fd4d255e1a061184e4975b3f68f0570c17574ea4b637" [label=""];
}

