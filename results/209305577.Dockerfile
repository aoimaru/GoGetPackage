[app/sources/209305577.Dockerfile]
digraph {
  "sha256:b331829e9d3ef5c92b0706b8ae5e47b56446cbd05df41c1f7fdac85190557f8e" [label="docker-image://docker.io/library/node:11-stretch" shape="ellipse"];
  "sha256:8b7d204377d2a4c1522e30f396326c63c02f579ffb8bcb260cae0713c984a9cb" [label="/bin/sh -c apt-get update --no-install-recommends   && apt-get install -y                          build-essential                             jq                                          python-dev                                  python-pip                                  zip                                      && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b43852abdecccfe4d8d41994f5d0433d7f3383e11faeeb46d0e4d2ea72cc9a7" [label="/bin/sh -c pip install setuptools==39.2.0" shape="box"];
  "sha256:ad7cb492763057db0781837c42655d13910b1fcae0899744e92f69805489dca2" [label="/bin/sh -c pip install cffi==1.10.0" shape="box"];
  "sha256:a14293e4eb0c19e4678a0fe8f6393a52bf1c96cbefd928e0279fecec7c44ca2f" [label="/bin/sh -c pip install       Fabric==1.13.2      Jinja2==2.9.6       argparse==1.4.0     awscli==1.11.135    pycrypto==2.6.1     requests==2.18.4" shape="box"];
  "sha256:ad9833413d2f34eb2954ad07dd2fca974bc8230b1b85b2795ffe78e284778009" [label="/bin/sh -c cd /tmp &&   wget https://www.openssl.org/source/old/0.9.x/openssl-0.9.8zg.tar.gz &&   tar zxf openssl-0.9.8zg.tar.gz &&   cd openssl-0.9.8zg &&   ./config &&   make &&   make install" shape="box"];
  "sha256:9e1520c7cf2e11551831d2d865404fff48481a45349e3e170b32abde4d7c15af" [label="/bin/sh -c groupadd jenkins -g $GID  && useradd -ms /bin/bash jenkins -u $UID -g $GID" shape="box"];
  "sha256:55b1b49837b2d212075a7b4f60c9bab56b3a4c761875869c58949f503c647a18" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:58c4b51c35c738024d834abcb1307df0d889d71386f13c30a16d848bd72d1625" [label="/bin/sh -c chown jenkins:jenkins -R /app" shape="box"];
  "sha256:110d981501450df9f28809c61d071856850470d558d8e72baadf77c6090657a5" [label="/bin/sh -c npm install -g npm@latest yarn" shape="box"];
  "sha256:7db655be38c9c966f72cd4770a194b042f89097d2494c58efcf92bb3b54e7bfd" [label="local://context" shape="ellipse"];
  "sha256:864ab3c2fb4698051edd5454071789f58876f4929d50edcdb42ac866c9e1b417" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:e218dde00ac083b1c3f904566d19af7c2cf7a5b18e5eb7d4b6cf820bdda7aba6" [label="copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:fd21e2791a42427b03f2f533d385745bf2725a6f52138347b3f9635d20b5da5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:dfa8610cea3a3f7d5b96779dd158d2fc9ec68a5801d30a83aeb145073806ed1a" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:69539d775d254a7e8bd2803aefbf424dad826bbfec4620e4bc7ecc826dddf499" [label="sha256:69539d775d254a7e8bd2803aefbf424dad826bbfec4620e4bc7ecc826dddf499" shape="plaintext"];
  "sha256:b331829e9d3ef5c92b0706b8ae5e47b56446cbd05df41c1f7fdac85190557f8e" -> "sha256:8b7d204377d2a4c1522e30f396326c63c02f579ffb8bcb260cae0713c984a9cb" [label=""];
  "sha256:8b7d204377d2a4c1522e30f396326c63c02f579ffb8bcb260cae0713c984a9cb" -> "sha256:0b43852abdecccfe4d8d41994f5d0433d7f3383e11faeeb46d0e4d2ea72cc9a7" [label=""];
  "sha256:0b43852abdecccfe4d8d41994f5d0433d7f3383e11faeeb46d0e4d2ea72cc9a7" -> "sha256:ad7cb492763057db0781837c42655d13910b1fcae0899744e92f69805489dca2" [label=""];
  "sha256:ad7cb492763057db0781837c42655d13910b1fcae0899744e92f69805489dca2" -> "sha256:a14293e4eb0c19e4678a0fe8f6393a52bf1c96cbefd928e0279fecec7c44ca2f" [label=""];
  "sha256:a14293e4eb0c19e4678a0fe8f6393a52bf1c96cbefd928e0279fecec7c44ca2f" -> "sha256:ad9833413d2f34eb2954ad07dd2fca974bc8230b1b85b2795ffe78e284778009" [label=""];
  "sha256:ad9833413d2f34eb2954ad07dd2fca974bc8230b1b85b2795ffe78e284778009" -> "sha256:9e1520c7cf2e11551831d2d865404fff48481a45349e3e170b32abde4d7c15af" [label=""];
  "sha256:9e1520c7cf2e11551831d2d865404fff48481a45349e3e170b32abde4d7c15af" -> "sha256:55b1b49837b2d212075a7b4f60c9bab56b3a4c761875869c58949f503c647a18" [label=""];
  "sha256:55b1b49837b2d212075a7b4f60c9bab56b3a4c761875869c58949f503c647a18" -> "sha256:58c4b51c35c738024d834abcb1307df0d889d71386f13c30a16d848bd72d1625" [label=""];
  "sha256:58c4b51c35c738024d834abcb1307df0d889d71386f13c30a16d848bd72d1625" -> "sha256:110d981501450df9f28809c61d071856850470d558d8e72baadf77c6090657a5" [label=""];
  "sha256:110d981501450df9f28809c61d071856850470d558d8e72baadf77c6090657a5" -> "sha256:864ab3c2fb4698051edd5454071789f58876f4929d50edcdb42ac866c9e1b417" [label=""];
  "sha256:7db655be38c9c966f72cd4770a194b042f89097d2494c58efcf92bb3b54e7bfd" -> "sha256:864ab3c2fb4698051edd5454071789f58876f4929d50edcdb42ac866c9e1b417" [label=""];
  "sha256:864ab3c2fb4698051edd5454071789f58876f4929d50edcdb42ac866c9e1b417" -> "sha256:e218dde00ac083b1c3f904566d19af7c2cf7a5b18e5eb7d4b6cf820bdda7aba6" [label=""];
  "sha256:7db655be38c9c966f72cd4770a194b042f89097d2494c58efcf92bb3b54e7bfd" -> "sha256:e218dde00ac083b1c3f904566d19af7c2cf7a5b18e5eb7d4b6cf820bdda7aba6" [label=""];
  "sha256:e218dde00ac083b1c3f904566d19af7c2cf7a5b18e5eb7d4b6cf820bdda7aba6" -> "sha256:fd21e2791a42427b03f2f533d385745bf2725a6f52138347b3f9635d20b5da5a" [label=""];
  "sha256:fd21e2791a42427b03f2f533d385745bf2725a6f52138347b3f9635d20b5da5a" -> "sha256:dfa8610cea3a3f7d5b96779dd158d2fc9ec68a5801d30a83aeb145073806ed1a" [label=""];
  "sha256:dfa8610cea3a3f7d5b96779dd158d2fc9ec68a5801d30a83aeb145073806ed1a" -> "sha256:69539d775d254a7e8bd2803aefbf424dad826bbfec4620e4bc7ecc826dddf499" [label=""];
}

