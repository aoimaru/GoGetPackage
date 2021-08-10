[app/sources/482155079.Dockerfile]
digraph {
  "sha256:aa87a772fa27817a00c0c098f655d949c71d7ec0a54c5e13490b785899b6baf7" [label="docker-image://docker.io/jboss/base-jdk:8" shape="ellipse"];
  "sha256:2d9b9e1853aefc0769110899f792035f84d21e553d98a22b2eaec1b37cbb1acf" [label="local://context" shape="ellipse"];
  "sha256:798a1742604b1467fcd38418eecf0cfcb35c1612fb4f5fba1e883c58318e8c07" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:afc301729c478e55dc196c7e911a5e57a8bde3bbaaaa64a38d7ea2c77e3d9fca" [label="/bin/sh -c set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*" shape="box"];
  "sha256:dbcbfbbdcb1bc1faeb2cdbb20dfc430d7dbe219e9351f2d05b868d6a46230647" [label="mkdir{path=/opt/sonarqube}" shape="note"];
  "sha256:2bb73b90925e6ed2e77e6a5e840b3cc6d2a42751dd6b8e9804acd88f454ee46f" [label="copy{src=/run.sh, dest=/opt/sonarqube/bin/}" shape="note"];
  "sha256:be4f01497613691d33a79184cc958a857926f264d74324bfa14f99b13af1a78f" [label="/bin/sh -c useradd -r sonar" shape="box"];
  "sha256:c7e27d05d3925bb48b5a3607a7916e1df5a974f9f3bcb7f48e3deb9b379db3e6" [label="/bin/sh -c /usr/bin/fix-permissions $SONARQUBE_HOME     && chmod 775 $SONARQUBE_HOME/bin/run.sh" shape="box"];
  "sha256:3fcb6bbe0e65e416db2596d0b14c65b981217a6e969962fb892a8a96775bd608" [label="sha256:3fcb6bbe0e65e416db2596d0b14c65b981217a6e969962fb892a8a96775bd608" shape="plaintext"];
  "sha256:aa87a772fa27817a00c0c098f655d949c71d7ec0a54c5e13490b785899b6baf7" -> "sha256:798a1742604b1467fcd38418eecf0cfcb35c1612fb4f5fba1e883c58318e8c07" [label=""];
  "sha256:2d9b9e1853aefc0769110899f792035f84d21e553d98a22b2eaec1b37cbb1acf" -> "sha256:798a1742604b1467fcd38418eecf0cfcb35c1612fb4f5fba1e883c58318e8c07" [label=""];
  "sha256:798a1742604b1467fcd38418eecf0cfcb35c1612fb4f5fba1e883c58318e8c07" -> "sha256:afc301729c478e55dc196c7e911a5e57a8bde3bbaaaa64a38d7ea2c77e3d9fca" [label=""];
  "sha256:afc301729c478e55dc196c7e911a5e57a8bde3bbaaaa64a38d7ea2c77e3d9fca" -> "sha256:dbcbfbbdcb1bc1faeb2cdbb20dfc430d7dbe219e9351f2d05b868d6a46230647" [label=""];
  "sha256:dbcbfbbdcb1bc1faeb2cdbb20dfc430d7dbe219e9351f2d05b868d6a46230647" -> "sha256:2bb73b90925e6ed2e77e6a5e840b3cc6d2a42751dd6b8e9804acd88f454ee46f" [label=""];
  "sha256:2d9b9e1853aefc0769110899f792035f84d21e553d98a22b2eaec1b37cbb1acf" -> "sha256:2bb73b90925e6ed2e77e6a5e840b3cc6d2a42751dd6b8e9804acd88f454ee46f" [label=""];
  "sha256:2bb73b90925e6ed2e77e6a5e840b3cc6d2a42751dd6b8e9804acd88f454ee46f" -> "sha256:be4f01497613691d33a79184cc958a857926f264d74324bfa14f99b13af1a78f" [label=""];
  "sha256:be4f01497613691d33a79184cc958a857926f264d74324bfa14f99b13af1a78f" -> "sha256:c7e27d05d3925bb48b5a3607a7916e1df5a974f9f3bcb7f48e3deb9b379db3e6" [label=""];
  "sha256:c7e27d05d3925bb48b5a3607a7916e1df5a974f9f3bcb7f48e3deb9b379db3e6" -> "sha256:3fcb6bbe0e65e416db2596d0b14c65b981217a6e969962fb892a8a96775bd608" [label=""];
}

