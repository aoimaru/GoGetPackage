[app/sources/128817067.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:9e69316862b7e28b2bf982b30651c0fdc346b04cbe28b144d883c72fa6c81417" [label="/bin/sh -c apt-get install -y python-software-properties" shape="box"];
  "sha256:fc2ba60e28eeee2fc7a5dc86dec16109377abcee0c74c488413dfbf8b5656978" [label="/bin/sh -c add-apt-repository ppa:rethinkdb/ppa" shape="box"];
  "sha256:73e2f94fceb89d5f29467ad8e39a21f021e8d246347f91267edf57cf58cae78f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6cdd61670759dba699725f37b094c7ab43da1c83953b897d13d2f44813aeb02e" [label="/bin/sh -c apt-get install -y rethinkdb" shape="box"];
  "sha256:e3292e480c931e8bb7586f36fde6f39090d85588a6949bdaea48fb96a5eeeadd" [label="mkdir{path=/rethinkdb}" shape="note"];
  "sha256:d2e3fe5421c61ece48eccbe00d5cc7ee12cca9c3fe732125cf5ed98c59b9f9dd" [label="sha256:d2e3fe5421c61ece48eccbe00d5cc7ee12cca9c3fe732125cf5ed98c59b9f9dd" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" [label=""];
  "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" -> "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" [label=""];
  "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" -> "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" [label=""];
  "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" -> "sha256:9e69316862b7e28b2bf982b30651c0fdc346b04cbe28b144d883c72fa6c81417" [label=""];
  "sha256:9e69316862b7e28b2bf982b30651c0fdc346b04cbe28b144d883c72fa6c81417" -> "sha256:fc2ba60e28eeee2fc7a5dc86dec16109377abcee0c74c488413dfbf8b5656978" [label=""];
  "sha256:fc2ba60e28eeee2fc7a5dc86dec16109377abcee0c74c488413dfbf8b5656978" -> "sha256:73e2f94fceb89d5f29467ad8e39a21f021e8d246347f91267edf57cf58cae78f" [label=""];
  "sha256:73e2f94fceb89d5f29467ad8e39a21f021e8d246347f91267edf57cf58cae78f" -> "sha256:6cdd61670759dba699725f37b094c7ab43da1c83953b897d13d2f44813aeb02e" [label=""];
  "sha256:6cdd61670759dba699725f37b094c7ab43da1c83953b897d13d2f44813aeb02e" -> "sha256:e3292e480c931e8bb7586f36fde6f39090d85588a6949bdaea48fb96a5eeeadd" [label=""];
  "sha256:e3292e480c931e8bb7586f36fde6f39090d85588a6949bdaea48fb96a5eeeadd" -> "sha256:d2e3fe5421c61ece48eccbe00d5cc7ee12cca9c3fe732125cf5ed98c59b9f9dd" [label=""];
}

