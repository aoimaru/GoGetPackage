[app/sources/136748586.Dockerfile]
digraph {
  "sha256:07804fc537b4283ad973dd38ac90ea745f54abc4baccde3c078ac073f4da0946" [label="docker-image://docker.io/lambci/lambda:build-python3.6" shape="ellipse"];
  "sha256:bcdd6a94dbe6016be0d3fec3a5dc0099a4f79c6721baa1c896408e1e34a0d292" [label="/bin/sh -c mkdir -p \"/tmp/libmaxminddb-${LIBMAXMINDDB_VERSION}-build\"" shape="box"];
  "sha256:5442778afd0a2e5631a964a07e422ab9752526c7e44064bb94eb1b81ffb4560c" [label="mkdir{path=/tmp/libmaxminddb-1.3.2-build}" shape="note"];
  "sha256:139566f5bbcf99f979d361774e6a8c5abf0d7516c07b2e6b28ea4e0255cdd3c3" [label="/bin/sh -c curl -L -o \"libmaxminddb-${LIBMAXMINDDB_VERSION}.tar.gz\" \"https://github.com/maxmind/libmaxminddb/releases/download/${LIBMAXMINDDB_VERSION}/libmaxminddb-${LIBMAXMINDDB_VERSION}.tar.gz\"" shape="box"];
  "sha256:37aea1cc1dcf8671b9f9fda6c57e8e809653afe226300ce72d7f0fd8169f8f87" [label="/bin/sh -c tar xf \"libmaxminddb-${LIBMAXMINDDB_VERSION}.tar.gz\"" shape="box"];
  "sha256:1e4c1c7055fd57e251fc23ad0b3ef29ad825f7dfbc4f71bca6513868b88ac5a3" [label="mkdir{path=/tmp/libmaxminddb-1.3.2-build/libmaxminddb-1.3.2}" shape="note"];
  "sha256:aed7740f1fd4de1f51402364e82fd23818ca337adc82731476856d03952850ba" [label="/bin/sh -c ./configure --prefix=/opt/" shape="box"];
  "sha256:fde99a00e4a93d8dbbe183c5daeacc723bc39d2fabd9bd697529af17340a816e" [label="/bin/sh -c make -j 8" shape="box"];
  "sha256:c462cf6991b5a2795f3715fee4ff59a4ac6b2d91353429c83596d27e2f24ab81" [label="/bin/sh -c make install" shape="box"];
  "sha256:937d3f86f80cca8a69d68021d16d6d678f6f2b8c282b0bd6f62a2a6ac4c3587c" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:997462889216d4e55c3fd5948a1955daec62a4ed28a0d19668fe2ec7f6fff24a" [label="/bin/sh -c pip install   --target=/opt/python/   --global-option=build_ext --global-option=\"-L/var/lang/lib:/opt/lib\"   --global-option=build_ext --global-option=\"-I/var/lang/include/python3.6m:/opt/include\"   maxminddb" shape="box"];
  "sha256:4ae483fc286ccb0f2c6ed714b1481dcfc2421a0726953be5b5658bc9d735756d" [label="/bin/sh -c pip install --target=/opt/python/ geoip2" shape="box"];
  "sha256:1c79e53c7f52220dfbddb622f32b3c2c54b5213d724954091860c1896821f338" [label="/bin/sh -c mkdir /opt/maxminddb" shape="box"];
  "sha256:33f5bce447c64f41e5974be23051d2c07e5e43f7918465445a4d1d059ea95812" [label="mkdir{path=/opt/maxminddb}" shape="note"];
  "sha256:38cb9fb86a99b81fe20b91773b19d07301a3401e10ffe5690b5744a450b61ec4" [label="/bin/sh -c curl http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz | tar xz" shape="box"];
  "sha256:b92dd33ea8ce4ded06e0a711876e055ffdb3367dbaaee3df5e5dae765dd2b9a2" [label="/bin/sh -c curl http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.tar.gz | tar xz" shape="box"];
  "sha256:9dca01953d047b11bc9b41dc5605bc2305a5669accf31934559d1c4d2fb88967" [label="/bin/sh -c curl http://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN.tar.gz | tar xz" shape="box"];
  "sha256:68f6448363036ae846c15374077f944a529faac4376b44414c3d4099fbfab133" [label="/bin/sh -c mv */*.mmdb . && rm -r GeoLite2-{ASN,City,Country}_*/" shape="box"];
  "sha256:bf6ec23045db70c1e0228388ef97a1d9f8c48e725fc0aa5e4e7925195e26b92f" [label="mkdir{path=/var/task}" shape="note"];
  "sha256:5bccdd109f8976146be44927746b245458c6a9a6952521b67862224920de4eff" [label="sha256:5bccdd109f8976146be44927746b245458c6a9a6952521b67862224920de4eff" shape="plaintext"];
  "sha256:07804fc537b4283ad973dd38ac90ea745f54abc4baccde3c078ac073f4da0946" -> "sha256:bcdd6a94dbe6016be0d3fec3a5dc0099a4f79c6721baa1c896408e1e34a0d292" [label=""];
  "sha256:bcdd6a94dbe6016be0d3fec3a5dc0099a4f79c6721baa1c896408e1e34a0d292" -> "sha256:5442778afd0a2e5631a964a07e422ab9752526c7e44064bb94eb1b81ffb4560c" [label=""];
  "sha256:5442778afd0a2e5631a964a07e422ab9752526c7e44064bb94eb1b81ffb4560c" -> "sha256:139566f5bbcf99f979d361774e6a8c5abf0d7516c07b2e6b28ea4e0255cdd3c3" [label=""];
  "sha256:139566f5bbcf99f979d361774e6a8c5abf0d7516c07b2e6b28ea4e0255cdd3c3" -> "sha256:37aea1cc1dcf8671b9f9fda6c57e8e809653afe226300ce72d7f0fd8169f8f87" [label=""];
  "sha256:37aea1cc1dcf8671b9f9fda6c57e8e809653afe226300ce72d7f0fd8169f8f87" -> "sha256:1e4c1c7055fd57e251fc23ad0b3ef29ad825f7dfbc4f71bca6513868b88ac5a3" [label=""];
  "sha256:1e4c1c7055fd57e251fc23ad0b3ef29ad825f7dfbc4f71bca6513868b88ac5a3" -> "sha256:aed7740f1fd4de1f51402364e82fd23818ca337adc82731476856d03952850ba" [label=""];
  "sha256:aed7740f1fd4de1f51402364e82fd23818ca337adc82731476856d03952850ba" -> "sha256:fde99a00e4a93d8dbbe183c5daeacc723bc39d2fabd9bd697529af17340a816e" [label=""];
  "sha256:fde99a00e4a93d8dbbe183c5daeacc723bc39d2fabd9bd697529af17340a816e" -> "sha256:c462cf6991b5a2795f3715fee4ff59a4ac6b2d91353429c83596d27e2f24ab81" [label=""];
  "sha256:c462cf6991b5a2795f3715fee4ff59a4ac6b2d91353429c83596d27e2f24ab81" -> "sha256:937d3f86f80cca8a69d68021d16d6d678f6f2b8c282b0bd6f62a2a6ac4c3587c" [label=""];
  "sha256:937d3f86f80cca8a69d68021d16d6d678f6f2b8c282b0bd6f62a2a6ac4c3587c" -> "sha256:997462889216d4e55c3fd5948a1955daec62a4ed28a0d19668fe2ec7f6fff24a" [label=""];
  "sha256:997462889216d4e55c3fd5948a1955daec62a4ed28a0d19668fe2ec7f6fff24a" -> "sha256:4ae483fc286ccb0f2c6ed714b1481dcfc2421a0726953be5b5658bc9d735756d" [label=""];
  "sha256:4ae483fc286ccb0f2c6ed714b1481dcfc2421a0726953be5b5658bc9d735756d" -> "sha256:1c79e53c7f52220dfbddb622f32b3c2c54b5213d724954091860c1896821f338" [label=""];
  "sha256:1c79e53c7f52220dfbddb622f32b3c2c54b5213d724954091860c1896821f338" -> "sha256:33f5bce447c64f41e5974be23051d2c07e5e43f7918465445a4d1d059ea95812" [label=""];
  "sha256:33f5bce447c64f41e5974be23051d2c07e5e43f7918465445a4d1d059ea95812" -> "sha256:38cb9fb86a99b81fe20b91773b19d07301a3401e10ffe5690b5744a450b61ec4" [label=""];
  "sha256:38cb9fb86a99b81fe20b91773b19d07301a3401e10ffe5690b5744a450b61ec4" -> "sha256:b92dd33ea8ce4ded06e0a711876e055ffdb3367dbaaee3df5e5dae765dd2b9a2" [label=""];
  "sha256:b92dd33ea8ce4ded06e0a711876e055ffdb3367dbaaee3df5e5dae765dd2b9a2" -> "sha256:9dca01953d047b11bc9b41dc5605bc2305a5669accf31934559d1c4d2fb88967" [label=""];
  "sha256:9dca01953d047b11bc9b41dc5605bc2305a5669accf31934559d1c4d2fb88967" -> "sha256:68f6448363036ae846c15374077f944a529faac4376b44414c3d4099fbfab133" [label=""];
  "sha256:68f6448363036ae846c15374077f944a529faac4376b44414c3d4099fbfab133" -> "sha256:bf6ec23045db70c1e0228388ef97a1d9f8c48e725fc0aa5e4e7925195e26b92f" [label=""];
  "sha256:bf6ec23045db70c1e0228388ef97a1d9f8c48e725fc0aa5e4e7925195e26b92f" -> "sha256:5bccdd109f8976146be44927746b245458c6a9a6952521b67862224920de4eff" [label=""];
}

