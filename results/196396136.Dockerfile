[app/sources/196396136.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:47a50770ff34734bbcf378f3fc21a61141b3994770077d9369ef5f02e52af6c6" [label="/bin/sh -c set -euxo pipefail &&     apk add --no-cache bash openjdk8 supervisor which &&     mkdir -p /etc/supervisor.d" shape="box"];
  "sha256:c1921da2b9326bfe2ca3a0b60c260efe89d8c481677566574c1d6b52f036dcad" [label="/bin/sh -c set -euxo pipefail &&     apk add --no-cache wget tar &&     url=\"http://www.apache.org/dyn/closer.lua?filename=drill/drill-${APACHE_DRILL_VERSION}/${TAR}&action=download\";     url_archive=\"http://archive.apache.org/dist/drill/drill-${APACHE_DRILL_VERSION}/${TAR}\";     wget -t 10 --max-redirect 1 --retry-connrefused -O \"${TAR}\" \"$url\" ||     wget -t 10 --max-redirect 1 --retry-connrefused -O \"${TAR}\" \"$url_archive\" &&     tar zxf \"${TAR}\" &&     test -d \"apache-drill-${APACHE_DRILL_VERSION}\" &&     rm -fv  \"${TAR}\" &&     ln -sv \"apache-drill-${APACHE_DRILL_VERSION}\" apache-drill &&     apk del tar wget" shape="box"];
  "sha256:91a92e698a2ed6a70bb4bb92b98fe87cb6c74798cb609f08d514efdf63eaa66a" [label="/bin/sh -c set -euxo pipefail &&     sed -i -e \"s/-Xms1G/-Xms\\$DRILL_MAX_HEAP/\" apache-drill/conf/drill-env.sh &&     sed -i -e \"s/^DRILL_MAX_HEAP=.*/DRILL_MAX_HEAP=\\\"${DRILL_HEAP}\\\"/\" apache-drill/conf/drill-env.sh &&         sed -i -e \"s/^DRILL_HEAP=.*/DRILL_HEAP=\\\"${DRILL_HEAP}\\\"/\" apache-drill/conf/drill-env.sh &&     sed -i -e \"s/^\\([[:space:]]*\\)zk.connect:.*/\\\\1zk.connect: \\\"${ZOOKEEPER_HOST}\\\"/\" apache-drill/conf/drill-override.conf" shape="box"];
  "sha256:b49c66823a6c7698d8c3aa0b740d1232475fe6a696e049ef4f728461a3c8610a" [label="local://context" shape="ellipse"];
  "sha256:38bfe343046a37652944789102cf2fa2c00eccd35084c81adeee0320b3225f53" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:dd2cc0b9268d3b63a2eceee5d268fb38edc250a733492cf9e621b41a4e356b0d" [label="copy{src=/supervisord.d/drill.ini, dest=/etc/supervisor.d/}" shape="note"];
  "sha256:3a575320812187a31d0d9e4b75483910f559fdb87487553485310d7025e4f4ab" [label="sha256:3a575320812187a31d0d9e4b75483910f559fdb87487553485310d7025e4f4ab" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:47a50770ff34734bbcf378f3fc21a61141b3994770077d9369ef5f02e52af6c6" [label=""];
  "sha256:47a50770ff34734bbcf378f3fc21a61141b3994770077d9369ef5f02e52af6c6" -> "sha256:c1921da2b9326bfe2ca3a0b60c260efe89d8c481677566574c1d6b52f036dcad" [label=""];
  "sha256:c1921da2b9326bfe2ca3a0b60c260efe89d8c481677566574c1d6b52f036dcad" -> "sha256:91a92e698a2ed6a70bb4bb92b98fe87cb6c74798cb609f08d514efdf63eaa66a" [label=""];
  "sha256:91a92e698a2ed6a70bb4bb92b98fe87cb6c74798cb609f08d514efdf63eaa66a" -> "sha256:38bfe343046a37652944789102cf2fa2c00eccd35084c81adeee0320b3225f53" [label=""];
  "sha256:b49c66823a6c7698d8c3aa0b740d1232475fe6a696e049ef4f728461a3c8610a" -> "sha256:38bfe343046a37652944789102cf2fa2c00eccd35084c81adeee0320b3225f53" [label=""];
  "sha256:38bfe343046a37652944789102cf2fa2c00eccd35084c81adeee0320b3225f53" -> "sha256:dd2cc0b9268d3b63a2eceee5d268fb38edc250a733492cf9e621b41a4e356b0d" [label=""];
  "sha256:b49c66823a6c7698d8c3aa0b740d1232475fe6a696e049ef4f728461a3c8610a" -> "sha256:dd2cc0b9268d3b63a2eceee5d268fb38edc250a733492cf9e621b41a4e356b0d" [label=""];
  "sha256:dd2cc0b9268d3b63a2eceee5d268fb38edc250a733492cf9e621b41a4e356b0d" -> "sha256:3a575320812187a31d0d9e4b75483910f559fdb87487553485310d7025e4f4ab" [label=""];
}

