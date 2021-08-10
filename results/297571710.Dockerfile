[app/sources/297571710.Dockerfile]
digraph {
  "sha256:38c4327aa1c6400c281ca42c737cababd417fb8423c855161dbfab3b3a516c0d" [label="local://context" shape="ellipse"];
  "sha256:235f24b7c4dec40f5952bd1e799b2ce4ac64320f42e85430794c24f36d415d30" [label="docker-image://docker.io/library/python:2.7.13-alpine3.6" shape="ellipse"];
  "sha256:75e52b83f775a9524ec84c765ff317dfa657ddfbaec22625cdcba3f79f02f496" [label="copy{src=/mysql-connector-python-2.1.6.tar.gz, dest=/tmp/mysql-connector-python-2.1.6.tar.gz}" shape="note"];
  "sha256:8d4a2540104be9f8c6b06f463b17a3324bd7baca7d8aa898e6a14c5a9ac87c42" [label="copy{src=/install-packages.R, dest=/tmp/install-packages.R}" shape="note"];
  "sha256:a47c33e852e8947edbce2e58b712a9a073ea852325a9caa963629f689cf12c6b" [label="copy{src=/roslin-qc-0.5.0.tar.gz, dest=/tmp/roslin-qc-0.5.0.tar.gz}" shape="note"];
  "sha256:b691d1dc326fe9c4ad4cd66456d20548070c3aa3c2c9d47ef160dd787c90e138" [label="/bin/sh -c apk add --update     && apk add ca-certificates openssl     && apk add build-base musl-dev     && easy_install hashlib     && cd /tmp \t&& pip install mysql-connector-python-2.1.6.tar.gz \t&& easy_install pandas \t&& pip install fnmatch2 dbconfig argparse \t&& apk add R=${R_VERSION} R-dev=${R_VERSION} R-doc=${R_VERSION} \t&& Rscript --vanilla install-packages.R \t&& apk add openjdk8-jre-base perl \t&& tar xvzf roslin-qc-${ROSLIN_QC_VERSION}.tar.gz \t&& cd roslin-qc-${ROSLIN_QC_VERSION} \t&& sed -i[.bak] \"s/opt\\/common\\/CentOS_6-dev\\//usr\\//g\" *.pl \t&& sed -i[.bak] \"s/opt\\/common\\/CentOS_6\\/python\\/python-2.7.8\\//usr\\/local\\//g\" *.py \t&& sed -i[.bak] \"s/opt\\/common\\/CentOS_6\\/R\\/R-3.2.0\\//usr\\//g\" *.R \t&& sed -i[.bak] \"s/opt\\/common\\//usr\\/local\\//g\" *.py \t&& perl -MCPAN -e 'install Tie::IxHash' \t&& cp -r /tmp/roslin-qc-${ROSLIN_QC_VERSION}/* /usr/bin \t&& rm -rf /tmp/*" shape="box"];
  "sha256:4e859013e375af9148a6c023351e8a90a42af08b2f465006300d3a51f7789faf" [label="sha256:4e859013e375af9148a6c023351e8a90a42af08b2f465006300d3a51f7789faf" shape="plaintext"];
  "sha256:235f24b7c4dec40f5952bd1e799b2ce4ac64320f42e85430794c24f36d415d30" -> "sha256:75e52b83f775a9524ec84c765ff317dfa657ddfbaec22625cdcba3f79f02f496" [label=""];
  "sha256:38c4327aa1c6400c281ca42c737cababd417fb8423c855161dbfab3b3a516c0d" -> "sha256:75e52b83f775a9524ec84c765ff317dfa657ddfbaec22625cdcba3f79f02f496" [label=""];
  "sha256:75e52b83f775a9524ec84c765ff317dfa657ddfbaec22625cdcba3f79f02f496" -> "sha256:8d4a2540104be9f8c6b06f463b17a3324bd7baca7d8aa898e6a14c5a9ac87c42" [label=""];
  "sha256:38c4327aa1c6400c281ca42c737cababd417fb8423c855161dbfab3b3a516c0d" -> "sha256:8d4a2540104be9f8c6b06f463b17a3324bd7baca7d8aa898e6a14c5a9ac87c42" [label=""];
  "sha256:8d4a2540104be9f8c6b06f463b17a3324bd7baca7d8aa898e6a14c5a9ac87c42" -> "sha256:a47c33e852e8947edbce2e58b712a9a073ea852325a9caa963629f689cf12c6b" [label=""];
  "sha256:38c4327aa1c6400c281ca42c737cababd417fb8423c855161dbfab3b3a516c0d" -> "sha256:a47c33e852e8947edbce2e58b712a9a073ea852325a9caa963629f689cf12c6b" [label=""];
  "sha256:a47c33e852e8947edbce2e58b712a9a073ea852325a9caa963629f689cf12c6b" -> "sha256:b691d1dc326fe9c4ad4cd66456d20548070c3aa3c2c9d47ef160dd787c90e138" [label=""];
  "sha256:b691d1dc326fe9c4ad4cd66456d20548070c3aa3c2c9d47ef160dd787c90e138" -> "sha256:4e859013e375af9148a6c023351e8a90a42af08b2f465006300d3a51f7789faf" [label=""];
}

