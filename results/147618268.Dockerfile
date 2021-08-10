[app/sources/147618268.Dockerfile]
digraph {
  "sha256:c6b8413afd125919d53110e34ad559101354af5531330e36f94a82cf9e0edd19" [label="local://context" shape="ellipse"];
  "sha256:13654926c5b97dcf7721f830be475870418b8a7d5f77256e3763aeb907ad8e08" [label="docker-image://docker.io/continuumio/miniconda3@sha256:592a60b95b547f31c11dc6593832e962952e3178f1fa11db37f43a2afe8df8d7" shape="ellipse"];
  "sha256:c7adbd16931ec8db0a8a83641df22f08c6a4680fd05ede2fc7ca50ec975de12f" [label="mkdir{path=/shennong}" shape="note"];
  "sha256:7bb8c195af6081621d474911c39659840f3fcea2c2d97e491e51236b90a3bbff" [label="copy{src=/environment.yml, dest=/shennong/environment.yml}" shape="note"];
  "sha256:430764acaf4d7f76a5320d4c7064a0ca4ca3e93eec7f12e4e0187c2f4089c812" [label="/bin/sh -c conda env create -n shennong -f environment.yml &&         rm -rf /opt/conda/pkgs/*" shape="box"];
  "sha256:934fe861515f2adb543139f6515914d7762590ce32b4b8c9af41b1540e429418" [label="copy{src=/, dest=/shennong/}" shape="note"];
  "sha256:b87682ee63cd90b0328151084e9c7a37a74d58ff373dfce84cae165f637d0495" [label="/bin/sh -c /bin/bash -c \"source activate shennong &&         python setup.py install &&         python setup.py test\"" shape="box"];
  "sha256:8b48ef5af7eac0b932fd8c9d31272428083e91395737406e9978330d25ddb338" [label="sha256:8b48ef5af7eac0b932fd8c9d31272428083e91395737406e9978330d25ddb338" shape="plaintext"];
  "sha256:13654926c5b97dcf7721f830be475870418b8a7d5f77256e3763aeb907ad8e08" -> "sha256:c7adbd16931ec8db0a8a83641df22f08c6a4680fd05ede2fc7ca50ec975de12f" [label=""];
  "sha256:c7adbd16931ec8db0a8a83641df22f08c6a4680fd05ede2fc7ca50ec975de12f" -> "sha256:7bb8c195af6081621d474911c39659840f3fcea2c2d97e491e51236b90a3bbff" [label=""];
  "sha256:c6b8413afd125919d53110e34ad559101354af5531330e36f94a82cf9e0edd19" -> "sha256:7bb8c195af6081621d474911c39659840f3fcea2c2d97e491e51236b90a3bbff" [label=""];
  "sha256:7bb8c195af6081621d474911c39659840f3fcea2c2d97e491e51236b90a3bbff" -> "sha256:430764acaf4d7f76a5320d4c7064a0ca4ca3e93eec7f12e4e0187c2f4089c812" [label=""];
  "sha256:430764acaf4d7f76a5320d4c7064a0ca4ca3e93eec7f12e4e0187c2f4089c812" -> "sha256:934fe861515f2adb543139f6515914d7762590ce32b4b8c9af41b1540e429418" [label=""];
  "sha256:c6b8413afd125919d53110e34ad559101354af5531330e36f94a82cf9e0edd19" -> "sha256:934fe861515f2adb543139f6515914d7762590ce32b4b8c9af41b1540e429418" [label=""];
  "sha256:934fe861515f2adb543139f6515914d7762590ce32b4b8c9af41b1540e429418" -> "sha256:b87682ee63cd90b0328151084e9c7a37a74d58ff373dfce84cae165f637d0495" [label=""];
  "sha256:b87682ee63cd90b0328151084e9c7a37a74d58ff373dfce84cae165f637d0495" -> "sha256:8b48ef5af7eac0b932fd8c9d31272428083e91395737406e9978330d25ddb338" [label=""];
}

