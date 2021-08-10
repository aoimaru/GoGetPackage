[app/sources/258508382.Dockerfile]
digraph {
  "sha256:a381c003c1f22a316c2a0ae4d3e2f38d9e17ceb78b7f733f33ffe79d2d63229b" [label="docker-image://docker.io/library/base_ubuntu:latest" shape="ellipse"];
  "sha256:8eeb1715d23df93ddbfb8011ea0e6bb7ce39faeb3236c5b485832bc09d33f789" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:31e34b4bb463520ca265b2cd82b6271f31235dc07d0af3d11ed3e3ce4f6bd2de" [label="/bin/sh -c apt-get -y install iputils-ping netcat curl iproute2" shape="box"];
  "sha256:d7b0c0007bde4832a3a8fc463c3e867be90939d0374bd528f7511b1f44340f94" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 &&   echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list &&   apt-get update &&   apt-get install -y mongodb-org &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a8ae1b6c5d1f66aa66d627831d4d357128b5b317dd633f8771c7447745812714" [label="mkdir{path=/data}" shape="note"];
  "sha256:0686732cd2e09193e36b39f0d0e3c41cbf8ec0294f89cffb31f897a07450a18d" [label="local://context" shape="ellipse"];
  "sha256:178f8bc03ef6faf2d5b95be8db9c9ce5687a50d4bb75e5ae59212a98a57f5453" [label="copy{src=/startmongo.sh, dest=/root/startmongo.sh}" shape="note"];
  "sha256:7b1672712b2a30ba53897c5232868f6bad96595e794aabe8ddf83308e46e924a" [label="/bin/sh -c chmod 755 /root/startmongo.sh" shape="box"];
  "sha256:0e8824c02080756b25f1512bb319969058aa17a34ae2bd84794a9805f5e71121" [label="sha256:0e8824c02080756b25f1512bb319969058aa17a34ae2bd84794a9805f5e71121" shape="plaintext"];
  "sha256:a381c003c1f22a316c2a0ae4d3e2f38d9e17ceb78b7f733f33ffe79d2d63229b" -> "sha256:8eeb1715d23df93ddbfb8011ea0e6bb7ce39faeb3236c5b485832bc09d33f789" [label=""];
  "sha256:8eeb1715d23df93ddbfb8011ea0e6bb7ce39faeb3236c5b485832bc09d33f789" -> "sha256:31e34b4bb463520ca265b2cd82b6271f31235dc07d0af3d11ed3e3ce4f6bd2de" [label=""];
  "sha256:31e34b4bb463520ca265b2cd82b6271f31235dc07d0af3d11ed3e3ce4f6bd2de" -> "sha256:d7b0c0007bde4832a3a8fc463c3e867be90939d0374bd528f7511b1f44340f94" [label=""];
  "sha256:d7b0c0007bde4832a3a8fc463c3e867be90939d0374bd528f7511b1f44340f94" -> "sha256:a8ae1b6c5d1f66aa66d627831d4d357128b5b317dd633f8771c7447745812714" [label=""];
  "sha256:a8ae1b6c5d1f66aa66d627831d4d357128b5b317dd633f8771c7447745812714" -> "sha256:178f8bc03ef6faf2d5b95be8db9c9ce5687a50d4bb75e5ae59212a98a57f5453" [label=""];
  "sha256:0686732cd2e09193e36b39f0d0e3c41cbf8ec0294f89cffb31f897a07450a18d" -> "sha256:178f8bc03ef6faf2d5b95be8db9c9ce5687a50d4bb75e5ae59212a98a57f5453" [label=""];
  "sha256:178f8bc03ef6faf2d5b95be8db9c9ce5687a50d4bb75e5ae59212a98a57f5453" -> "sha256:7b1672712b2a30ba53897c5232868f6bad96595e794aabe8ddf83308e46e924a" [label=""];
  "sha256:7b1672712b2a30ba53897c5232868f6bad96595e794aabe8ddf83308e46e924a" -> "sha256:0e8824c02080756b25f1512bb319969058aa17a34ae2bd84794a9805f5e71121" [label=""];
}

