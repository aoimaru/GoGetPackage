[app/sources/340189527.Dockerfile]
digraph {
  "sha256:5e767672e94c020e116cb004acb4eb855de0154b423e791c70157fed2a8e0388" [label="docker-image://docker.io/jjanzic/docker-python3-opencv:latest" shape="ellipse"];
  "sha256:b1f1bd91cb047bf54366927e60b94017d6f3f1b8367b6d09b27ed7e4dcd57e7b" [label="/bin/sh -c apt-get update && apt-get install -y wget curl git unzip cmake build-essential mesa-utils apt-transport-https ca-certificates python3-pip pkg-config python-dev" shape="box"];
  "sha256:a2e8273f7e73690d5aa813d97efcdb7a293605bde38738077fc3e9f6441de547" [label="/bin/sh -c apt-get install -y default-jre default-jdk" shape="box"];
  "sha256:5754318c76b4c3a06351e9659957d823a4b76286f72ab5e2784b2110561b23a6" [label="/bin/sh -c mkdir /backend" shape="box"];
  "sha256:5d64dc1216a1d29cb599395b74a07e18f077279a531881623a3f61bee54afc0c" [label="local://context" shape="ellipse"];
  "sha256:daa14086bba0b914eef7ab90f04bdcffb66ebafeb00d5e832b25ab46dfeacb3f" [label="copy{src=/, dest=/backend}" shape="note"];
  "sha256:0c54b0054608a67d569f13aca2e3e2d0c8aee6237bc02da44b3d01c8b7e9c86b" [label="/bin/sh -c pip3 install -r \"/backend/requirements.txt\"" shape="box"];
  "sha256:ba7bf5ddf30ec841f6eec23267703b042bd2479d30417ebea4729ff5b61f71b2" [label="/bin/sh -c pip3 install \"/backend/en_core_web_sm-2.0.0.tar.gz\"" shape="box"];
  "sha256:b587e6648372923ad4f952337e90763b101719f2d79b8412dbc682bc30a6a8ae" [label="mkdir{path=/backend/corenlp}" shape="note"];
  "sha256:6344b74aa464fc56392d9e7d9bc87e4b12c6cec0328f9a05e8bd242d7d72129c" [label="/bin/sh -c wget http://nlp.stanford.edu/software/stanford-corenlp-full-2018-02-27.zip" shape="box"];
  "sha256:268c05f79fdefc59fb37e80696891252ac1db622d06f591ec9e43b1b8f68c2ab" [label="/bin/sh -c unzip stanford-corenlp-full-2018-02-27.zip" shape="box"];
  "sha256:dd0cc1d5c4e1d628dd368a331115c4ce96421f6256af6282aea50fda15f9b8ed" [label="/bin/sh -c pip3 install stanfordcorenlp" shape="box"];
  "sha256:edf4f17e0b3a6232ab17d40be92673f5e13e807ac91b90a8569896c876daef4d" [label="sha256:edf4f17e0b3a6232ab17d40be92673f5e13e807ac91b90a8569896c876daef4d" shape="plaintext"];
  "sha256:5e767672e94c020e116cb004acb4eb855de0154b423e791c70157fed2a8e0388" -> "sha256:b1f1bd91cb047bf54366927e60b94017d6f3f1b8367b6d09b27ed7e4dcd57e7b" [label=""];
  "sha256:b1f1bd91cb047bf54366927e60b94017d6f3f1b8367b6d09b27ed7e4dcd57e7b" -> "sha256:a2e8273f7e73690d5aa813d97efcdb7a293605bde38738077fc3e9f6441de547" [label=""];
  "sha256:a2e8273f7e73690d5aa813d97efcdb7a293605bde38738077fc3e9f6441de547" -> "sha256:5754318c76b4c3a06351e9659957d823a4b76286f72ab5e2784b2110561b23a6" [label=""];
  "sha256:5754318c76b4c3a06351e9659957d823a4b76286f72ab5e2784b2110561b23a6" -> "sha256:daa14086bba0b914eef7ab90f04bdcffb66ebafeb00d5e832b25ab46dfeacb3f" [label=""];
  "sha256:5d64dc1216a1d29cb599395b74a07e18f077279a531881623a3f61bee54afc0c" -> "sha256:daa14086bba0b914eef7ab90f04bdcffb66ebafeb00d5e832b25ab46dfeacb3f" [label=""];
  "sha256:daa14086bba0b914eef7ab90f04bdcffb66ebafeb00d5e832b25ab46dfeacb3f" -> "sha256:0c54b0054608a67d569f13aca2e3e2d0c8aee6237bc02da44b3d01c8b7e9c86b" [label=""];
  "sha256:0c54b0054608a67d569f13aca2e3e2d0c8aee6237bc02da44b3d01c8b7e9c86b" -> "sha256:ba7bf5ddf30ec841f6eec23267703b042bd2479d30417ebea4729ff5b61f71b2" [label=""];
  "sha256:ba7bf5ddf30ec841f6eec23267703b042bd2479d30417ebea4729ff5b61f71b2" -> "sha256:b587e6648372923ad4f952337e90763b101719f2d79b8412dbc682bc30a6a8ae" [label=""];
  "sha256:b587e6648372923ad4f952337e90763b101719f2d79b8412dbc682bc30a6a8ae" -> "sha256:6344b74aa464fc56392d9e7d9bc87e4b12c6cec0328f9a05e8bd242d7d72129c" [label=""];
  "sha256:6344b74aa464fc56392d9e7d9bc87e4b12c6cec0328f9a05e8bd242d7d72129c" -> "sha256:268c05f79fdefc59fb37e80696891252ac1db622d06f591ec9e43b1b8f68c2ab" [label=""];
  "sha256:268c05f79fdefc59fb37e80696891252ac1db622d06f591ec9e43b1b8f68c2ab" -> "sha256:dd0cc1d5c4e1d628dd368a331115c4ce96421f6256af6282aea50fda15f9b8ed" [label=""];
  "sha256:dd0cc1d5c4e1d628dd368a331115c4ce96421f6256af6282aea50fda15f9b8ed" -> "sha256:edf4f17e0b3a6232ab17d40be92673f5e13e807ac91b90a8569896c876daef4d" [label=""];
}

