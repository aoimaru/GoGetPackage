[app/sources/470704524.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:535bdcb9e937c1b5f37e9045eddcf17f81233d21b37cfd0f2971fe371fc0f0ab" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless &&     rm -rf /var/lib/apt/lists/" shape="box"];
  "sha256:e15790411a18e54187d75ebb95565c89b7695384846827cd700d67752bb5176e" [label="/bin/sh -c curl -L https://repo1.maven.org/maven2/io/prestosql/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz -o /tmp/presto-server.tgz &&     tar -xzf /tmp/presto-server.tgz -C /opt &&     ln -s /opt/presto-server-${PRESTO_VERSION} ${PRESTO_HOME} &&     mkdir -p ${PRESTO_HOME}/data &&     rm -f /tmp/presto-server.tgz" shape="box"];
  "sha256:34f7856792b38561e160a7bdd2536c97c8b84f473942fff147dcd7b3dfbf026a" [label="https://repo1.maven.org/maven2/io/prestosql/presto-cli/315/presto-cli-315-executable.jar" shape="ellipse"];
  "sha256:adc9ec455f285d3ffc655a84203c245b20c6aeba3f47032508bef3f42c8d8e2e" [label="copy{src=/presto-cli-315-executable.jar, dest=/opt/presto/bin/}" shape="note"];
  "sha256:6314d8f350cfd2c8fb182ad1643e7130da3e3543fd8537bfcf172e7939a58221" [label="/bin/sh -c chmod +x ${PRESTO_HOME}/bin/presto-cli-${PRESTO_VERSION}-executable.jar" shape="box"];
  "sha256:799a8cb8005be80c7d8054232c89bd5957245d7b5e0e95003bc07db51557f5d9" [label="local://context" shape="ellipse"];
  "sha256:69015478fd9538d73e3fc1d3b691f92a2c1bde8d7b18ea02d50774243aba867d" [label="copy{src=/, dest=/tmp/presto-build}" shape="note"];
  "sha256:a64f3599acbc52cc819e5ac29779bb4a580f7b20c64c608488244f9006e9d392" [label="mkdir{path=/tmp/presto-build}" shape="note"];
  "sha256:477179a8c32ebb8ba9b723d24744ddd25eb7c58dab1726ba014ece5a3cd97cfd" [label="copy{src=/docker/entrypoint.sh, dest=/opt/presto/bin/}" shape="note"];
  "sha256:5719b9ef048a6636a39f20a55c383e93a5962036e69e36872378dd3853110024" [label="/bin/sh -c chmod +x ${PRESTO_HOME}/bin/entrypoint.sh" shape="box"];
  "sha256:8a50303f7bf0ef81323ef049d4c755b84bcddf1a80fe3245c0c6d19c581836fc" [label="copy{src=/src/test/resources/tiledb_arrays, dest=/opt/tiledb_example_arrays}" shape="note"];
  "sha256:3f22cca7213b99f92b0bdac4646d38601bebcbaee6fb1e8caefda13ffd1376e8" [label="/bin/sh -c ./mvnw package -DskipTests &&     mkdir ${PRESTO_HOME}/plugin/tiledb &&     cp target/presto-tiledb-${PRESTO_VERSION}.jar ${PRESTO_HOME}/plugin/tiledb/presto-tiledb-${PRESTO_VERSION}.jar &&     ./mvnw clean &&     rm -rf ${HOME}/.m2" shape="box"];
  "sha256:b6019fac39271c8159bd99a05abe48a0246fe21d04327e25544e2e63d4358f0b" [label="mkdir{path=/opt/presto}" shape="note"];
  "sha256:96c29108c719da17bba4e943648a6a9eb589386165506bba9ef8f166ec2633be" [label="/bin/sh -c rm -r /tmp/presto-build" shape="box"];
  "sha256:c37fd070bb937518247910000bcd1cddef9998c3c19cec4f18c19e433532c832" [label="copy{src=/docker/etc, dest=/opt/presto/etc}" shape="note"];
  "sha256:bdd101c313a86d6392ebf6232d33fa889f6b0c491fe22f68274e675acedaac10" [label="sha256:bdd101c313a86d6392ebf6232d33fa889f6b0c491fe22f68274e675acedaac10" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:535bdcb9e937c1b5f37e9045eddcf17f81233d21b37cfd0f2971fe371fc0f0ab" [label=""];
  "sha256:535bdcb9e937c1b5f37e9045eddcf17f81233d21b37cfd0f2971fe371fc0f0ab" -> "sha256:e15790411a18e54187d75ebb95565c89b7695384846827cd700d67752bb5176e" [label=""];
  "sha256:e15790411a18e54187d75ebb95565c89b7695384846827cd700d67752bb5176e" -> "sha256:adc9ec455f285d3ffc655a84203c245b20c6aeba3f47032508bef3f42c8d8e2e" [label=""];
  "sha256:34f7856792b38561e160a7bdd2536c97c8b84f473942fff147dcd7b3dfbf026a" -> "sha256:adc9ec455f285d3ffc655a84203c245b20c6aeba3f47032508bef3f42c8d8e2e" [label=""];
  "sha256:adc9ec455f285d3ffc655a84203c245b20c6aeba3f47032508bef3f42c8d8e2e" -> "sha256:6314d8f350cfd2c8fb182ad1643e7130da3e3543fd8537bfcf172e7939a58221" [label=""];
  "sha256:6314d8f350cfd2c8fb182ad1643e7130da3e3543fd8537bfcf172e7939a58221" -> "sha256:69015478fd9538d73e3fc1d3b691f92a2c1bde8d7b18ea02d50774243aba867d" [label=""];
  "sha256:799a8cb8005be80c7d8054232c89bd5957245d7b5e0e95003bc07db51557f5d9" -> "sha256:69015478fd9538d73e3fc1d3b691f92a2c1bde8d7b18ea02d50774243aba867d" [label=""];
  "sha256:69015478fd9538d73e3fc1d3b691f92a2c1bde8d7b18ea02d50774243aba867d" -> "sha256:a64f3599acbc52cc819e5ac29779bb4a580f7b20c64c608488244f9006e9d392" [label=""];
  "sha256:a64f3599acbc52cc819e5ac29779bb4a580f7b20c64c608488244f9006e9d392" -> "sha256:477179a8c32ebb8ba9b723d24744ddd25eb7c58dab1726ba014ece5a3cd97cfd" [label=""];
  "sha256:799a8cb8005be80c7d8054232c89bd5957245d7b5e0e95003bc07db51557f5d9" -> "sha256:477179a8c32ebb8ba9b723d24744ddd25eb7c58dab1726ba014ece5a3cd97cfd" [label=""];
  "sha256:477179a8c32ebb8ba9b723d24744ddd25eb7c58dab1726ba014ece5a3cd97cfd" -> "sha256:5719b9ef048a6636a39f20a55c383e93a5962036e69e36872378dd3853110024" [label=""];
  "sha256:5719b9ef048a6636a39f20a55c383e93a5962036e69e36872378dd3853110024" -> "sha256:8a50303f7bf0ef81323ef049d4c755b84bcddf1a80fe3245c0c6d19c581836fc" [label=""];
  "sha256:799a8cb8005be80c7d8054232c89bd5957245d7b5e0e95003bc07db51557f5d9" -> "sha256:8a50303f7bf0ef81323ef049d4c755b84bcddf1a80fe3245c0c6d19c581836fc" [label=""];
  "sha256:8a50303f7bf0ef81323ef049d4c755b84bcddf1a80fe3245c0c6d19c581836fc" -> "sha256:3f22cca7213b99f92b0bdac4646d38601bebcbaee6fb1e8caefda13ffd1376e8" [label=""];
  "sha256:3f22cca7213b99f92b0bdac4646d38601bebcbaee6fb1e8caefda13ffd1376e8" -> "sha256:b6019fac39271c8159bd99a05abe48a0246fe21d04327e25544e2e63d4358f0b" [label=""];
  "sha256:b6019fac39271c8159bd99a05abe48a0246fe21d04327e25544e2e63d4358f0b" -> "sha256:96c29108c719da17bba4e943648a6a9eb589386165506bba9ef8f166ec2633be" [label=""];
  "sha256:96c29108c719da17bba4e943648a6a9eb589386165506bba9ef8f166ec2633be" -> "sha256:c37fd070bb937518247910000bcd1cddef9998c3c19cec4f18c19e433532c832" [label=""];
  "sha256:799a8cb8005be80c7d8054232c89bd5957245d7b5e0e95003bc07db51557f5d9" -> "sha256:c37fd070bb937518247910000bcd1cddef9998c3c19cec4f18c19e433532c832" [label=""];
  "sha256:c37fd070bb937518247910000bcd1cddef9998c3c19cec4f18c19e433532c832" -> "sha256:bdd101c313a86d6392ebf6232d33fa889f6b0c491fe22f68274e675acedaac10" [label=""];
}

