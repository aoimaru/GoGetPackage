[app/sources/243132330.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:0eb8599a93be7b9a5b3559ef3ee7eab7a9e9c9c3c7c7188d814b6b1301414c3c" [label="/bin/sh -c apt-get update &&         apt-get install -y python git python-pip  python-dev libpq-dev python-ldappool         python-memcache memcached build-essential libsasl2-dev libldap2-dev libssl-dev         libffi-dev gcc python-setuptools libssl-dev libxml2-dev libxslt1-dev" shape="box"];
  "sha256:a08c0ce7b2972f815905dad56bc501c6bf03d3ea9440b9f88a6269fa8e625015" [label="/bin/sh -c git clone https://github.com/openstack/glance.git && cd glance &&         pip install -r requirements.txt &&         python setup.py install &&         pip install tox" shape="box"];
  "sha256:2bbbc853cb7091e2aa8c22bd1df2ab57d1700725ff0fa32a910107c74038976b" [label="sha256:2bbbc853cb7091e2aa8c22bd1df2ab57d1700725ff0fa32a910107c74038976b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:0eb8599a93be7b9a5b3559ef3ee7eab7a9e9c9c3c7c7188d814b6b1301414c3c" [label=""];
  "sha256:0eb8599a93be7b9a5b3559ef3ee7eab7a9e9c9c3c7c7188d814b6b1301414c3c" -> "sha256:a08c0ce7b2972f815905dad56bc501c6bf03d3ea9440b9f88a6269fa8e625015" [label=""];
  "sha256:a08c0ce7b2972f815905dad56bc501c6bf03d3ea9440b9f88a6269fa8e625015" -> "sha256:2bbbc853cb7091e2aa8c22bd1df2ab57d1700725ff0fa32a910107c74038976b" [label=""];
}

