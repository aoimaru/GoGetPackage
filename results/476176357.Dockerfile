[app/sources/476176357.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:749594f464c92e0b4e35f029662cc0ed36ef228ffe8806b3566e615506e46641" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:415dde3fc50cf6238c83a76336cffc0f5678efb705b35873eb708fced0ee5236" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/ubuntu `lsb_release -cs` main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:03ad419e99fe18643dc469fe69cebf8852f4514bb0e63e2220f68507fd7f95da" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:2456db4934ca9c6f19d211c27dcea379acc1b17db8135b204b183905f8502b9a" [label="/bin/sh -c apt-get -qqy install zulu-6=6.9.0.3" shape="box"];
  "sha256:5cb371fc278a1746eaa1090b15cfeeacb9c9c154d56337048c62deebe69bd370" [label="sha256:5cb371fc278a1746eaa1090b15cfeeacb9c9c154d56337048c62deebe69bd370" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label=""];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" -> "sha256:749594f464c92e0b4e35f029662cc0ed36ef228ffe8806b3566e615506e46641" [label=""];
  "sha256:749594f464c92e0b4e35f029662cc0ed36ef228ffe8806b3566e615506e46641" -> "sha256:415dde3fc50cf6238c83a76336cffc0f5678efb705b35873eb708fced0ee5236" [label=""];
  "sha256:415dde3fc50cf6238c83a76336cffc0f5678efb705b35873eb708fced0ee5236" -> "sha256:03ad419e99fe18643dc469fe69cebf8852f4514bb0e63e2220f68507fd7f95da" [label=""];
  "sha256:03ad419e99fe18643dc469fe69cebf8852f4514bb0e63e2220f68507fd7f95da" -> "sha256:2456db4934ca9c6f19d211c27dcea379acc1b17db8135b204b183905f8502b9a" [label=""];
  "sha256:2456db4934ca9c6f19d211c27dcea379acc1b17db8135b204b183905f8502b9a" -> "sha256:5cb371fc278a1746eaa1090b15cfeeacb9c9c154d56337048c62deebe69bd370" [label=""];
}

