[app/sources/241168611.Dockerfile]
digraph {
  "sha256:ac64e05e113bbbf520bb614b3361a8b4a3e47d772715de165b67a22bd7c601f3" [label="docker-image://docker.io/gettyimages/spark:2.4.1-hadoop-3.0" shape="ellipse"];
  "sha256:0177fb8faea6ae8c6ae34ba79cdf912f78c53cbb6a1392ba9a3cfebfa2bb12ac" [label="/bin/sh -c apt-get update &&     apt-get install -y netcat procps" shape="box"];
  "sha256:22bde717a771e6781df475a7bee6f934ffe5a0bbecef5143dd312b1eb103483c" [label="local://context" shape="ellipse"];
  "sha256:15de1e824c8ca45bf305bbdc9ef77f8bcfa60b3a277187b3a0425e91babcd268" [label="copy{src=/metrics.properties, dest=/conf/metrics.properties}" shape="note"];
  "sha256:4fa44be931b949846c693e0fab2fbba054ecbacf05bb0bd1c6c5ccbb68a8b8b0" [label="copy{src=/spark-defaults.conf, dest=/conf/spark-defaults.conf}" shape="note"];
  "sha256:141c71c85e7172bdfd51a082d812c48e207615c131607727a1932445c0e85b66" [label="sha256:141c71c85e7172bdfd51a082d812c48e207615c131607727a1932445c0e85b66" shape="plaintext"];
  "sha256:ac64e05e113bbbf520bb614b3361a8b4a3e47d772715de165b67a22bd7c601f3" -> "sha256:0177fb8faea6ae8c6ae34ba79cdf912f78c53cbb6a1392ba9a3cfebfa2bb12ac" [label=""];
  "sha256:0177fb8faea6ae8c6ae34ba79cdf912f78c53cbb6a1392ba9a3cfebfa2bb12ac" -> "sha256:15de1e824c8ca45bf305bbdc9ef77f8bcfa60b3a277187b3a0425e91babcd268" [label=""];
  "sha256:22bde717a771e6781df475a7bee6f934ffe5a0bbecef5143dd312b1eb103483c" -> "sha256:15de1e824c8ca45bf305bbdc9ef77f8bcfa60b3a277187b3a0425e91babcd268" [label=""];
  "sha256:15de1e824c8ca45bf305bbdc9ef77f8bcfa60b3a277187b3a0425e91babcd268" -> "sha256:4fa44be931b949846c693e0fab2fbba054ecbacf05bb0bd1c6c5ccbb68a8b8b0" [label=""];
  "sha256:22bde717a771e6781df475a7bee6f934ffe5a0bbecef5143dd312b1eb103483c" -> "sha256:4fa44be931b949846c693e0fab2fbba054ecbacf05bb0bd1c6c5ccbb68a8b8b0" [label=""];
  "sha256:4fa44be931b949846c693e0fab2fbba054ecbacf05bb0bd1c6c5ccbb68a8b8b0" -> "sha256:141c71c85e7172bdfd51a082d812c48e207615c131607727a1932445c0e85b66" [label=""];
}

