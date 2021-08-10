[app/sources/448963124.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:425f99ed445e2bbedc77562c3a98a88c9b55d7c19d7a873abd97408df0facfe7" [label="/bin/sh -c apt-get update && apt-get install -y net-tools git build-essential librados-dev vim libpcap-dev" shape="box"];
  "sha256:1059870e4a4634202af15076bf5423c91679fe3aafaddb48a211b5f4af57e1f0" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:0de3dd3503315cd62af285101caa1fd6a7870739fa7f49eefc67baac5af641f0" [label="/bin/sh -c wget -O /tmp/go.tar.gz https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz && tar -xf /tmp/go.tar.gz -C /usr/local/ && rm /tmp/go.tar.gz && mkdir /srv/go" shape="box"];
  "sha256:2bc614f2688ff611a86c43787dc1bcdcc1809e03f2f8c0e621893aeafc5ba03b" [label="local://context" shape="ellipse"];
  "sha256:af20db336589045e405016eb68af9d90ccf8d342d3f71108a04687f84bbaacde" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:4a291bc96e3b980faffe7412c59b873801f05bf6db18696f3e71e8f3fdb3f0e4" [label="sha256:4a291bc96e3b980faffe7412c59b873801f05bf6db18696f3e71e8f3fdb3f0e4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:425f99ed445e2bbedc77562c3a98a88c9b55d7c19d7a873abd97408df0facfe7" [label=""];
  "sha256:425f99ed445e2bbedc77562c3a98a88c9b55d7c19d7a873abd97408df0facfe7" -> "sha256:1059870e4a4634202af15076bf5423c91679fe3aafaddb48a211b5f4af57e1f0" [label=""];
  "sha256:1059870e4a4634202af15076bf5423c91679fe3aafaddb48a211b5f4af57e1f0" -> "sha256:0de3dd3503315cd62af285101caa1fd6a7870739fa7f49eefc67baac5af641f0" [label=""];
  "sha256:0de3dd3503315cd62af285101caa1fd6a7870739fa7f49eefc67baac5af641f0" -> "sha256:af20db336589045e405016eb68af9d90ccf8d342d3f71108a04687f84bbaacde" [label=""];
  "sha256:2bc614f2688ff611a86c43787dc1bcdcc1809e03f2f8c0e621893aeafc5ba03b" -> "sha256:af20db336589045e405016eb68af9d90ccf8d342d3f71108a04687f84bbaacde" [label=""];
  "sha256:af20db336589045e405016eb68af9d90ccf8d342d3f71108a04687f84bbaacde" -> "sha256:4a291bc96e3b980faffe7412c59b873801f05bf6db18696f3e71e8f3fdb3f0e4" [label=""];
}

