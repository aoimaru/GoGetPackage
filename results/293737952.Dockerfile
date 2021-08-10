[app/sources/293737952.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:dbc9043641531f7f2ca806197ecd7b70add7ac4e8c8c63d2f812c7981863ea73" [label="/bin/sh -c apt-get update && \tapt-get install -y \t    git \t\tliblua5.1-0-dev \t\tlua5.1 \t\tpkg-config \t\tsoftware-properties-common \t\twget" shape="box"];
  "sha256:12f6942290cefc1862f1b9d352905042003ec269cab51b31ca6d458237e07a6d" [label="/bin/sh -c add-apt-repository ppa:deadsnakes/ppa && \tapt-get update && \tapt-get install -y \t\tpython2.7 \t\tpython2.7-dev \t\tpython3.5 \t\tpython3.5-dev \t\tpython3.6 \t\tpython3.6-dev \t\tpython3.7 \t\tpython3.7-dev" shape="box"];
  "sha256:a65847cd79d8362c0b181e1a5845120921f8e3e4db07898d356eeccb87812bde" [label="/bin/sh -c wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && \tpython3.7 /tmp/get-pip.py && \tpip install tox" shape="box"];
  "sha256:f213f2691485d9f7b2c6f9056aecb0014f06403cd4a7529edaf8e6e25d498149" [label="mkdir{path=/test/pysoa}" shape="note"];
  "sha256:7b068f47d60de6bfce628d8c00faf0c2bb01ac0838127c9e50393498c241657f" [label="local://context" shape="ellipse"];
  "sha256:1183b510403c2b64c78e0f83349032db2053c2b1597b4a65a51344e86ccd5c89" [label="copy{src=/, dest=/test/pysoa}" shape="note"];
  "sha256:d81c1f11a4c76b4194b5d1f1b3c264f61122dad43e7c36458a7c60df91068dfe" [label="sha256:d81c1f11a4c76b4194b5d1f1b3c264f61122dad43e7c36458a7c60df91068dfe" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:dbc9043641531f7f2ca806197ecd7b70add7ac4e8c8c63d2f812c7981863ea73" [label=""];
  "sha256:dbc9043641531f7f2ca806197ecd7b70add7ac4e8c8c63d2f812c7981863ea73" -> "sha256:12f6942290cefc1862f1b9d352905042003ec269cab51b31ca6d458237e07a6d" [label=""];
  "sha256:12f6942290cefc1862f1b9d352905042003ec269cab51b31ca6d458237e07a6d" -> "sha256:a65847cd79d8362c0b181e1a5845120921f8e3e4db07898d356eeccb87812bde" [label=""];
  "sha256:a65847cd79d8362c0b181e1a5845120921f8e3e4db07898d356eeccb87812bde" -> "sha256:f213f2691485d9f7b2c6f9056aecb0014f06403cd4a7529edaf8e6e25d498149" [label=""];
  "sha256:f213f2691485d9f7b2c6f9056aecb0014f06403cd4a7529edaf8e6e25d498149" -> "sha256:1183b510403c2b64c78e0f83349032db2053c2b1597b4a65a51344e86ccd5c89" [label=""];
  "sha256:7b068f47d60de6bfce628d8c00faf0c2bb01ac0838127c9e50393498c241657f" -> "sha256:1183b510403c2b64c78e0f83349032db2053c2b1597b4a65a51344e86ccd5c89" [label=""];
  "sha256:1183b510403c2b64c78e0f83349032db2053c2b1597b4a65a51344e86ccd5c89" -> "sha256:d81c1f11a4c76b4194b5d1f1b3c264f61122dad43e7c36458a7c60df91068dfe" [label=""];
}

