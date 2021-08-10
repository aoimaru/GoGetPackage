[app/sources/305352023.Dockerfile]
digraph {
  "sha256:c1213138226b20f1d38fcc6c5848768997beeb0120cdc661e4fc7b3a06b6c8df" [label="docker-image://docker.io/opensuse/tumbleweed@sha256:ec43ce0da1caef8800c7c3074c0cfadb971c6c8f54a0ab3b3428821f67d72ded" shape="ellipse"];
  "sha256:8f899a19228c4190ae086de5704f32fa0048c7130a310005c50f3b23bed890c8" [label="/bin/sh -c zypper in -y autoconf-archive gcc gcc-c++ make cmake libcurl-devel hiredis-devel openssl openssl-devel libmemcached-devel zlib-devel libuuid-devel unixODBC unixODBC-devel unzip wget netcat-openbsd tar gzip" shape="box"];
  "sha256:e686b1814536f72b4d0f816380619b796e975a8ced19962a374d02242374ac04" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:7726378623f099ae604df7c008a615f4ba7a63ceaa2bd8ed71d4c67b9a237acb" [label="/bin/sh -c wget -q https://github.com/mongodb/mongo-c-driver/releases/download/1.4.0/mongo-c-driver-1.4.0.tar.gz" shape="box"];
  "sha256:223458cf22871bd578b5065a4051b3c6dcb81b382e0d7ee746a2a3331bc288a8" [label="/bin/sh -c tar xf mongo-c-driver-1.4.0.tar.gz" shape="box"];
  "sha256:ef2ebdf3e082bf01d535ad8521a31d959bedee09d6caea3ea844b2db53e92c49" [label="mkdir{path=/tmp/mongo-c-driver-1.4.0}" shape="note"];
  "sha256:e48785842f3c0d0bcadfce7c588367c91735b98dcb9f616e4b9086a5670f58df" [label="/bin/sh -c ./configure --prefix=/usr/local --libdir=/usr/local --disable-automatic-init-and-cleanup" shape="box"];
  "sha256:91b07b616da09d2fdec21a4a5df03facc69d596b7ec555d708d2dbe30f0f7481" [label="/bin/sh -c make && make install" shape="box"];
  "sha256:f18ff4fd1faa61929829c07ba11da8d5e5eb88b8f0e803972ee2e57c45dca507" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:080922c86ad984cfd0fbd353aa5fa83001a59b7567fff07d48cba0acdea52617" [label="/bin/sh -c rm -rf /tmp/mongo-c-driver-1.4.0" shape="box"];
  "sha256:e68be0918036f3bc56599c148ee4baf03aecc064a4bb41de59e71109b3f86483" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:e9c642376e224c17dd3da1dbd306e34579c3e469a23b2e9e132154f6455a3ef3" [label="/bin/sh -c wget -q https://github.com/efficient/libcuckoo/archive/master.zip" shape="box"];
  "sha256:a7e48476079d93ba5ad28ce7825fedeb4e52140660afc6543eace87f8082fb84" [label="/bin/sh -c unzip master.zip" shape="box"];
  "sha256:8d70cbba5e5c02899048376377e4158b880515c266d20cc4c022c106a5cab50d" [label="/bin/sh -c rm -f master.zip" shape="box"];
  "sha256:5025ccf00aef00bf9d5b7e214e0e45339784ba3d29a53e932a1f4f7b7442f25a" [label="mkdir{path=/tmp/libcuckoo-master}" shape="note"];
  "sha256:ede475f2189694a8abec5676100b217ae5bab10d467cecc770353569ea32115a" [label="/bin/sh -c cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ ." shape="box"];
  "sha256:d6e6aeea9585dcec2c7c5275ae03fc9235f4c8e10ac38bf15e4fb20659096f23" [label="/bin/sh -c make install" shape="box"];
  "sha256:515af6c127a9b4eb0a5085eabca5093ef020471d8fe9a6f2df54fed334d5a3ac" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:183bed97c4a72b02f062500d1785400598a90b915b67f315ebfbb6439a576b1e" [label="/bin/sh -c rm -rf /tmp/libcuckoo-master" shape="box"];
  "sha256:d941d9bc45b98891f56dc86f3d16205a78a7188084c6640cc10239949efc6236" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:14aa80c3a11bec6a152001b5d2bda08ac2d9dc27c2edb5b10830a26888bccce3" [label="/bin/sh -c wget -q https://github.com/sumeetchhetri/ffead-cpp/archive/master.zip" shape="box"];
  "sha256:c0e1f2eb4b5ad02f5b089590200eb77015be1985b024c94f20daaafe0cb982c6" [label="/bin/sh -c unzip master.zip" shape="box"];
  "sha256:5ad5dc2f11462282387cb2d1e352162e9304d93ba36d4c92ac59e2d5c9fced4f" [label="/bin/sh -c rm -f master.zip" shape="box"];
  "sha256:ccfcd90a550f0be54b729bee2d0971b5d089ded72dc9606e468d8468491ea46a" [label="/bin/sh -c mv ffead-cpp-master ffead-cpp-src" shape="box"];
  "sha256:dab8cbf5478a81951c52331c9538a331929bbae8df7b5464ddee27c0e8d49ad9" [label="mkdir{path=/tmp/ffead-cpp-src}" shape="note"];
  "sha256:a078b384de4b62df94d94a17be8135a45f9f978d27f799cf9bf6cdb24947d1c6" [label="/bin/sh -c cmake ." shape="box"];
  "sha256:5a97029124393001a332f3536ed38a8d6f6dec4b555d3c0be913aecec503a54a" [label="/bin/sh -c make install -j4" shape="box"];
  "sha256:2ba29f5f672e77bb3169c17e6f404753247963014e937bd6ebcdf0874ae10862" [label="/bin/sh -c mv /tmp/ffead-cpp-src/ffead-cpp-3.0-bin /tmp/" shape="box"];
  "sha256:78abcc76d09635010deaddc2aff3cd685411f0ba73f7afe26def875e4b133b39" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:08a0c60dae8206e274e0ab5b7fcf2ddaa31097f4e52ef68b61e70846c3368bd9" [label="/bin/sh -c rm -rf /tmp/ffead-cpp-src" shape="box"];
  "sha256:d052a673da8c24f9a63ed651dab24bf5729d7bf6fd2fc7052dc2c3d9ab0350b6" [label="mkdir{path=/opt}" shape="note"];
  "sha256:d1d96f4d9e44c34e29b6b01251e6517ccf31192ff18d41f22386ba9c34f8b705" [label="local://context" shape="ellipse"];
  "sha256:5cb600be273f62d8169d33bd180a02366d83f9ec6489abaec2f4ab48f485d756" [label="copy{src=/*.sh, dest=/opt/}" shape="note"];
  "sha256:2be5f0ea90d799515de31414aa1b9af80a72a35a57df554512c135c89bb453bc" [label="/bin/sh -c chmod +x install_ffead-cpp-3.0.sh" shape="box"];
  "sha256:72746284bf1de004f0c098849ccd6d3797e452c05923a5270b95452b9c461d35" [label="/bin/sh -c ./install_ffead-cpp-3.0.sh" shape="box"];
  "sha256:761c53e64d93222525875e3568a8bcd96dd716239daa6aee5ead0087ef8531f3" [label="mkdir{path=/opt/ffead-cpp-3.0}" shape="note"];
  "sha256:6784bf2c9305bb938a31471ba4ba47adc104f6a3baed9934e86424bda49099dc" [label="/bin/sh -c chmod +x server.sh" shape="box"];
  "sha256:ae3314bfd93a6a12ea5dddd3379dd3d1ab0cb1c6cffe7fb4bb24cb2770c39e9c" [label="sha256:ae3314bfd93a6a12ea5dddd3379dd3d1ab0cb1c6cffe7fb4bb24cb2770c39e9c" shape="plaintext"];
  "sha256:c1213138226b20f1d38fcc6c5848768997beeb0120cdc661e4fc7b3a06b6c8df" -> "sha256:8f899a19228c4190ae086de5704f32fa0048c7130a310005c50f3b23bed890c8" [label=""];
  "sha256:8f899a19228c4190ae086de5704f32fa0048c7130a310005c50f3b23bed890c8" -> "sha256:e686b1814536f72b4d0f816380619b796e975a8ced19962a374d02242374ac04" [label=""];
  "sha256:e686b1814536f72b4d0f816380619b796e975a8ced19962a374d02242374ac04" -> "sha256:7726378623f099ae604df7c008a615f4ba7a63ceaa2bd8ed71d4c67b9a237acb" [label=""];
  "sha256:7726378623f099ae604df7c008a615f4ba7a63ceaa2bd8ed71d4c67b9a237acb" -> "sha256:223458cf22871bd578b5065a4051b3c6dcb81b382e0d7ee746a2a3331bc288a8" [label=""];
  "sha256:223458cf22871bd578b5065a4051b3c6dcb81b382e0d7ee746a2a3331bc288a8" -> "sha256:ef2ebdf3e082bf01d535ad8521a31d959bedee09d6caea3ea844b2db53e92c49" [label=""];
  "sha256:ef2ebdf3e082bf01d535ad8521a31d959bedee09d6caea3ea844b2db53e92c49" -> "sha256:e48785842f3c0d0bcadfce7c588367c91735b98dcb9f616e4b9086a5670f58df" [label=""];
  "sha256:e48785842f3c0d0bcadfce7c588367c91735b98dcb9f616e4b9086a5670f58df" -> "sha256:91b07b616da09d2fdec21a4a5df03facc69d596b7ec555d708d2dbe30f0f7481" [label=""];
  "sha256:91b07b616da09d2fdec21a4a5df03facc69d596b7ec555d708d2dbe30f0f7481" -> "sha256:f18ff4fd1faa61929829c07ba11da8d5e5eb88b8f0e803972ee2e57c45dca507" [label=""];
  "sha256:f18ff4fd1faa61929829c07ba11da8d5e5eb88b8f0e803972ee2e57c45dca507" -> "sha256:080922c86ad984cfd0fbd353aa5fa83001a59b7567fff07d48cba0acdea52617" [label=""];
  "sha256:080922c86ad984cfd0fbd353aa5fa83001a59b7567fff07d48cba0acdea52617" -> "sha256:e68be0918036f3bc56599c148ee4baf03aecc064a4bb41de59e71109b3f86483" [label=""];
  "sha256:e68be0918036f3bc56599c148ee4baf03aecc064a4bb41de59e71109b3f86483" -> "sha256:e9c642376e224c17dd3da1dbd306e34579c3e469a23b2e9e132154f6455a3ef3" [label=""];
  "sha256:e9c642376e224c17dd3da1dbd306e34579c3e469a23b2e9e132154f6455a3ef3" -> "sha256:a7e48476079d93ba5ad28ce7825fedeb4e52140660afc6543eace87f8082fb84" [label=""];
  "sha256:a7e48476079d93ba5ad28ce7825fedeb4e52140660afc6543eace87f8082fb84" -> "sha256:8d70cbba5e5c02899048376377e4158b880515c266d20cc4c022c106a5cab50d" [label=""];
  "sha256:8d70cbba5e5c02899048376377e4158b880515c266d20cc4c022c106a5cab50d" -> "sha256:5025ccf00aef00bf9d5b7e214e0e45339784ba3d29a53e932a1f4f7b7442f25a" [label=""];
  "sha256:5025ccf00aef00bf9d5b7e214e0e45339784ba3d29a53e932a1f4f7b7442f25a" -> "sha256:ede475f2189694a8abec5676100b217ae5bab10d467cecc770353569ea32115a" [label=""];
  "sha256:ede475f2189694a8abec5676100b217ae5bab10d467cecc770353569ea32115a" -> "sha256:d6e6aeea9585dcec2c7c5275ae03fc9235f4c8e10ac38bf15e4fb20659096f23" [label=""];
  "sha256:d6e6aeea9585dcec2c7c5275ae03fc9235f4c8e10ac38bf15e4fb20659096f23" -> "sha256:515af6c127a9b4eb0a5085eabca5093ef020471d8fe9a6f2df54fed334d5a3ac" [label=""];
  "sha256:515af6c127a9b4eb0a5085eabca5093ef020471d8fe9a6f2df54fed334d5a3ac" -> "sha256:183bed97c4a72b02f062500d1785400598a90b915b67f315ebfbb6439a576b1e" [label=""];
  "sha256:183bed97c4a72b02f062500d1785400598a90b915b67f315ebfbb6439a576b1e" -> "sha256:d941d9bc45b98891f56dc86f3d16205a78a7188084c6640cc10239949efc6236" [label=""];
  "sha256:d941d9bc45b98891f56dc86f3d16205a78a7188084c6640cc10239949efc6236" -> "sha256:14aa80c3a11bec6a152001b5d2bda08ac2d9dc27c2edb5b10830a26888bccce3" [label=""];
  "sha256:14aa80c3a11bec6a152001b5d2bda08ac2d9dc27c2edb5b10830a26888bccce3" -> "sha256:c0e1f2eb4b5ad02f5b089590200eb77015be1985b024c94f20daaafe0cb982c6" [label=""];
  "sha256:c0e1f2eb4b5ad02f5b089590200eb77015be1985b024c94f20daaafe0cb982c6" -> "sha256:5ad5dc2f11462282387cb2d1e352162e9304d93ba36d4c92ac59e2d5c9fced4f" [label=""];
  "sha256:5ad5dc2f11462282387cb2d1e352162e9304d93ba36d4c92ac59e2d5c9fced4f" -> "sha256:ccfcd90a550f0be54b729bee2d0971b5d089ded72dc9606e468d8468491ea46a" [label=""];
  "sha256:ccfcd90a550f0be54b729bee2d0971b5d089ded72dc9606e468d8468491ea46a" -> "sha256:dab8cbf5478a81951c52331c9538a331929bbae8df7b5464ddee27c0e8d49ad9" [label=""];
  "sha256:dab8cbf5478a81951c52331c9538a331929bbae8df7b5464ddee27c0e8d49ad9" -> "sha256:a078b384de4b62df94d94a17be8135a45f9f978d27f799cf9bf6cdb24947d1c6" [label=""];
  "sha256:a078b384de4b62df94d94a17be8135a45f9f978d27f799cf9bf6cdb24947d1c6" -> "sha256:5a97029124393001a332f3536ed38a8d6f6dec4b555d3c0be913aecec503a54a" [label=""];
  "sha256:5a97029124393001a332f3536ed38a8d6f6dec4b555d3c0be913aecec503a54a" -> "sha256:2ba29f5f672e77bb3169c17e6f404753247963014e937bd6ebcdf0874ae10862" [label=""];
  "sha256:2ba29f5f672e77bb3169c17e6f404753247963014e937bd6ebcdf0874ae10862" -> "sha256:78abcc76d09635010deaddc2aff3cd685411f0ba73f7afe26def875e4b133b39" [label=""];
  "sha256:78abcc76d09635010deaddc2aff3cd685411f0ba73f7afe26def875e4b133b39" -> "sha256:08a0c60dae8206e274e0ab5b7fcf2ddaa31097f4e52ef68b61e70846c3368bd9" [label=""];
  "sha256:08a0c60dae8206e274e0ab5b7fcf2ddaa31097f4e52ef68b61e70846c3368bd9" -> "sha256:d052a673da8c24f9a63ed651dab24bf5729d7bf6fd2fc7052dc2c3d9ab0350b6" [label=""];
  "sha256:d052a673da8c24f9a63ed651dab24bf5729d7bf6fd2fc7052dc2c3d9ab0350b6" -> "sha256:5cb600be273f62d8169d33bd180a02366d83f9ec6489abaec2f4ab48f485d756" [label=""];
  "sha256:d1d96f4d9e44c34e29b6b01251e6517ccf31192ff18d41f22386ba9c34f8b705" -> "sha256:5cb600be273f62d8169d33bd180a02366d83f9ec6489abaec2f4ab48f485d756" [label=""];
  "sha256:5cb600be273f62d8169d33bd180a02366d83f9ec6489abaec2f4ab48f485d756" -> "sha256:2be5f0ea90d799515de31414aa1b9af80a72a35a57df554512c135c89bb453bc" [label=""];
  "sha256:2be5f0ea90d799515de31414aa1b9af80a72a35a57df554512c135c89bb453bc" -> "sha256:72746284bf1de004f0c098849ccd6d3797e452c05923a5270b95452b9c461d35" [label=""];
  "sha256:72746284bf1de004f0c098849ccd6d3797e452c05923a5270b95452b9c461d35" -> "sha256:761c53e64d93222525875e3568a8bcd96dd716239daa6aee5ead0087ef8531f3" [label=""];
  "sha256:761c53e64d93222525875e3568a8bcd96dd716239daa6aee5ead0087ef8531f3" -> "sha256:6784bf2c9305bb938a31471ba4ba47adc104f6a3baed9934e86424bda49099dc" [label=""];
  "sha256:6784bf2c9305bb938a31471ba4ba47adc104f6a3baed9934e86424bda49099dc" -> "sha256:ae3314bfd93a6a12ea5dddd3379dd3d1ab0cb1c6cffe7fb4bb24cb2770c39e9c" [label=""];
}

