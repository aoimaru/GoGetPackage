[app/sources/475894756.Dockerfile]
digraph {
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" [label="local://context" shape="ellipse"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:c59179ccee16b474785703d9b4e401219c19ba772c499125772976231a82f185" [label="mkdir{path=/opt/kafka-monitor}" shape="note"];
  "sha256:be33f276f705874f2cdf8d492250518699dc24fa4721ba06668c36571b37faeb" [label="copy{src=/build, dest=/opt/kafka-monitor/build/}" shape="note"];
  "sha256:01d922c0b41ed41dda34f82f4eb6ffb55e499c914b89931c5310295d13f459c8" [label="copy{src=/bin/kafka-monitor-start.sh, dest=/opt/kafka-monitor/bin/kafka-monitor-start.sh}" shape="note"];
  "sha256:06f1ea12e46b400e39b602ea37464d8e4440deb6560eed6498669b2c15596fe3" [label="copy{src=/bin/kmf-run-class.sh, dest=/opt/kafka-monitor/bin/kmf-run-class.sh}" shape="note"];
  "sha256:33de762a26e6c80ab15f2695536c7bb893ebfe256101c2b6944328ddd1688caf" [label="copy{src=/config/kafka-monitor.properties, dest=/opt/kafka-monitor/config/kafka-monitor.properties}" shape="note"];
  "sha256:f22899d961c611de4878e108c0180a750d9410199ee83c7bdcbc9abbe0b70bd0" [label="copy{src=/config/log4j.properties, dest=/opt/kafka-monitor/config/log4j.properties}" shape="note"];
  "sha256:d41b33b4aa58f5de4faae32b91902b586c231b06fd6a7d6769dce1e808262f57" [label="copy{src=/docker/kafka-monitor-docker-entry.sh, dest=/opt/kafka-monitor/kafka-monitor-docker-entry.sh}" shape="note"];
  "sha256:3066e9406dfc5ffda10b38b11e14bfbed3791d516193f4c43889f2f87ff537fa" [label="copy{src=/webapp, dest=/opt/kafka-monitor/webapp/}" shape="note"];
  "sha256:ec1059169dbb3eabb915f7191b45298ea259ddbd72013497894f7c79e78ce279" [label="sha256:ec1059169dbb3eabb915f7191b45298ea259ddbd72013497894f7c79e78ce279" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:c59179ccee16b474785703d9b4e401219c19ba772c499125772976231a82f185" [label=""];
  "sha256:c59179ccee16b474785703d9b4e401219c19ba772c499125772976231a82f185" -> "sha256:be33f276f705874f2cdf8d492250518699dc24fa4721ba06668c36571b37faeb" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:be33f276f705874f2cdf8d492250518699dc24fa4721ba06668c36571b37faeb" [label=""];
  "sha256:be33f276f705874f2cdf8d492250518699dc24fa4721ba06668c36571b37faeb" -> "sha256:01d922c0b41ed41dda34f82f4eb6ffb55e499c914b89931c5310295d13f459c8" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:01d922c0b41ed41dda34f82f4eb6ffb55e499c914b89931c5310295d13f459c8" [label=""];
  "sha256:01d922c0b41ed41dda34f82f4eb6ffb55e499c914b89931c5310295d13f459c8" -> "sha256:06f1ea12e46b400e39b602ea37464d8e4440deb6560eed6498669b2c15596fe3" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:06f1ea12e46b400e39b602ea37464d8e4440deb6560eed6498669b2c15596fe3" [label=""];
  "sha256:06f1ea12e46b400e39b602ea37464d8e4440deb6560eed6498669b2c15596fe3" -> "sha256:33de762a26e6c80ab15f2695536c7bb893ebfe256101c2b6944328ddd1688caf" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:33de762a26e6c80ab15f2695536c7bb893ebfe256101c2b6944328ddd1688caf" [label=""];
  "sha256:33de762a26e6c80ab15f2695536c7bb893ebfe256101c2b6944328ddd1688caf" -> "sha256:f22899d961c611de4878e108c0180a750d9410199ee83c7bdcbc9abbe0b70bd0" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:f22899d961c611de4878e108c0180a750d9410199ee83c7bdcbc9abbe0b70bd0" [label=""];
  "sha256:f22899d961c611de4878e108c0180a750d9410199ee83c7bdcbc9abbe0b70bd0" -> "sha256:d41b33b4aa58f5de4faae32b91902b586c231b06fd6a7d6769dce1e808262f57" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:d41b33b4aa58f5de4faae32b91902b586c231b06fd6a7d6769dce1e808262f57" [label=""];
  "sha256:d41b33b4aa58f5de4faae32b91902b586c231b06fd6a7d6769dce1e808262f57" -> "sha256:3066e9406dfc5ffda10b38b11e14bfbed3791d516193f4c43889f2f87ff537fa" [label=""];
  "sha256:3f4f7eaecfd9a76eb0e4aaff105d66ae28fe064efe9b6e6a8c45afcc39cf16ca" -> "sha256:3066e9406dfc5ffda10b38b11e14bfbed3791d516193f4c43889f2f87ff537fa" [label=""];
  "sha256:3066e9406dfc5ffda10b38b11e14bfbed3791d516193f4c43889f2f87ff537fa" -> "sha256:ec1059169dbb3eabb915f7191b45298ea259ddbd72013497894f7c79e78ce279" [label=""];
}

