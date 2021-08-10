[app/sources/200122931.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f7f5ff5bfb23f97d2379dd45219e10773995e533ffca3b18ff49ea8d359048ad" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:5d5354b435c000cd99b97d0e9f06126f69e94311365de82e787c636b9faeffee" [label="/bin/sh -c apt-get install -y python-pip ninja-build cmake git-core wget" shape="box"];
  "sha256:065dddb407efa887caa9317a831b11cb8ba2cf498053c5f1e5a64bbdf31fe332" [label="/bin/sh -c apt-get install -y unixodbc unixodbc-dev" shape="box"];
  "sha256:043eed62581a4da3ec58566861894a13e650ff10fe3fa16b23170257254c58a4" [label="/bin/sh -c apt-get install -y libboost-all-dev" shape="box"];
  "sha256:5211056a21edc71c9ae672dffc105cb6dc08ac3b315d6c6ef440d3518a389313" [label="/bin/sh -c apt-get install -y mysql-server-5.6 mysql-client-core-5.6 mysql-client-5.6 libmyodbc" shape="box"];
  "sha256:7cd24295ab376e7704ecd57dd9e043206a861e5b1bd97555922c66f43a791063" [label="/bin/sh -c apt-get install -y postgresql odbc-postgresql=1:09.02.0100-2ubuntu1" shape="box"];
  "sha256:59ec6318a56962bae475c5067f9cb1572a4d24258db7d6d3e0dce87bff6081dd" [label="/bin/sh -c pip install -U pip setuptools setuptools_scm" shape="box"];
  "sha256:0ec723c97e63e9f36354328e0ef85e1e85950f09fb7834f42b7ecdcc8602bcb1" [label="/bin/sh -c pip install -U numpy==1.10.4 pyarrow==0.8.0 pybind11==2.2.0 pytest pytest-cov mock six pandas==0.20.0" shape="box"];
  "sha256:bd3017e4c449e2b1bc046d18d7e7c13fda605f36b31be57ef2d622ed3b6a65b9" [label="sha256:bd3017e4c449e2b1bc046d18d7e7c13fda605f36b31be57ef2d622ed3b6a65b9" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:f7f5ff5bfb23f97d2379dd45219e10773995e533ffca3b18ff49ea8d359048ad" [label=""];
  "sha256:f7f5ff5bfb23f97d2379dd45219e10773995e533ffca3b18ff49ea8d359048ad" -> "sha256:5d5354b435c000cd99b97d0e9f06126f69e94311365de82e787c636b9faeffee" [label=""];
  "sha256:5d5354b435c000cd99b97d0e9f06126f69e94311365de82e787c636b9faeffee" -> "sha256:065dddb407efa887caa9317a831b11cb8ba2cf498053c5f1e5a64bbdf31fe332" [label=""];
  "sha256:065dddb407efa887caa9317a831b11cb8ba2cf498053c5f1e5a64bbdf31fe332" -> "sha256:043eed62581a4da3ec58566861894a13e650ff10fe3fa16b23170257254c58a4" [label=""];
  "sha256:043eed62581a4da3ec58566861894a13e650ff10fe3fa16b23170257254c58a4" -> "sha256:5211056a21edc71c9ae672dffc105cb6dc08ac3b315d6c6ef440d3518a389313" [label=""];
  "sha256:5211056a21edc71c9ae672dffc105cb6dc08ac3b315d6c6ef440d3518a389313" -> "sha256:7cd24295ab376e7704ecd57dd9e043206a861e5b1bd97555922c66f43a791063" [label=""];
  "sha256:7cd24295ab376e7704ecd57dd9e043206a861e5b1bd97555922c66f43a791063" -> "sha256:59ec6318a56962bae475c5067f9cb1572a4d24258db7d6d3e0dce87bff6081dd" [label=""];
  "sha256:59ec6318a56962bae475c5067f9cb1572a4d24258db7d6d3e0dce87bff6081dd" -> "sha256:0ec723c97e63e9f36354328e0ef85e1e85950f09fb7834f42b7ecdcc8602bcb1" [label=""];
  "sha256:0ec723c97e63e9f36354328e0ef85e1e85950f09fb7834f42b7ecdcc8602bcb1" -> "sha256:bd3017e4c449e2b1bc046d18d7e7c13fda605f36b31be57ef2d622ed3b6a65b9" [label=""];
}

