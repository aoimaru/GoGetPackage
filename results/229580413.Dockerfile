[app/sources/229580413.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:fd748bc30fbbdfc3a2b2f43689047ad180a56a9ef4048d32bdf346ea12659fef" [label="/bin/sh -c apt-get update && apt-get install -y  build-essential  cmake  curl  git  less  man-db  maven  openjdk-8-jdk  pkg-config  screen  sudo  tmux  vim  wget" shape="box"];
  "sha256:5a57c1673b5e3f7953078d369f43f3a363dc9ee4c243e19726bfd65d857808ba" [label="/bin/sh -c adduser --home /home/ubuntu --disabled-password --gecos '' ubuntu" shape="box"];
  "sha256:2b6ccd42a0ecc52e5da29ad6c0f461ffdb9364fc1ac97178dabf745ddc9dd871" [label="/bin/sh -c adduser ubuntu sudo" shape="box"];
  "sha256:f7284ac2ebb5ed18d76cc1dec6234046313950a66bd1a624a4b7317d88a75488" [label="/bin/sh -c echo \"%sudo ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:7d828e2852dd9fcf8ec1a6924ed14139585fea7d2f0b177d93d70ee3a1a640e6" [label="mkdir{path=/home/ubuntu}" shape="note"];
  "sha256:0f30e5b4a87bef238deb30b0eb43614ae85e91e1c45fc1221132c7f817812664" [label="/bin/sh -c cd /home/ubuntu && wget https://github.com/stanford-futuredata/macrobase/archive/v1.0.tar.gz" shape="box"];
  "sha256:ba5f6a4e28f6430ad964aa44f461d33da22962ce18659372c5f7614029600d5d" [label="/bin/sh -c cd /home/ubuntu && tar xvf v1.0.tar.gz" shape="box"];
  "sha256:01ffeecc2724cb2d4d396eb8065d78b0073688f18766041a9b8f6715f3421e74" [label="/bin/sh -c cd /home/ubuntu/macrobase-1.0 && ./build.sh core sql" shape="box"];
  "sha256:eff6458ba5d9c610b182983633caf4e303db7d43e4cb37f2ba8452fd2181a10d" [label="sha256:eff6458ba5d9c610b182983633caf4e303db7d43e4cb37f2ba8452fd2181a10d" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:fd748bc30fbbdfc3a2b2f43689047ad180a56a9ef4048d32bdf346ea12659fef" [label=""];
  "sha256:fd748bc30fbbdfc3a2b2f43689047ad180a56a9ef4048d32bdf346ea12659fef" -> "sha256:5a57c1673b5e3f7953078d369f43f3a363dc9ee4c243e19726bfd65d857808ba" [label=""];
  "sha256:5a57c1673b5e3f7953078d369f43f3a363dc9ee4c243e19726bfd65d857808ba" -> "sha256:2b6ccd42a0ecc52e5da29ad6c0f461ffdb9364fc1ac97178dabf745ddc9dd871" [label=""];
  "sha256:2b6ccd42a0ecc52e5da29ad6c0f461ffdb9364fc1ac97178dabf745ddc9dd871" -> "sha256:f7284ac2ebb5ed18d76cc1dec6234046313950a66bd1a624a4b7317d88a75488" [label=""];
  "sha256:f7284ac2ebb5ed18d76cc1dec6234046313950a66bd1a624a4b7317d88a75488" -> "sha256:7d828e2852dd9fcf8ec1a6924ed14139585fea7d2f0b177d93d70ee3a1a640e6" [label=""];
  "sha256:7d828e2852dd9fcf8ec1a6924ed14139585fea7d2f0b177d93d70ee3a1a640e6" -> "sha256:0f30e5b4a87bef238deb30b0eb43614ae85e91e1c45fc1221132c7f817812664" [label=""];
  "sha256:0f30e5b4a87bef238deb30b0eb43614ae85e91e1c45fc1221132c7f817812664" -> "sha256:ba5f6a4e28f6430ad964aa44f461d33da22962ce18659372c5f7614029600d5d" [label=""];
  "sha256:ba5f6a4e28f6430ad964aa44f461d33da22962ce18659372c5f7614029600d5d" -> "sha256:01ffeecc2724cb2d4d396eb8065d78b0073688f18766041a9b8f6715f3421e74" [label=""];
  "sha256:01ffeecc2724cb2d4d396eb8065d78b0073688f18766041a9b8f6715f3421e74" -> "sha256:eff6458ba5d9c610b182983633caf4e303db7d43e4cb37f2ba8452fd2181a10d" [label=""];
}

