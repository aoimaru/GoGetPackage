[app/sources/294654679.Dockerfile]
digraph {
  "sha256:05d13ea14a3d20c85e085cdcddbf7294de6dcbdc38db19ab0039953daecbeaa4" [label="docker-image://docker.io/adoptopenjdk/openjdk11:latest" shape="ellipse"];
  "sha256:91044e117eb549813c47b1c3eae1d88d689beb59b3f1ff1a1bac626f815cac1d" [label="/bin/sh -c curl -fsL https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C /root/ &&   echo >> /root/.bashrc &&   echo \"export PATH=~/scala-$SCALA_VERSION/bin:$PATH\" >> /root/.bashrc" shape="box"];
  "sha256:25a33adc3c69da617ffbccf728565dcb9bcce07dd6368547b6bfba629641c091" [label="/bin/sh -c curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb &&   dpkg -i sbt-$SBT_VERSION.deb &&   rm sbt-$SBT_VERSION.deb &&   apt-get update &&   apt-get install sbt &&   sbt sbtVersion" shape="box"];
  "sha256:2819fc0deb1beeaae8ce5167b6f204d2e2e33dfe6f786ba6ed5e8676c6944b0e" [label="mkdir{path=/root}" shape="note"];
  "sha256:1001f44054e855e519bbda4d62564be0bd13b2d25ec6b5a9c7a90ac98c05cd8f" [label="/bin/sh -c echo \"hello\"" shape="box"];
  "sha256:6fa58e0069620bc655d6ebea8a4473d8fb93bd28bf8a621a5d725166592a6601" [label="sha256:6fa58e0069620bc655d6ebea8a4473d8fb93bd28bf8a621a5d725166592a6601" shape="plaintext"];
  "sha256:05d13ea14a3d20c85e085cdcddbf7294de6dcbdc38db19ab0039953daecbeaa4" -> "sha256:91044e117eb549813c47b1c3eae1d88d689beb59b3f1ff1a1bac626f815cac1d" [label=""];
  "sha256:91044e117eb549813c47b1c3eae1d88d689beb59b3f1ff1a1bac626f815cac1d" -> "sha256:25a33adc3c69da617ffbccf728565dcb9bcce07dd6368547b6bfba629641c091" [label=""];
  "sha256:25a33adc3c69da617ffbccf728565dcb9bcce07dd6368547b6bfba629641c091" -> "sha256:2819fc0deb1beeaae8ce5167b6f204d2e2e33dfe6f786ba6ed5e8676c6944b0e" [label=""];
  "sha256:2819fc0deb1beeaae8ce5167b6f204d2e2e33dfe6f786ba6ed5e8676c6944b0e" -> "sha256:1001f44054e855e519bbda4d62564be0bd13b2d25ec6b5a9c7a90ac98c05cd8f" [label=""];
  "sha256:1001f44054e855e519bbda4d62564be0bd13b2d25ec6b5a9c7a90ac98c05cd8f" -> "sha256:6fa58e0069620bc655d6ebea8a4473d8fb93bd28bf8a621a5d725166592a6601" [label=""];
}

