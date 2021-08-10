[app/sources/174644983.Dockerfile]
digraph {
  "sha256:3fa4282d05543dd9ad83bb14a8d2492a6110e935a2f09ac2cb350d443d45b909" [label="docker-image://docker.io/broadinstitute/gatk:gatkbase-2.0.3" shape="ellipse"];
  "sha256:98656390f1454aa12163fab65c1f76042c0cf58a94499f010084498789ed6db5" [label="local://context" shape="ellipse"];
  "sha256:d216b3fdc1ce952c1dc8b073c1bcd357746b649725520dc9a8e958cb854524f1" [label="copy{src=/, dest=/gatk}" shape="note"];
  "sha256:9f6c084a6135c3c7462c0b3988fd85fa31bfadbf50991ac7c3255383995f1626" [label="mkdir{path=/gatk}" shape="note"];
  "sha256:e454ce8515b1dbb49a3f1a193707661ae25bed5a37f2315a90db5a083b16e99d" [label="/bin/sh -c ln -s $( find /gatk -name \"gatk*local.jar\" ) gatk.jar" shape="box"];
  "sha256:27112a1e3185557d79626fdf5f81f503cc1540cd82fdf38c3aa26c7f03cb1a35" [label="/bin/sh -c ln -s $( find /gatk -name \"gatk*local.jar\" ) /root/gatk.jar" shape="box"];
  "sha256:48bf9ccdf050b1a4a305636c2d3cedec2f0d2b4dff3958f9b4109067429dadb8" [label="/bin/sh -c ln -s $( find /gatk -name \"gatk*spark.jar\" ) gatk-spark.jar" shape="box"];
  "sha256:a6247c814eac0b7d01e7591ab90be303539f5c60f8ad8f067a968ebf4da10b52" [label="mkdir{path=/root}" shape="note"];
  "sha256:1ac494371d51e8af24686050a20352e1a5faf5aa2b5aaa2c0cf128c7c561008b" [label="/bin/sh -c java -jar gatk.jar -h" shape="box"];
  "sha256:29ceb75e11b5ff604b05b706dde4de1906e55ee1fbe7dc065bbf44a9a6081053" [label="/bin/sh -c mkdir /gatkCloneMountPoint" shape="box"];
  "sha256:75741deb6dd29e69274531e12e9d978390d466060de05e8c98342efa7844a715" [label="/bin/sh -c mkdir /jars" shape="box"];
  "sha256:fbafba768b89b783b0d14c4c36b13019247691c45a18a9313b147ed8b1c3dcdc" [label="/bin/sh -c mkdir .gradle" shape="box"];
  "sha256:e19b7a5b253f401942f9c3e266b614b051dee9a7559bb1a885d5b8918b5abafd" [label="mkdir{path=/gatk}" shape="note"];
  "sha256:845065ffa0020b3b8f00f312554e6d8acdf3a29320644de7c6b392c3ecdba436" [label="/bin/sh -c echo \"source activate gatk\" > /root/run_unit_tests.sh &&     echo \"export GATK_DOCKER_CONTAINER=true\" >> /root/run_unit_tests.sh &&     echo \"export TEST_JAR=\\$( find /jars -name \\\"gatk*test.jar\\\" )\" >> /root/run_unit_tests.sh &&     echo \"export TEST_DEPENDENCY_JAR=\\$( find /jars -name \\\"gatk*testDependencies.jar\\\" )\" >> /root/run_unit_tests.sh &&     echo \"export GATK_JAR=$( find /gatk -name \"gatk*local.jar\" )\" >> /root/run_unit_tests.sh &&     echo \"mkdir /gatk/srcdir\" >> /root/run_unit_tests.sh &&     echo \"cp -rp /gatkCloneMountPoint/src/main/java/* /gatk/srcdir\" >> /root/run_unit_tests.sh &&     echo \"export SOURCE_DIR=/gatk/srcdir\" >> /root/run_unit_tests.sh &&     echo \"export GRADLE_OPTS=\\\"-Xmx1024m -Dorg.gradle.daemon=false\\\"\" /root/run_unit_tests.sh &&     echo \"export CP_DIR=/gatk/testClasses\" /root/run_unit_tests.sh &&     echo \"ln -s /gatkCloneMountPoint/src/ /gatkCloneMountPoint/scripts/docker/src\" >> /root/run_unit_tests.sh &&     echo \"ln -s /gatkCloneMountPoint/build/ /gatkCloneMountPoint/scripts/docker/build\" >> /root/run_unit_tests.sh &&     echo \"cd /gatk/ && /gatkCloneMountPoint/gradlew -b /gatkCloneMountPoint/dockertest.gradle testOnPackagedReleaseJar jacocoTestReportOnPackagedReleaseJar -a -p /gatkCloneMountPoint\" >> /root/run_unit_tests.sh" shape="box"];
  "sha256:9fe6af0cb5d93d0056c3c074b95de50441ba068ea47f252ada9f2b67289580b7" [label="mkdir{path=/root}" shape="note"];
  "sha256:24a006eb075e422639dd4a4200e4b68b0df67332b83f0502017a610b3cb3c3c9" [label="/bin/sh -c cp -r /root/run_unit_tests.sh /gatk" shape="box"];
  "sha256:b2471b26fca603386e9108e3a31abf9fa7dfc2c61c128d5df708fce3fbae4e85" [label="/bin/sh -c cp -r gatk.jar /gatk" shape="box"];
  "sha256:97c0789767834e57529d87644105f5746f94b7bdb5ea5bc8a724d9ea46d910dd" [label="/bin/sh -c cp -r install_R_packages.R /gatk" shape="box"];
  "sha256:e38e9cca086709eadce35b67ca3ee220061faf401b2d2ce11ea8008e70df5b8c" [label="/bin/sh -c mkdir $DOWNLOAD_DIR &&     wget -nv -O $DOWNLOAD_DIR/miniconda.sh $CONDA_URL &&     test \"`md5sum $DOWNLOAD_DIR/miniconda.sh | awk -v FS='  ' '{print $1}'` = $CONDA_MD5\" &&     bash $DOWNLOAD_DIR/miniconda.sh -p $CONDA_PATH -b &&     rm $DOWNLOAD_DIR/miniconda.sh" shape="box"];
  "sha256:dc4a163fcced1fdd3da01f9fd13a4c474e53068005687e53d0f26fc4839c3653" [label="mkdir{path=/gatk}" shape="note"];
  "sha256:e7699751e40ae5e17c6b01585951f8132a5c2d7a18cdd054a4d42b86ee1d8e46" [label="/bin/sh -c conda env create -n gatk -f /gatk/gatkcondaenv.yml &&     echo \"source activate gatk\" >> /gatk/gatkenv.rc &&     echo \"source /gatk/gatk-completion.sh\" >> /gatk/gatkenv.rc &&     conda clean -y -all &&     rm -rf /root/.cache/pip" shape="box"];
  "sha256:413812bb6b5d5d41a219fc9728a4d0842bd851a97f9c9e617f8c1f9093ac235f" [label="sha256:413812bb6b5d5d41a219fc9728a4d0842bd851a97f9c9e617f8c1f9093ac235f" shape="plaintext"];
  "sha256:3fa4282d05543dd9ad83bb14a8d2492a6110e935a2f09ac2cb350d443d45b909" -> "sha256:d216b3fdc1ce952c1dc8b073c1bcd357746b649725520dc9a8e958cb854524f1" [label=""];
  "sha256:98656390f1454aa12163fab65c1f76042c0cf58a94499f010084498789ed6db5" -> "sha256:d216b3fdc1ce952c1dc8b073c1bcd357746b649725520dc9a8e958cb854524f1" [label=""];
  "sha256:d216b3fdc1ce952c1dc8b073c1bcd357746b649725520dc9a8e958cb854524f1" -> "sha256:9f6c084a6135c3c7462c0b3988fd85fa31bfadbf50991ac7c3255383995f1626" [label=""];
  "sha256:9f6c084a6135c3c7462c0b3988fd85fa31bfadbf50991ac7c3255383995f1626" -> "sha256:e454ce8515b1dbb49a3f1a193707661ae25bed5a37f2315a90db5a083b16e99d" [label=""];
  "sha256:e454ce8515b1dbb49a3f1a193707661ae25bed5a37f2315a90db5a083b16e99d" -> "sha256:27112a1e3185557d79626fdf5f81f503cc1540cd82fdf38c3aa26c7f03cb1a35" [label=""];
  "sha256:27112a1e3185557d79626fdf5f81f503cc1540cd82fdf38c3aa26c7f03cb1a35" -> "sha256:48bf9ccdf050b1a4a305636c2d3cedec2f0d2b4dff3958f9b4109067429dadb8" [label=""];
  "sha256:48bf9ccdf050b1a4a305636c2d3cedec2f0d2b4dff3958f9b4109067429dadb8" -> "sha256:a6247c814eac0b7d01e7591ab90be303539f5c60f8ad8f067a968ebf4da10b52" [label=""];
  "sha256:a6247c814eac0b7d01e7591ab90be303539f5c60f8ad8f067a968ebf4da10b52" -> "sha256:1ac494371d51e8af24686050a20352e1a5faf5aa2b5aaa2c0cf128c7c561008b" [label=""];
  "sha256:1ac494371d51e8af24686050a20352e1a5faf5aa2b5aaa2c0cf128c7c561008b" -> "sha256:29ceb75e11b5ff604b05b706dde4de1906e55ee1fbe7dc065bbf44a9a6081053" [label=""];
  "sha256:29ceb75e11b5ff604b05b706dde4de1906e55ee1fbe7dc065bbf44a9a6081053" -> "sha256:75741deb6dd29e69274531e12e9d978390d466060de05e8c98342efa7844a715" [label=""];
  "sha256:75741deb6dd29e69274531e12e9d978390d466060de05e8c98342efa7844a715" -> "sha256:fbafba768b89b783b0d14c4c36b13019247691c45a18a9313b147ed8b1c3dcdc" [label=""];
  "sha256:fbafba768b89b783b0d14c4c36b13019247691c45a18a9313b147ed8b1c3dcdc" -> "sha256:e19b7a5b253f401942f9c3e266b614b051dee9a7559bb1a885d5b8918b5abafd" [label=""];
  "sha256:e19b7a5b253f401942f9c3e266b614b051dee9a7559bb1a885d5b8918b5abafd" -> "sha256:845065ffa0020b3b8f00f312554e6d8acdf3a29320644de7c6b392c3ecdba436" [label=""];
  "sha256:845065ffa0020b3b8f00f312554e6d8acdf3a29320644de7c6b392c3ecdba436" -> "sha256:9fe6af0cb5d93d0056c3c074b95de50441ba068ea47f252ada9f2b67289580b7" [label=""];
  "sha256:9fe6af0cb5d93d0056c3c074b95de50441ba068ea47f252ada9f2b67289580b7" -> "sha256:24a006eb075e422639dd4a4200e4b68b0df67332b83f0502017a610b3cb3c3c9" [label=""];
  "sha256:24a006eb075e422639dd4a4200e4b68b0df67332b83f0502017a610b3cb3c3c9" -> "sha256:b2471b26fca603386e9108e3a31abf9fa7dfc2c61c128d5df708fce3fbae4e85" [label=""];
  "sha256:b2471b26fca603386e9108e3a31abf9fa7dfc2c61c128d5df708fce3fbae4e85" -> "sha256:97c0789767834e57529d87644105f5746f94b7bdb5ea5bc8a724d9ea46d910dd" [label=""];
  "sha256:97c0789767834e57529d87644105f5746f94b7bdb5ea5bc8a724d9ea46d910dd" -> "sha256:e38e9cca086709eadce35b67ca3ee220061faf401b2d2ce11ea8008e70df5b8c" [label=""];
  "sha256:e38e9cca086709eadce35b67ca3ee220061faf401b2d2ce11ea8008e70df5b8c" -> "sha256:dc4a163fcced1fdd3da01f9fd13a4c474e53068005687e53d0f26fc4839c3653" [label=""];
  "sha256:dc4a163fcced1fdd3da01f9fd13a4c474e53068005687e53d0f26fc4839c3653" -> "sha256:e7699751e40ae5e17c6b01585951f8132a5c2d7a18cdd054a4d42b86ee1d8e46" [label=""];
  "sha256:e7699751e40ae5e17c6b01585951f8132a5c2d7a18cdd054a4d42b86ee1d8e46" -> "sha256:413812bb6b5d5d41a219fc9728a4d0842bd851a97f9c9e617f8c1f9093ac235f" [label=""];
}

