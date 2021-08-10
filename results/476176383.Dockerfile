[app/sources/476176383.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ac05459d1a6f9675061d3b7c0c7d7a5c5898963779b2b3c648984ead598e5d05" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:71f2074da67cc213cbe13cc56edee96381f4772356cb1bd498fac4136c301481" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/ubuntu `lsb_release -cs` main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:e1a694d601d8bb4631de036876c0be27ba3a3cd59c858cffc1bc07e47cf8573f" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:1ae6239792f1b32b2ba6f46d384c57d5ac92f83397685b713b8612428449b138" [label="/bin/sh -c apt-get -qqy install zulu-7=7.6.0.1" shape="box"];
  "sha256:073a3a57808b60d86ee42785e595fdbaee74150b0857e89c7d8cfff33e5171f6" [label="sha256:073a3a57808b60d86ee42785e595fdbaee74150b0857e89c7d8cfff33e5171f6" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ac05459d1a6f9675061d3b7c0c7d7a5c5898963779b2b3c648984ead598e5d05" [label=""];
  "sha256:ac05459d1a6f9675061d3b7c0c7d7a5c5898963779b2b3c648984ead598e5d05" -> "sha256:71f2074da67cc213cbe13cc56edee96381f4772356cb1bd498fac4136c301481" [label=""];
  "sha256:71f2074da67cc213cbe13cc56edee96381f4772356cb1bd498fac4136c301481" -> "sha256:e1a694d601d8bb4631de036876c0be27ba3a3cd59c858cffc1bc07e47cf8573f" [label=""];
  "sha256:e1a694d601d8bb4631de036876c0be27ba3a3cd59c858cffc1bc07e47cf8573f" -> "sha256:1ae6239792f1b32b2ba6f46d384c57d5ac92f83397685b713b8612428449b138" [label=""];
  "sha256:1ae6239792f1b32b2ba6f46d384c57d5ac92f83397685b713b8612428449b138" -> "sha256:073a3a57808b60d86ee42785e595fdbaee74150b0857e89c7d8cfff33e5171f6" [label=""];
}

