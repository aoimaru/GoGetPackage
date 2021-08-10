[app/sources/248869239.Dockerfile]
digraph {
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" [label="docker-image://docker.io/bitnami/minideb:stretch@sha256:940f4bc821ab9d7d128a3e8bdc5644d16474e70270fe1af7e1095adc92882feb" shape="ellipse"];
  "sha256:43a39b409dc309acf14c77d23462112f5c9b550dd65344f15ad98fac3bd0c7b3" [label="/bin/sh -c install_packages curl ca-certificates" shape="box"];
  "sha256:277302fbe5d32537f6d8ea76db7c160d7303b8343736158f5021bbe45baa1fb7" [label="/bin/sh -c groupadd -r sonarqube && useradd -r -g sonarqube sonarqube" shape="box"];
  "sha256:3bd7f2bec24b69e51ef3f11729dd1330c259a45183c709a0515c0b917fb402de" [label="mkdir{path=/opt/sonarqube/extensions/plugins}" shape="note"];
  "sha256:12b5a9bfc136c27e879a36923da4fc51b8123c4c945b6eb3c6c730c52221f747" [label="/bin/sh -c curl -L -o \"sonar-scala-plugin-${SONAR_SCALA_VERSION}.jar\"   \"https://dl.bintray.com/mwz/maven/com/github/mwz/sonar-scala_2.12/${SONAR_SCALA_VERSION}/sonar-scala_2.12-${SONAR_SCALA_VERSION}-assembly.jar\"" shape="box"];
  "sha256:ba4d836c3396f2ed40e3973c16e0af7d0195dff7b9b3880c5c338897834d71c9" [label="/bin/sh -c chown -R sonarqube:sonarqube /opt/sonarqube" shape="box"];
  "sha256:78a37e63c389f9ce1905a1f125e26046006e947de76e45f850d7b84e9af115ea" [label="sha256:78a37e63c389f9ce1905a1f125e26046006e947de76e45f850d7b84e9af115ea" shape="plaintext"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" -> "sha256:43a39b409dc309acf14c77d23462112f5c9b550dd65344f15ad98fac3bd0c7b3" [label=""];
  "sha256:43a39b409dc309acf14c77d23462112f5c9b550dd65344f15ad98fac3bd0c7b3" -> "sha256:277302fbe5d32537f6d8ea76db7c160d7303b8343736158f5021bbe45baa1fb7" [label=""];
  "sha256:277302fbe5d32537f6d8ea76db7c160d7303b8343736158f5021bbe45baa1fb7" -> "sha256:3bd7f2bec24b69e51ef3f11729dd1330c259a45183c709a0515c0b917fb402de" [label=""];
  "sha256:3bd7f2bec24b69e51ef3f11729dd1330c259a45183c709a0515c0b917fb402de" -> "sha256:12b5a9bfc136c27e879a36923da4fc51b8123c4c945b6eb3c6c730c52221f747" [label=""];
  "sha256:12b5a9bfc136c27e879a36923da4fc51b8123c4c945b6eb3c6c730c52221f747" -> "sha256:ba4d836c3396f2ed40e3973c16e0af7d0195dff7b9b3880c5c338897834d71c9" [label=""];
  "sha256:ba4d836c3396f2ed40e3973c16e0af7d0195dff7b9b3880c5c338897834d71c9" -> "sha256:78a37e63c389f9ce1905a1f125e26046006e947de76e45f850d7b84e9af115ea" [label=""];
}

