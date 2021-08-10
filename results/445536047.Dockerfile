[app/sources/445536047.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:316e2232e09a851c4455fc71bcce3888bde51b6a6d14ca73a18a576e30321be0" [label="/bin/sh -c rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" shape="box"];
  "sha256:e0c5f7640c64bf24f1b9f872a49f5e0a0a678c6d32329fc73ad0982dc000ac95" [label="/bin/sh -c yum install wget tar -y -q" shape="box"];
  "sha256:d05955a940450bc46ff6a3f5eacddccfab52bba7dcf75d4ec341e1ea9d393352" [label="/bin/sh -c yum install autoconf automake libtool gcc-c++ -y -q" shape="box"];
  "sha256:d6a95c0254620981c1b7ba3c2ef6ecc32da96364138e79280a5b5bc05fd8fb11" [label="/bin/sh -c yum install unixODBC-devel -y -q" shape="box"];
  "sha256:095be8279de8cd30b339ee819dc337095f006a9647413c1ef34abaeeb7799592" [label="/bin/sh -c yum install mysql-devel -y -q" shape="box"];
  "sha256:497319a1b4a3a7b1c75466db24d63b0cf6c2acc1ec3b646dccfcdebf4dcac803" [label="/bin/sh -c yum install postgresql-devel -y -q" shape="box"];
  "sha256:deab1f6669b91a945b74e800fd609429f9ae6aeb05291f4e8b66f4018bf12839" [label="/bin/sh -c yum install expat-devel -y -q" shape="box"];
  "sha256:8f0be2f8e6d53ad2e44907205f710ed24df9bc882762e0242ff75f810b5173ec" [label="/bin/sh -c wget -nv -O - http://snowball.tartarus.org/dist/libstemmer_c.tgz | tar zx" shape="box"];
  "sha256:ee72df4ce55aea248d5f39736a3b9ae0090084f49c8f9563a3bd0b013ecef743" [label="/bin/sh -c wget -nv -O - https://github.com/google/re2/archive/${RE2_VERSION}.tar.gz | tar zx" shape="box"];
  "sha256:bcf07506fe956b17f99111b6070c422f055ab04690df70443dcd282c8a17249a" [label="/bin/sh -c wget -nv -O - http://sphinxsearch.com/files/sphinx-${SPHINX_VERSION}.tar.gz | tar zx" shape="box"];
  "sha256:129de051c87c9a2b1bf9ffef4d3a65181425694348185e5f5a72a251ff29894e" [label="/bin/sh -c cp -R libstemmer_c/* sphinx-${SPHINX_VERSION}/libstemmer_c/" shape="box"];
  "sha256:22ebab1ba34af29b5348fdbd48e263173d72a822c6256fcd6a003234b02b80df" [label="/bin/sh -c sed -i -e 's/stem_ISO_8859_1_hungarian/stem_ISO_8859_2_hungarian/g' sphinx-${SPHINX_VERSION}/libstemmer_c/Makefile.in" shape="box"];
  "sha256:2e2b08cb20da85e5c22c263cd1649e265f31a54f311f06a75e7f31cf19731b83" [label="/bin/sh -c cp -R re2-${RE2_VERSION}/* sphinx-${SPHINX_VERSION}/libre2/" shape="box"];
  "sha256:d1d18f65fddbd416622bc8b219d0dfbb5e52c2c8d2df10f76c308dcb03774806" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && ./configure --enable-id64 --with-mysql --with-pgsql --with-libstemmer --with-libexpat --with-iconv --with-unixodbc --with-re2" shape="box"];
  "sha256:cc8a6e955151978ad586101359618cd2e45aa59523f5051a4cbc8f78ab1f35da" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && make" shape="box"];
  "sha256:51ab90b71a1c9eadf66cf23bb3ef8ae7ad3245a0f1862876622feeec1a3777f6" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && make install" shape="box"];
  "sha256:c4b6bdc7894d1c5ee4eeda03bd717acd85fd345ec30fe481cfcabea39be6c928" [label="/bin/sh -c rm -rf sphinx-${SPHINX_VERSION}/ && rm -rf libstemmer_c/ && rm -rf re2-${RE2_VERSION}/" shape="box"];
  "sha256:f39897b59f42f25352e44ba72dbb95088b91b03c942cdb6fdd3262128c55dd52" [label="/bin/sh -c mkdir -p ${SPHINX_INDEX_DIR} &&     mkdir -p ${SPHINX_LOG_DIR} &&     mkdir -p ${SPHINX_LIB_DIR} &&     mkdir -p ${SPHINX_RUN_DIR} &&     mkdir -p ${SPHINX_DIZ_DIR}" shape="box"];
  "sha256:8d1e4e93d24b494a4904c0b4884095700bdd6ca6c064669e1acd54c20ed21613" [label="local://context" shape="ellipse"];
  "sha256:809a94a7c65cc83fc83dc0a3da03198ed91eb49c2df0d8fcd4b504d882284b5a" [label="copy{src=/dicts, dest=/var/diz/sphinx}" shape="note"];
  "sha256:016b07d2129872abf6f5d42ef795d1ba6b373693502e72a30780b1af0e4fa22d" [label="copy{src=/searchd.sh, dest=/bin/}" shape="note"];
  "sha256:896be02e97ffb09eba57ad1a1e4859a79001dc00f547c24bd2d3a1c090c5cebc" [label="copy{src=/indexall.sh, dest=/bin/}" shape="note"];
  "sha256:f58aed9d122de2fa95313592eaa436418e499fc6d9202fe62ef9fbeb99759182" [label="/bin/sh -c chmod a+x /bin/searchd.sh && chmod a+x /bin/indexall.sh" shape="box"];
  "sha256:0bd5af19e58a4f5434316ba4fc40355a64d779ad0b06abde19c82e31e4165a89" [label="sha256:0bd5af19e58a4f5434316ba4fc40355a64d779ad0b06abde19c82e31e4165a89" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:316e2232e09a851c4455fc71bcce3888bde51b6a6d14ca73a18a576e30321be0" [label=""];
  "sha256:316e2232e09a851c4455fc71bcce3888bde51b6a6d14ca73a18a576e30321be0" -> "sha256:e0c5f7640c64bf24f1b9f872a49f5e0a0a678c6d32329fc73ad0982dc000ac95" [label=""];
  "sha256:e0c5f7640c64bf24f1b9f872a49f5e0a0a678c6d32329fc73ad0982dc000ac95" -> "sha256:d05955a940450bc46ff6a3f5eacddccfab52bba7dcf75d4ec341e1ea9d393352" [label=""];
  "sha256:d05955a940450bc46ff6a3f5eacddccfab52bba7dcf75d4ec341e1ea9d393352" -> "sha256:d6a95c0254620981c1b7ba3c2ef6ecc32da96364138e79280a5b5bc05fd8fb11" [label=""];
  "sha256:d6a95c0254620981c1b7ba3c2ef6ecc32da96364138e79280a5b5bc05fd8fb11" -> "sha256:095be8279de8cd30b339ee819dc337095f006a9647413c1ef34abaeeb7799592" [label=""];
  "sha256:095be8279de8cd30b339ee819dc337095f006a9647413c1ef34abaeeb7799592" -> "sha256:497319a1b4a3a7b1c75466db24d63b0cf6c2acc1ec3b646dccfcdebf4dcac803" [label=""];
  "sha256:497319a1b4a3a7b1c75466db24d63b0cf6c2acc1ec3b646dccfcdebf4dcac803" -> "sha256:deab1f6669b91a945b74e800fd609429f9ae6aeb05291f4e8b66f4018bf12839" [label=""];
  "sha256:deab1f6669b91a945b74e800fd609429f9ae6aeb05291f4e8b66f4018bf12839" -> "sha256:8f0be2f8e6d53ad2e44907205f710ed24df9bc882762e0242ff75f810b5173ec" [label=""];
  "sha256:8f0be2f8e6d53ad2e44907205f710ed24df9bc882762e0242ff75f810b5173ec" -> "sha256:ee72df4ce55aea248d5f39736a3b9ae0090084f49c8f9563a3bd0b013ecef743" [label=""];
  "sha256:ee72df4ce55aea248d5f39736a3b9ae0090084f49c8f9563a3bd0b013ecef743" -> "sha256:bcf07506fe956b17f99111b6070c422f055ab04690df70443dcd282c8a17249a" [label=""];
  "sha256:bcf07506fe956b17f99111b6070c422f055ab04690df70443dcd282c8a17249a" -> "sha256:129de051c87c9a2b1bf9ffef4d3a65181425694348185e5f5a72a251ff29894e" [label=""];
  "sha256:129de051c87c9a2b1bf9ffef4d3a65181425694348185e5f5a72a251ff29894e" -> "sha256:22ebab1ba34af29b5348fdbd48e263173d72a822c6256fcd6a003234b02b80df" [label=""];
  "sha256:22ebab1ba34af29b5348fdbd48e263173d72a822c6256fcd6a003234b02b80df" -> "sha256:2e2b08cb20da85e5c22c263cd1649e265f31a54f311f06a75e7f31cf19731b83" [label=""];
  "sha256:2e2b08cb20da85e5c22c263cd1649e265f31a54f311f06a75e7f31cf19731b83" -> "sha256:d1d18f65fddbd416622bc8b219d0dfbb5e52c2c8d2df10f76c308dcb03774806" [label=""];
  "sha256:d1d18f65fddbd416622bc8b219d0dfbb5e52c2c8d2df10f76c308dcb03774806" -> "sha256:cc8a6e955151978ad586101359618cd2e45aa59523f5051a4cbc8f78ab1f35da" [label=""];
  "sha256:cc8a6e955151978ad586101359618cd2e45aa59523f5051a4cbc8f78ab1f35da" -> "sha256:51ab90b71a1c9eadf66cf23bb3ef8ae7ad3245a0f1862876622feeec1a3777f6" [label=""];
  "sha256:51ab90b71a1c9eadf66cf23bb3ef8ae7ad3245a0f1862876622feeec1a3777f6" -> "sha256:c4b6bdc7894d1c5ee4eeda03bd717acd85fd345ec30fe481cfcabea39be6c928" [label=""];
  "sha256:c4b6bdc7894d1c5ee4eeda03bd717acd85fd345ec30fe481cfcabea39be6c928" -> "sha256:f39897b59f42f25352e44ba72dbb95088b91b03c942cdb6fdd3262128c55dd52" [label=""];
  "sha256:f39897b59f42f25352e44ba72dbb95088b91b03c942cdb6fdd3262128c55dd52" -> "sha256:809a94a7c65cc83fc83dc0a3da03198ed91eb49c2df0d8fcd4b504d882284b5a" [label=""];
  "sha256:8d1e4e93d24b494a4904c0b4884095700bdd6ca6c064669e1acd54c20ed21613" -> "sha256:809a94a7c65cc83fc83dc0a3da03198ed91eb49c2df0d8fcd4b504d882284b5a" [label=""];
  "sha256:809a94a7c65cc83fc83dc0a3da03198ed91eb49c2df0d8fcd4b504d882284b5a" -> "sha256:016b07d2129872abf6f5d42ef795d1ba6b373693502e72a30780b1af0e4fa22d" [label=""];
  "sha256:8d1e4e93d24b494a4904c0b4884095700bdd6ca6c064669e1acd54c20ed21613" -> "sha256:016b07d2129872abf6f5d42ef795d1ba6b373693502e72a30780b1af0e4fa22d" [label=""];
  "sha256:016b07d2129872abf6f5d42ef795d1ba6b373693502e72a30780b1af0e4fa22d" -> "sha256:896be02e97ffb09eba57ad1a1e4859a79001dc00f547c24bd2d3a1c090c5cebc" [label=""];
  "sha256:8d1e4e93d24b494a4904c0b4884095700bdd6ca6c064669e1acd54c20ed21613" -> "sha256:896be02e97ffb09eba57ad1a1e4859a79001dc00f547c24bd2d3a1c090c5cebc" [label=""];
  "sha256:896be02e97ffb09eba57ad1a1e4859a79001dc00f547c24bd2d3a1c090c5cebc" -> "sha256:f58aed9d122de2fa95313592eaa436418e499fc6d9202fe62ef9fbeb99759182" [label=""];
  "sha256:f58aed9d122de2fa95313592eaa436418e499fc6d9202fe62ef9fbeb99759182" -> "sha256:0bd5af19e58a4f5434316ba4fc40355a64d779ad0b06abde19c82e31e4165a89" [label=""];
}
