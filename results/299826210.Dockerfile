[app/sources/299826210.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:3ef9bf0eef5abf7ac403e55d1a6f3abb84a2f979d10df0dc3e82d59e92a1f40a" [label="/bin/sh -c yum --enablerepo=extras install -y epel-release && \tyum install -y centos-release-scl && \tyum install -y git devtoolset-7 make cmake3 rpm-build fakeroot \t\tqt5-qtbase-devel qt5-qtbase qt5-linguist qt5-qttools \t\tlibXtst-devel libXrandr-devel libXinerama-devel libXcursor-devel libXrandr-devel libXdamage-devel libXcomposite-devel libXfixes-devel \t\tlibjpeg-turbo-devel \t\tzlib-devel \t\tlibpng-devel \t\topenssl-devel \t\tpam-devel \t\tprocps-devel \t\tlzo-devel \t\tqca-qt5-devel qca-qt5-ossl \t\tcyrus-sasl-devel \t\topenldap-devel && \tln -s /usr/bin/cmake3 /usr/bin/cmake" shape="box"];
  "sha256:e332f3d6f881bc7bf1a4baf315480cbac6e443bdcf99087e4063c127c75a35bd" [label="sha256:e332f3d6f881bc7bf1a4baf315480cbac6e443bdcf99087e4063c127c75a35bd" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:3ef9bf0eef5abf7ac403e55d1a6f3abb84a2f979d10df0dc3e82d59e92a1f40a" [label=""];
  "sha256:3ef9bf0eef5abf7ac403e55d1a6f3abb84a2f979d10df0dc3e82d59e92a1f40a" -> "sha256:e332f3d6f881bc7bf1a4baf315480cbac6e443bdcf99087e4063c127c75a35bd" [label=""];
}

