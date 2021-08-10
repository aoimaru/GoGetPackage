[app/sources/271623188.Dockerfile]
digraph {
  "sha256:b9e90e3b741d1385de97fa513b641b540004273100a67ef379030be00d7ca0c8" [label="local://context" shape="ellipse"];
  "sha256:a0b5e478a6e114f795f6582c3ad822966126173f047b3e5e710fd0d6ab9bc918" [label="docker-image://docker.io/samsara/base-image-jdk8:a33-j8u72@sha256:4878b9983c25fc829252adf256439f5771e7906538f6ea396d7d8587f93837d8" shape="ellipse"];
  "sha256:866de993c5d923e1af07366dd89c6e7d85093d1744e5450728559c939d70ecc6" [label="copy{src=/target/ingestion-api, dest=/opt/ingestion-api/}" shape="note"];
  "sha256:f9c3428f8ed65ee38800283b50da06255db7691599933e2e12fb97a0373bb30e" [label="copy{src=/config/config.edn.tmpl, dest=/opt/ingestion-api/config/config.edn}" shape="note"];
  "sha256:eff43d11c559884a4fc41b6c073fb40dc7fc827b6ec87f1d2b1c931702946d6e" [label="copy{src=/docker/configure-and-start.sh, dest=/configure-and-start.sh}" shape="note"];
  "sha256:0785356d154cd850694b9dfb3d86704c1e6ad71aac9a0cffc839ac01be1f3d01" [label="copy{src=/docker/ingestion-api-supervisor.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:b10e578a3665233f7ea5a37c5a0403b8aece3f45a721724a2bbc36de4cb8ea4a" [label="sha256:b10e578a3665233f7ea5a37c5a0403b8aece3f45a721724a2bbc36de4cb8ea4a" shape="plaintext"];
  "sha256:a0b5e478a6e114f795f6582c3ad822966126173f047b3e5e710fd0d6ab9bc918" -> "sha256:866de993c5d923e1af07366dd89c6e7d85093d1744e5450728559c939d70ecc6" [label=""];
  "sha256:b9e90e3b741d1385de97fa513b641b540004273100a67ef379030be00d7ca0c8" -> "sha256:866de993c5d923e1af07366dd89c6e7d85093d1744e5450728559c939d70ecc6" [label=""];
  "sha256:866de993c5d923e1af07366dd89c6e7d85093d1744e5450728559c939d70ecc6" -> "sha256:f9c3428f8ed65ee38800283b50da06255db7691599933e2e12fb97a0373bb30e" [label=""];
  "sha256:b9e90e3b741d1385de97fa513b641b540004273100a67ef379030be00d7ca0c8" -> "sha256:f9c3428f8ed65ee38800283b50da06255db7691599933e2e12fb97a0373bb30e" [label=""];
  "sha256:f9c3428f8ed65ee38800283b50da06255db7691599933e2e12fb97a0373bb30e" -> "sha256:eff43d11c559884a4fc41b6c073fb40dc7fc827b6ec87f1d2b1c931702946d6e" [label=""];
  "sha256:b9e90e3b741d1385de97fa513b641b540004273100a67ef379030be00d7ca0c8" -> "sha256:eff43d11c559884a4fc41b6c073fb40dc7fc827b6ec87f1d2b1c931702946d6e" [label=""];
  "sha256:eff43d11c559884a4fc41b6c073fb40dc7fc827b6ec87f1d2b1c931702946d6e" -> "sha256:0785356d154cd850694b9dfb3d86704c1e6ad71aac9a0cffc839ac01be1f3d01" [label=""];
  "sha256:b9e90e3b741d1385de97fa513b641b540004273100a67ef379030be00d7ca0c8" -> "sha256:0785356d154cd850694b9dfb3d86704c1e6ad71aac9a0cffc839ac01be1f3d01" [label=""];
  "sha256:0785356d154cd850694b9dfb3d86704c1e6ad71aac9a0cffc839ac01be1f3d01" -> "sha256:b10e578a3665233f7ea5a37c5a0403b8aece3f45a721724a2bbc36de4cb8ea4a" [label=""];
}

