[app/sources/445536131.Dockerfile]
digraph {
  "sha256:4085ccbd17b11fbc263302a3f504523a6ab9c9278072f7cb9907575028704f7a" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:916aed66b051f0ecc0f840c2b6ea57653829b02b7a83075a1e5cc0c7beb29b89" [label="/bin/sh -c rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" shape="box"];
  "sha256:e72b92ad68ed466b2ea8ab82bb7f7dc100f46e22fba481bd8822bbf97e4ad861" [label="/bin/sh -c yum install wget tar -y -q" shape="box"];
  "sha256:85f0df084bad015e4c0e2d13f41602621c783cab1423ec0e477b462dd6d8ee1a" [label="/bin/sh -c yum install autoconf automake libtool gcc-c++ -y -q" shape="box"];
  "sha256:66bd5f59bbf240774bc1e9eb9dc9e7d409748f08540878c74ad672535479bc81" [label="/bin/sh -c yum install unixODBC-devel -y -q" shape="box"];
  "sha256:cf90fea3cad2717be27e536aca199313538aea1ceed28add83cdb53b453570b3" [label="/bin/sh -c yum install mysql-devel -y -q" shape="box"];
  "sha256:d9b968acb5de02ff7bfe187941e67b64bf82033f741209e3346bbb7908f30a66" [label="/bin/sh -c yum install postgresql-devel -y -q" shape="box"];
  "sha256:9d9e8ddf148ebe7945c637782e9051120a960cfc9fd91d96f39c60bf15fe3306" [label="/bin/sh -c yum install expat-devel -y -q" shape="box"];
  "sha256:e69875e6dc41641394150b9bb369eb976d575ea602d70e72bd345d686ea9c1fa" [label="/bin/sh -c wget -nv -O - http://snowball.tartarus.org/dist/libstemmer_c.tgz | tar zx" shape="box"];
  "sha256:3aad3791621acd14ab448f1d148f9d70c445ae457b68eb4aadbcd8005f3e6d7d" [label="/bin/sh -c wget -nv -O - https://github.com/google/re2/archive/${RE2_VERSION}.tar.gz | tar zx" shape="box"];
  "sha256:d3dffbc3a7ada88b923b796858d86e2a0b9a29718d084c6809473dfa50201a21" [label="/bin/sh -c wget -nv -O - http://sphinxsearch.com/files/sphinx-${SPHINX_VERSION}.tar.gz | tar zx" shape="box"];
  "sha256:d09f3ffc20acee1de0cab22a0a1cddb1f3fed5c6744c234fce5f53ad0044325e" [label="/bin/sh -c cp -R libstemmer_c/* sphinx-${SPHINX_VERSION}/libstemmer_c/" shape="box"];
  "sha256:658a4c409ebc1dfdd747905e4c0b5b7902432239df6d2e263856ce86fbd80c3a" [label="/bin/sh -c sed -i -e 's/stem_ISO_8859_1_hungarian/stem_ISO_8859_2_hungarian/g' sphinx-${SPHINX_VERSION}/libstemmer_c/Makefile.in" shape="box"];
  "sha256:d04e637a45e3b27a76450ff511479d2401e2e953f8e29be0713471a16116211b" [label="/bin/sh -c cp -R re2-${RE2_VERSION}/* sphinx-${SPHINX_VERSION}/libre2/" shape="box"];
  "sha256:5b17067342cc97b98a31b906462bc2ad685ff5fdd53cd32047c4419ad615b0f8" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && ./configure --enable-id64 --with-mysql --with-pgsql --with-libstemmer --with-libexpat --with-iconv --with-unixodbc --with-re2" shape="box"];
  "sha256:0dc99f0cb7e3c3ab832e8b85eebfb15c8ab35242f63623b824d4e93b1aee89e2" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && make" shape="box"];
  "sha256:5b900668192632550e0d0c88e024a7cc0722d220047693b9c879b9151b7723cc" [label="/bin/sh -c cd sphinx-${SPHINX_VERSION} && make install" shape="box"];
  "sha256:a219905c107afc737cc8e29673b194f5f9b3fd35119e8775c265ff530ba96a0d" [label="/bin/sh -c rm -rf sphinx-${SPHINX_VERSION}/ && rm -rf libstemmer_c/ && rm -rf re2-${RE2_VERSION}/" shape="box"];
  "sha256:7be2f56d8a1cb077f8af60b421faa14c877f9b97b007b22d39821188aa568ab2" [label="/bin/sh -c mkdir -p ${SPHINX_INDEX_DIR} &&     mkdir -p ${SPHINX_LOG_DIR} &&     mkdir -p ${SPHINX_LIB_DIR} &&     mkdir -p ${SPHINX_RUN_DIR} &&     mkdir -p ${SPHINX_DIZ_DIR}" shape="box"];
  "sha256:093b4c69900fb91a77819a8d39f01e7194a254b89ed808415e8660c5a3a099cc" [label="copy{src=/dicts, dest=/var/diz/sphinx}" shape="note"];
  "sha256:3944b5f96678cf8d867a2355218fb901c8b62b6ec3388b26138242633ce6b36e" [label="copy{src=/searchd.sh, dest=/bin/}" shape="note"];
  "sha256:27ad7914da5f2cd108c3826f79f208c43dc1c3af9cf660018f9e7dd0e5402623" [label="copy{src=/indexall.sh, dest=/bin/}" shape="note"];
  "sha256:8796f1ddb9b064a37bce744c7422d817fe5000af2a438c9790722606c8d12c7f" [label="/bin/sh -c chmod a+x /bin/searchd.sh && chmod a+x /bin/indexall.sh" shape="box"];
  "sha256:7431fc0182d06fd92082da3c68f25984a3a0d439de954484ccfdbe2ad6df4404" [label="sha256:7431fc0182d06fd92082da3c68f25984a3a0d439de954484ccfdbe2ad6df4404" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:916aed66b051f0ecc0f840c2b6ea57653829b02b7a83075a1e5cc0c7beb29b89" [label=""];
  "sha256:916aed66b051f0ecc0f840c2b6ea57653829b02b7a83075a1e5cc0c7beb29b89" -> "sha256:e72b92ad68ed466b2ea8ab82bb7f7dc100f46e22fba481bd8822bbf97e4ad861" [label=""];
  "sha256:e72b92ad68ed466b2ea8ab82bb7f7dc100f46e22fba481bd8822bbf97e4ad861" -> "sha256:85f0df084bad015e4c0e2d13f41602621c783cab1423ec0e477b462dd6d8ee1a" [label=""];
  "sha256:85f0df084bad015e4c0e2d13f41602621c783cab1423ec0e477b462dd6d8ee1a" -> "sha256:66bd5f59bbf240774bc1e9eb9dc9e7d409748f08540878c74ad672535479bc81" [label=""];
  "sha256:66bd5f59bbf240774bc1e9eb9dc9e7d409748f08540878c74ad672535479bc81" -> "sha256:cf90fea3cad2717be27e536aca199313538aea1ceed28add83cdb53b453570b3" [label=""];
  "sha256:cf90fea3cad2717be27e536aca199313538aea1ceed28add83cdb53b453570b3" -> "sha256:d9b968acb5de02ff7bfe187941e67b64bf82033f741209e3346bbb7908f30a66" [label=""];
  "sha256:d9b968acb5de02ff7bfe187941e67b64bf82033f741209e3346bbb7908f30a66" -> "sha256:9d9e8ddf148ebe7945c637782e9051120a960cfc9fd91d96f39c60bf15fe3306" [label=""];
  "sha256:9d9e8ddf148ebe7945c637782e9051120a960cfc9fd91d96f39c60bf15fe3306" -> "sha256:e69875e6dc41641394150b9bb369eb976d575ea602d70e72bd345d686ea9c1fa" [label=""];
  "sha256:e69875e6dc41641394150b9bb369eb976d575ea602d70e72bd345d686ea9c1fa" -> "sha256:3aad3791621acd14ab448f1d148f9d70c445ae457b68eb4aadbcd8005f3e6d7d" [label=""];
  "sha256:3aad3791621acd14ab448f1d148f9d70c445ae457b68eb4aadbcd8005f3e6d7d" -> "sha256:d3dffbc3a7ada88b923b796858d86e2a0b9a29718d084c6809473dfa50201a21" [label=""];
  "sha256:d3dffbc3a7ada88b923b796858d86e2a0b9a29718d084c6809473dfa50201a21" -> "sha256:d09f3ffc20acee1de0cab22a0a1cddb1f3fed5c6744c234fce5f53ad0044325e" [label=""];
  "sha256:d09f3ffc20acee1de0cab22a0a1cddb1f3fed5c6744c234fce5f53ad0044325e" -> "sha256:658a4c409ebc1dfdd747905e4c0b5b7902432239df6d2e263856ce86fbd80c3a" [label=""];
  "sha256:658a4c409ebc1dfdd747905e4c0b5b7902432239df6d2e263856ce86fbd80c3a" -> "sha256:d04e637a45e3b27a76450ff511479d2401e2e953f8e29be0713471a16116211b" [label=""];
  "sha256:d04e637a45e3b27a76450ff511479d2401e2e953f8e29be0713471a16116211b" -> "sha256:5b17067342cc97b98a31b906462bc2ad685ff5fdd53cd32047c4419ad615b0f8" [label=""];
  "sha256:5b17067342cc97b98a31b906462bc2ad685ff5fdd53cd32047c4419ad615b0f8" -> "sha256:0dc99f0cb7e3c3ab832e8b85eebfb15c8ab35242f63623b824d4e93b1aee89e2" [label=""];
  "sha256:0dc99f0cb7e3c3ab832e8b85eebfb15c8ab35242f63623b824d4e93b1aee89e2" -> "sha256:5b900668192632550e0d0c88e024a7cc0722d220047693b9c879b9151b7723cc" [label=""];
  "sha256:5b900668192632550e0d0c88e024a7cc0722d220047693b9c879b9151b7723cc" -> "sha256:a219905c107afc737cc8e29673b194f5f9b3fd35119e8775c265ff530ba96a0d" [label=""];
  "sha256:a219905c107afc737cc8e29673b194f5f9b3fd35119e8775c265ff530ba96a0d" -> "sha256:7be2f56d8a1cb077f8af60b421faa14c877f9b97b007b22d39821188aa568ab2" [label=""];
  "sha256:7be2f56d8a1cb077f8af60b421faa14c877f9b97b007b22d39821188aa568ab2" -> "sha256:093b4c69900fb91a77819a8d39f01e7194a254b89ed808415e8660c5a3a099cc" [label=""];
  "sha256:4085ccbd17b11fbc263302a3f504523a6ab9c9278072f7cb9907575028704f7a" -> "sha256:093b4c69900fb91a77819a8d39f01e7194a254b89ed808415e8660c5a3a099cc" [label=""];
  "sha256:093b4c69900fb91a77819a8d39f01e7194a254b89ed808415e8660c5a3a099cc" -> "sha256:3944b5f96678cf8d867a2355218fb901c8b62b6ec3388b26138242633ce6b36e" [label=""];
  "sha256:4085ccbd17b11fbc263302a3f504523a6ab9c9278072f7cb9907575028704f7a" -> "sha256:3944b5f96678cf8d867a2355218fb901c8b62b6ec3388b26138242633ce6b36e" [label=""];
  "sha256:3944b5f96678cf8d867a2355218fb901c8b62b6ec3388b26138242633ce6b36e" -> "sha256:27ad7914da5f2cd108c3826f79f208c43dc1c3af9cf660018f9e7dd0e5402623" [label=""];
  "sha256:4085ccbd17b11fbc263302a3f504523a6ab9c9278072f7cb9907575028704f7a" -> "sha256:27ad7914da5f2cd108c3826f79f208c43dc1c3af9cf660018f9e7dd0e5402623" [label=""];
  "sha256:27ad7914da5f2cd108c3826f79f208c43dc1c3af9cf660018f9e7dd0e5402623" -> "sha256:8796f1ddb9b064a37bce744c7422d817fe5000af2a438c9790722606c8d12c7f" [label=""];
  "sha256:8796f1ddb9b064a37bce744c7422d817fe5000af2a438c9790722606c8d12c7f" -> "sha256:7431fc0182d06fd92082da3c68f25984a3a0d439de954484ccfdbe2ad6df4404" [label=""];
}

