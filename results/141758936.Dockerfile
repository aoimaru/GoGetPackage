[app/sources/141758936.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:ead26d2897b04cd4e9a6f72929066e9325bdd761ddfa908f910d468451157c33" [label="/bin/sh -c yum install -y yum-utils wget gcc g++ git vi net-tools libaio hwloc python-mysqldb openssh-server" shape="box"];
  "sha256:7eb5a8d0921250c97ee1e3cb6718dfc2ad7d6eea2b698f779cef7c5ca043c178" [label="/bin/sh -c yum install -y python-pip" shape="box"];
  "sha256:442b9e4291f071032a5fc2ed481414195241666ada91a0b5216e5522b0a94d82" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:4938163f60b8887d1765692c18ff7bb7b27a56a06451121a2dbe9da8f2832219" [label="local://context" shape="ellipse"];
  "sha256:49077c7a647698f94c76fe0fb0035715995ba68ec8c8d249568959c85ea68415" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:39aa0bdd1a9d25bfd818303300335c8dca922d424e6aa86ebfcd381891ab30b9" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:c80eeaeb19f1f91c95cf75f3b7b0f02dbba60444f9b6e868e9250f290eb7700d" [label="/bin/sh -c rpm --import \"https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF\"" shape="box"];
  "sha256:221400ca75fdc33e395a5bf25b9841c0a4c8821c7235a9e47d212dc36f26c969" [label="/bin/sh -c curl https://download.mono-project.com/repo/centos7-stable.repo | tee /etc/yum.repos.d/mono-centos7-stable.repo" shape="box"];
  "sha256:f28b47b46621682086bd1534ebdd7bfe1cf293f0b249cbe63cc861f000951074" [label="/bin/sh -c yum -y install mono-complete" shape="box"];
  "sha256:7912043536b2ed76c5bfa698f17d65ab28b8b1e91408c0d6fa67c38809bbedce" [label="copy{src=/init.sh, dest=/opt/init.sh}" shape="note"];
  "sha256:308a90587dff63b06df58b1722e11bea9b393fefec975889b846f4edce802fd1" [label="/bin/sh -c chmod 777 /opt/init.sh" shape="box"];
  "sha256:88ccb187a6afd6998d0bd4939525657cb673493d5776353aeace75518a9d6e9b" [label="/bin/sh -c ssh-keygen -t rsa -N \"\"  -f \"/root/.ssh/id_rsa\"" shape="box"];
  "sha256:ad0a6c4495a29ef0c5fbaffbeaec1450efc04698488be39cc5a3059eb19ac6ef" [label="mkdir{path=/opt}" shape="note"];
  "sha256:1566a47a342d1c8eac720e66aee759e9c4d2cc85f3f31c17c70c162608d9cbcc" [label="sha256:1566a47a342d1c8eac720e66aee759e9c4d2cc85f3f31c17c70c162608d9cbcc" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:ead26d2897b04cd4e9a6f72929066e9325bdd761ddfa908f910d468451157c33" [label=""];
  "sha256:ead26d2897b04cd4e9a6f72929066e9325bdd761ddfa908f910d468451157c33" -> "sha256:7eb5a8d0921250c97ee1e3cb6718dfc2ad7d6eea2b698f779cef7c5ca043c178" [label=""];
  "sha256:7eb5a8d0921250c97ee1e3cb6718dfc2ad7d6eea2b698f779cef7c5ca043c178" -> "sha256:442b9e4291f071032a5fc2ed481414195241666ada91a0b5216e5522b0a94d82" [label=""];
  "sha256:442b9e4291f071032a5fc2ed481414195241666ada91a0b5216e5522b0a94d82" -> "sha256:49077c7a647698f94c76fe0fb0035715995ba68ec8c8d249568959c85ea68415" [label=""];
  "sha256:4938163f60b8887d1765692c18ff7bb7b27a56a06451121a2dbe9da8f2832219" -> "sha256:49077c7a647698f94c76fe0fb0035715995ba68ec8c8d249568959c85ea68415" [label=""];
  "sha256:49077c7a647698f94c76fe0fb0035715995ba68ec8c8d249568959c85ea68415" -> "sha256:39aa0bdd1a9d25bfd818303300335c8dca922d424e6aa86ebfcd381891ab30b9" [label=""];
  "sha256:39aa0bdd1a9d25bfd818303300335c8dca922d424e6aa86ebfcd381891ab30b9" -> "sha256:c80eeaeb19f1f91c95cf75f3b7b0f02dbba60444f9b6e868e9250f290eb7700d" [label=""];
  "sha256:c80eeaeb19f1f91c95cf75f3b7b0f02dbba60444f9b6e868e9250f290eb7700d" -> "sha256:221400ca75fdc33e395a5bf25b9841c0a4c8821c7235a9e47d212dc36f26c969" [label=""];
  "sha256:221400ca75fdc33e395a5bf25b9841c0a4c8821c7235a9e47d212dc36f26c969" -> "sha256:f28b47b46621682086bd1534ebdd7bfe1cf293f0b249cbe63cc861f000951074" [label=""];
  "sha256:f28b47b46621682086bd1534ebdd7bfe1cf293f0b249cbe63cc861f000951074" -> "sha256:7912043536b2ed76c5bfa698f17d65ab28b8b1e91408c0d6fa67c38809bbedce" [label=""];
  "sha256:4938163f60b8887d1765692c18ff7bb7b27a56a06451121a2dbe9da8f2832219" -> "sha256:7912043536b2ed76c5bfa698f17d65ab28b8b1e91408c0d6fa67c38809bbedce" [label=""];
  "sha256:7912043536b2ed76c5bfa698f17d65ab28b8b1e91408c0d6fa67c38809bbedce" -> "sha256:308a90587dff63b06df58b1722e11bea9b393fefec975889b846f4edce802fd1" [label=""];
  "sha256:308a90587dff63b06df58b1722e11bea9b393fefec975889b846f4edce802fd1" -> "sha256:88ccb187a6afd6998d0bd4939525657cb673493d5776353aeace75518a9d6e9b" [label=""];
  "sha256:88ccb187a6afd6998d0bd4939525657cb673493d5776353aeace75518a9d6e9b" -> "sha256:ad0a6c4495a29ef0c5fbaffbeaec1450efc04698488be39cc5a3059eb19ac6ef" [label=""];
  "sha256:ad0a6c4495a29ef0c5fbaffbeaec1450efc04698488be39cc5a3059eb19ac6ef" -> "sha256:1566a47a342d1c8eac720e66aee759e9c4d2cc85f3f31c17c70c162608d9cbcc" [label=""];
}

