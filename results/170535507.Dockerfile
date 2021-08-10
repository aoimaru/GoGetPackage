[app/sources/170535507.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:b2a468ce545f4ec0fef1aab45f3ab33d7264f9a092addfc1c406dadb117cd796" [label="/bin/sh -c yum install -y rpm-build tar make" shape="box"];
  "sha256:4b6c398fff83d4bd09324d3c2e71aa8f7c28f3497e8ed710f4f08d84b8450a7f" [label="/bin/sh -c yum -y install readline-devel ncurses-devel gdbm-devel glibc-devel gcc openssl-devel libyaml-devel libffi-devel zlib-devel" shape="box"];
  "sha256:7e929a19c4b93a3787dacf5a44ee797239688152f0c17bfbf34443e2be11df89" [label="/bin/sh -c useradd -u 1000 builder" shape="box"];
  "sha256:4bf5e93ff514810f724edaf34a76760133588b5467f8d769d2622e71c7fa837c" [label="/bin/sh -c mkdir -p /home/builder/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}" shape="box"];
  "sha256:b3ab5bb75b4eec4821d86149d82bc81faa3fa6ed05eb55ad66f89edeedb4fdcf" [label="/bin/sh -c chown -R builder:builder /home/builder/rpmbuild" shape="box"];
  "sha256:8b52db7c1323e7a1592c63f4179dc058c1b92f63bd4cc4de5e27776854060ffd" [label="mkdir{path=/home/builder/rpmbuild}" shape="note"];
  "sha256:4a2fde6cec1d951017efff5798d41a5fa09a1da5198e530d294d05dbfb8d85d2" [label="sha256:4a2fde6cec1d951017efff5798d41a5fa09a1da5198e530d294d05dbfb8d85d2" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:b2a468ce545f4ec0fef1aab45f3ab33d7264f9a092addfc1c406dadb117cd796" [label=""];
  "sha256:b2a468ce545f4ec0fef1aab45f3ab33d7264f9a092addfc1c406dadb117cd796" -> "sha256:4b6c398fff83d4bd09324d3c2e71aa8f7c28f3497e8ed710f4f08d84b8450a7f" [label=""];
  "sha256:4b6c398fff83d4bd09324d3c2e71aa8f7c28f3497e8ed710f4f08d84b8450a7f" -> "sha256:7e929a19c4b93a3787dacf5a44ee797239688152f0c17bfbf34443e2be11df89" [label=""];
  "sha256:7e929a19c4b93a3787dacf5a44ee797239688152f0c17bfbf34443e2be11df89" -> "sha256:4bf5e93ff514810f724edaf34a76760133588b5467f8d769d2622e71c7fa837c" [label=""];
  "sha256:4bf5e93ff514810f724edaf34a76760133588b5467f8d769d2622e71c7fa837c" -> "sha256:b3ab5bb75b4eec4821d86149d82bc81faa3fa6ed05eb55ad66f89edeedb4fdcf" [label=""];
  "sha256:b3ab5bb75b4eec4821d86149d82bc81faa3fa6ed05eb55ad66f89edeedb4fdcf" -> "sha256:8b52db7c1323e7a1592c63f4179dc058c1b92f63bd4cc4de5e27776854060ffd" [label=""];
  "sha256:8b52db7c1323e7a1592c63f4179dc058c1b92f63bd4cc4de5e27776854060ffd" -> "sha256:4a2fde6cec1d951017efff5798d41a5fa09a1da5198e530d294d05dbfb8d85d2" [label=""];
}

