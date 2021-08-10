[app/sources/252774037.Dockerfile]
digraph {
  "sha256:aee155876d0f0605dd38355779212708517935faf9f67a707e23a3f28008a4fe" [label="docker-image://docker.io/aluxian/hadoop-spark:latest" shape="ellipse"];
  "sha256:71cb9a886e7eda4f78110d845128de9cf9a1d96bbb320b0738dc8d184de1bf73" [label="local://context" shape="ellipse"];
  "sha256:21f4382c0485904191a41405d254e64d6d8a1dc14243539dfc0dcf2636154a13" [label="copy{src=/spark-worker-entrypoint.sh, dest=/spark-worker-entrypoint.sh}" shape="note"];
  "sha256:59b6926625fd2bba4d4dbd82c13fce01712ced0b22a16143da3969051bcda075" [label="/bin/sh -c chmod a+x /spark-worker-entrypoint.sh" shape="box"];
  "sha256:f42a52743a629d0ad9a42d7defeee55c36036616dfba12a449e8d0d99a72c67e" [label="sha256:f42a52743a629d0ad9a42d7defeee55c36036616dfba12a449e8d0d99a72c67e" shape="plaintext"];
  "sha256:aee155876d0f0605dd38355779212708517935faf9f67a707e23a3f28008a4fe" -> "sha256:21f4382c0485904191a41405d254e64d6d8a1dc14243539dfc0dcf2636154a13" [label=""];
  "sha256:71cb9a886e7eda4f78110d845128de9cf9a1d96bbb320b0738dc8d184de1bf73" -> "sha256:21f4382c0485904191a41405d254e64d6d8a1dc14243539dfc0dcf2636154a13" [label=""];
  "sha256:21f4382c0485904191a41405d254e64d6d8a1dc14243539dfc0dcf2636154a13" -> "sha256:59b6926625fd2bba4d4dbd82c13fce01712ced0b22a16143da3969051bcda075" [label=""];
  "sha256:59b6926625fd2bba4d4dbd82c13fce01712ced0b22a16143da3969051bcda075" -> "sha256:f42a52743a629d0ad9a42d7defeee55c36036616dfba12a449e8d0d99a72c67e" [label=""];
}

