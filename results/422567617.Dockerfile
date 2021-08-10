[app/sources/422567617.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:ab5aff6987b12fce361cec227f3120d7050ddcbea3e8fbe0c797e3e272157a98" [label="/bin/sh -c apt-get update     && apt-get install wget libc6-i386 ed -y" shape="box"];
  "sha256:839139ab7b21e701251607339f19c07ae971bd6d564e27f9a0be9454a59ac2dd" [label="/bin/sh -c mkdir $ESET_TEMP \t&& wget -N $ESET_URL --user=$ESET_USER --password=$ESET_PWD -P $ESET_TEMP \t&& chmod +x $ESET_TEMP/esets.amd64.deb.bin \t&& $ESET_TEMP/esets.amd64.deb.bin --skip-license" shape="box"];
  "sha256:73e12c58e8567ec4d4e1285241a100605d0d8d9a3b03cd4a7624e277fc138ff8" [label="local://context" shape="ellipse"];
  "sha256:d55f77c4f82930f0c0e2f0c9c924554e5d6883efa97cff714cd1add51621db12" [label="copy{src=/ERA-Endpoint.lic, dest=/etc/opt/eset/esets/license/ERA-Endpoint.lic}" shape="note"];
  "sha256:c27df2cc9c9025964c043244aa297606d327e514a0a0ee27339dce0e4a25cc85" [label="/bin/sh -c sed -i \"s/#av_update_username = \\\"\\\"/av_update_username = \\\"$ESET_USER\\\"/g\" $ESET_CONFIG_DIR/esets/esets.cfg \t&& sed -i \"s/#av_update_password = \\\"\\\"/av_update_password = \\\"$ESET_PWD\\\"/g\" $ESET_CONFIG_DIR/esets/esets.cfg \t&& $ESET_INSTALL_DIR/esets/sbin/esets_lic --import=$ESET_INSTALL_DIR/esets/etc/license/" shape="box"];
  "sha256:6a9d1d2946a9474e7d2de02d87948ec49a520a328a8cf5aed899387608c52d2e" [label="/bin/sh -c /opt/eset/esets/sbin/esets_update" shape="box"];
  "sha256:74dfb3b8f62b89dfbd2e97f3c5a4f01dad94487917982be1a1ca94f7a2c76fe7" [label="http://www.eicar.org/download/eicar.com.txt" shape="ellipse"];
  "sha256:859341ef59f8ecb77692afcdbec55591b32a3a988de4f32a3565faa5318c5f0b" [label="copy{src=/eicar.com.txt, dest=/eicar}" shape="note"];
  "sha256:3f1287060cf43d59e1afdc749fed3539078703b3b50e8f33fbb5e204d3a8f502" [label="/bin/sh -c /opt/eset/esets/sbin/esets_scan --clean-mode=NONE eicar ; exit 0" shape="box"];
  "sha256:248116c20f205f627f171c1bc1b5aea3ce8082a53336c8281c44166e01ae88c9" [label="/bin/sh -c rm -rf $ESET_TEMP" shape="box"];
  "sha256:3569da523ed1adbc786fe74a96c71a64133de3c34f1554abdf24eebaa6b27d38" [label="sha256:3569da523ed1adbc786fe74a96c71a64133de3c34f1554abdf24eebaa6b27d38" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:ab5aff6987b12fce361cec227f3120d7050ddcbea3e8fbe0c797e3e272157a98" [label=""];
  "sha256:ab5aff6987b12fce361cec227f3120d7050ddcbea3e8fbe0c797e3e272157a98" -> "sha256:839139ab7b21e701251607339f19c07ae971bd6d564e27f9a0be9454a59ac2dd" [label=""];
  "sha256:839139ab7b21e701251607339f19c07ae971bd6d564e27f9a0be9454a59ac2dd" -> "sha256:d55f77c4f82930f0c0e2f0c9c924554e5d6883efa97cff714cd1add51621db12" [label=""];
  "sha256:73e12c58e8567ec4d4e1285241a100605d0d8d9a3b03cd4a7624e277fc138ff8" -> "sha256:d55f77c4f82930f0c0e2f0c9c924554e5d6883efa97cff714cd1add51621db12" [label=""];
  "sha256:d55f77c4f82930f0c0e2f0c9c924554e5d6883efa97cff714cd1add51621db12" -> "sha256:c27df2cc9c9025964c043244aa297606d327e514a0a0ee27339dce0e4a25cc85" [label=""];
  "sha256:c27df2cc9c9025964c043244aa297606d327e514a0a0ee27339dce0e4a25cc85" -> "sha256:6a9d1d2946a9474e7d2de02d87948ec49a520a328a8cf5aed899387608c52d2e" [label=""];
  "sha256:6a9d1d2946a9474e7d2de02d87948ec49a520a328a8cf5aed899387608c52d2e" -> "sha256:859341ef59f8ecb77692afcdbec55591b32a3a988de4f32a3565faa5318c5f0b" [label=""];
  "sha256:74dfb3b8f62b89dfbd2e97f3c5a4f01dad94487917982be1a1ca94f7a2c76fe7" -> "sha256:859341ef59f8ecb77692afcdbec55591b32a3a988de4f32a3565faa5318c5f0b" [label=""];
  "sha256:859341ef59f8ecb77692afcdbec55591b32a3a988de4f32a3565faa5318c5f0b" -> "sha256:3f1287060cf43d59e1afdc749fed3539078703b3b50e8f33fbb5e204d3a8f502" [label=""];
  "sha256:3f1287060cf43d59e1afdc749fed3539078703b3b50e8f33fbb5e204d3a8f502" -> "sha256:248116c20f205f627f171c1bc1b5aea3ce8082a53336c8281c44166e01ae88c9" [label=""];
  "sha256:248116c20f205f627f171c1bc1b5aea3ce8082a53336c8281c44166e01ae88c9" -> "sha256:3569da523ed1adbc786fe74a96c71a64133de3c34f1554abdf24eebaa6b27d38" [label=""];
}

