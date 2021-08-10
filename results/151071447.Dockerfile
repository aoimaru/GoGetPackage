[app/sources/151071447.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:09d0d034d838a87a735fd94c404aaa35a59dec8f4077edaf0269ec9ee39207f7" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime" shape="box"];
  "sha256:a7e12be5b5aff25735ddb174a31a204785d7bf714de9023a90a1d0e292f4340f" [label="/bin/sh -c echo $TZ > /etc/timezone" shape="box"];
  "sha256:ce3d2309e6acc853a207a0bdd7693f0e106ae05d00dbe08eb8620e4041a7a320" [label="/bin/sh -c apt-get update -qy" shape="box"];
  "sha256:8a58eb0480b8fdc21b983bf9a951ce4fcc1700d8d15332e3a5b13014da1c1a9d" [label="/bin/sh -c apt-get -y install build-essential ipython python-setuptools python-pip python-dev pkg-config libssl-dev libffi-dev libxml2-dev libxslt1-dev libfreetype6-dev libpng-dev postgresql sudo libsasl2-dev libldap2-dev git" shape="box"];
  "sha256:69db9a52ebfb32fb1bb1608d75b0b43d9a221f120cbebb85d2355636e63f85eb" [label="/bin/sh -c apt-get install -y python-dev python-pip" shape="box"];
  "sha256:ad0917b2f3212db8e2875a776d68707a1ec12e1672ce13450e6832ccf1df58c8" [label="sha256:ad0917b2f3212db8e2875a776d68707a1ec12e1672ce13450e6832ccf1df58c8" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:09d0d034d838a87a735fd94c404aaa35a59dec8f4077edaf0269ec9ee39207f7" [label=""];
  "sha256:09d0d034d838a87a735fd94c404aaa35a59dec8f4077edaf0269ec9ee39207f7" -> "sha256:a7e12be5b5aff25735ddb174a31a204785d7bf714de9023a90a1d0e292f4340f" [label=""];
  "sha256:a7e12be5b5aff25735ddb174a31a204785d7bf714de9023a90a1d0e292f4340f" -> "sha256:ce3d2309e6acc853a207a0bdd7693f0e106ae05d00dbe08eb8620e4041a7a320" [label=""];
  "sha256:ce3d2309e6acc853a207a0bdd7693f0e106ae05d00dbe08eb8620e4041a7a320" -> "sha256:8a58eb0480b8fdc21b983bf9a951ce4fcc1700d8d15332e3a5b13014da1c1a9d" [label=""];
  "sha256:8a58eb0480b8fdc21b983bf9a951ce4fcc1700d8d15332e3a5b13014da1c1a9d" -> "sha256:69db9a52ebfb32fb1bb1608d75b0b43d9a221f120cbebb85d2355636e63f85eb" [label=""];
  "sha256:69db9a52ebfb32fb1bb1608d75b0b43d9a221f120cbebb85d2355636e63f85eb" -> "sha256:ad0917b2f3212db8e2875a776d68707a1ec12e1672ce13450e6832ccf1df58c8" [label=""];
}

