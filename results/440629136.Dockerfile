[app/sources/440629136.Dockerfile]
digraph {
  "sha256:db971a7d204424d2bb91d7b74ccc422be9d7866e2d2d90b899d3f96429fb45ad" [label="docker-image://docker.io/cdrx/fpm-fedora:24" shape="ellipse"];
  "sha256:5b733ce7a882402e04182af4cbbe82d0b0b16951bd550496878a283860ae8e3f" [label="/bin/sh -c yum -y install libssh2-devel python-devel python-setuptools git" shape="box"];
  "sha256:a20b46fb7d4680f0575414007ab8e735b1cb9989ce920f131b2249f120ea4aab" [label="/bin/sh -c curl -sLO https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm -f get-pip.py && pip install -U setuptools wheel && pip install cython" shape="box"];
  "sha256:993bb79391cdd8a2395fb9e5206184b1c2dfffeec054f54d9257ced2ca1be66a" [label="/bin/sh -c pip install ssh2-python gevent paramiko" shape="box"];
  "sha256:4d56e6e6f5da269ba512ef1d0dfa1dd2c8a7821e8ac50c72900812d875e29c6d" [label="sha256:4d56e6e6f5da269ba512ef1d0dfa1dd2c8a7821e8ac50c72900812d875e29c6d" shape="plaintext"];
  "sha256:db971a7d204424d2bb91d7b74ccc422be9d7866e2d2d90b899d3f96429fb45ad" -> "sha256:5b733ce7a882402e04182af4cbbe82d0b0b16951bd550496878a283860ae8e3f" [label=""];
  "sha256:5b733ce7a882402e04182af4cbbe82d0b0b16951bd550496878a283860ae8e3f" -> "sha256:a20b46fb7d4680f0575414007ab8e735b1cb9989ce920f131b2249f120ea4aab" [label=""];
  "sha256:a20b46fb7d4680f0575414007ab8e735b1cb9989ce920f131b2249f120ea4aab" -> "sha256:993bb79391cdd8a2395fb9e5206184b1c2dfffeec054f54d9257ced2ca1be66a" [label=""];
  "sha256:993bb79391cdd8a2395fb9e5206184b1c2dfffeec054f54d9257ced2ca1be66a" -> "sha256:4d56e6e6f5da269ba512ef1d0dfa1dd2c8a7821e8ac50c72900812d875e29c6d" [label=""];
}

