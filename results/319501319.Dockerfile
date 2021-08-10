[app/sources/319501319.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:41df34f2cb129b1105c858bba0d96e2ffc82488b0b9c337768c370642041bb4c" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:99b2cd1c611c6144617474df2f3d4ee98052919f019b20119be2e03b9d5c9ac5" [label="/bin/sh -c set -x     && apt-get update     && apt-get install -y python python-dev python-pip python-setuptools nmap hydra curl apt-transport-https     && python -m pip install pip==9.0.3" shape="box"];
  "sha256:6f73313bdb443aee09462bc79a2f65894a076defa7770532d4f70be3552d088d" [label="/bin/sh -c set -x     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5     && echo \"deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse\" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list     && apt-get update     && apt-get install -y mongodb-org" shape="box"];
  "sha256:37c42fe00d31b2d1f929164a0e6a95ea8a61ba85476f77dd0328fb75db5e43bb" [label="/bin/sh -c mkdir -p /opt/fuxi" shape="box"];
  "sha256:7711619f532bf19e3b715ab4e18476ba00b43d1ab195ad95a7094b250add5b07" [label="local://context" shape="ellipse"];
  "sha256:b0c8323e34a0e82b931dfaa2b80cd2e4206794cb0cb8ab040ac17352f18db5a4" [label="copy{src=/, dest=/opt/fuxi}" shape="note"];
  "sha256:17eba137044145df250b2f8047d7e96afe69afb271e8651c1e823bba9805e346" [label="/bin/sh -c set -x     && pip install -r /opt/fuxi/requirements.txt" shape="box"];
  "sha256:1b5acc47b7fabbbc656004906b0424e01d8a974ad7591e38b5c0ef8f7e74742e" [label="mkdir{path=/opt/fuxi}" shape="note"];
  "sha256:60d3e187421d2b08d321fb90acb80a3aab2936b548c864b616782a53e7809b21" [label="sha256:60d3e187421d2b08d321fb90acb80a3aab2936b548c864b616782a53e7809b21" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:41df34f2cb129b1105c858bba0d96e2ffc82488b0b9c337768c370642041bb4c" [label=""];
  "sha256:41df34f2cb129b1105c858bba0d96e2ffc82488b0b9c337768c370642041bb4c" -> "sha256:99b2cd1c611c6144617474df2f3d4ee98052919f019b20119be2e03b9d5c9ac5" [label=""];
  "sha256:99b2cd1c611c6144617474df2f3d4ee98052919f019b20119be2e03b9d5c9ac5" -> "sha256:6f73313bdb443aee09462bc79a2f65894a076defa7770532d4f70be3552d088d" [label=""];
  "sha256:6f73313bdb443aee09462bc79a2f65894a076defa7770532d4f70be3552d088d" -> "sha256:37c42fe00d31b2d1f929164a0e6a95ea8a61ba85476f77dd0328fb75db5e43bb" [label=""];
  "sha256:37c42fe00d31b2d1f929164a0e6a95ea8a61ba85476f77dd0328fb75db5e43bb" -> "sha256:b0c8323e34a0e82b931dfaa2b80cd2e4206794cb0cb8ab040ac17352f18db5a4" [label=""];
  "sha256:7711619f532bf19e3b715ab4e18476ba00b43d1ab195ad95a7094b250add5b07" -> "sha256:b0c8323e34a0e82b931dfaa2b80cd2e4206794cb0cb8ab040ac17352f18db5a4" [label=""];
  "sha256:b0c8323e34a0e82b931dfaa2b80cd2e4206794cb0cb8ab040ac17352f18db5a4" -> "sha256:17eba137044145df250b2f8047d7e96afe69afb271e8651c1e823bba9805e346" [label=""];
  "sha256:17eba137044145df250b2f8047d7e96afe69afb271e8651c1e823bba9805e346" -> "sha256:1b5acc47b7fabbbc656004906b0424e01d8a974ad7591e38b5c0ef8f7e74742e" [label=""];
  "sha256:1b5acc47b7fabbbc656004906b0424e01d8a974ad7591e38b5c0ef8f7e74742e" -> "sha256:60d3e187421d2b08d321fb90acb80a3aab2936b548c864b616782a53e7809b21" [label=""];
}

