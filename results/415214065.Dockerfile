[app/sources/415214065.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:046a8f80234e3a6579fb19bd25f24901bfbba9e27fffa73f1bab8c56982b2044" [label="/bin/sh -c apt-get -y update &&     apt-get -y install         sudo         debconf-utils         apt-utils         apt-transport-https         wget" shape="box"];
  "sha256:8cef808f55cf7d33041ded3de570a26c342b1fc79611efda592789048f048f2e" [label="/bin/sh -c echo \"deb https://dl.bintray.com/rundeck/rundeck-deb /\" | sudo tee -a /etc/apt/sources.list" shape="box"];
  "sha256:e20bfa207114eef799ab886cbafbb45234debfaf0e50ac30996f1ed515ffbc92" [label="/bin/sh -c wget -qO - https://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -" shape="box"];
  "sha256:111ad886fbe847969575665d7c7b44fe51145adcf420ab1d573e14d82216db35" [label="/bin/sh -c sudo apt-get -y update" shape="box"];
  "sha256:8e2960a1a86654f587e607bdc58a7ccca407f065e9e573cbb3f09ebe87eec903" [label="/bin/sh -c sudo apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:f90ec45f43b8f483fb6ce2430ba5e6c7110dcfb90fb2113284a4c9d78d8201ed" [label="/bin/sh -c adduser --shell /bin/bash --home $HOME --gecos \"\" --disabled-password $USERNAME &&     passwd -d $USERNAME &&     addgroup $USERNAME sudo" shape="box"];
  "sha256:dd9ee4ce235427a57d9888c33c3f53ec8c118fcdad97fcfe958eaa06c22bd0c9" [label="local://context" shape="ellipse"];
  "sha256:61de9eb90ebad012c7f0aa72e0e4b6457d17a9d050094cd7c937cd324bcafa9d" [label="copy{src=/run.sh, dest=/home/rundeck/run.sh}" shape="note"];
  "sha256:5e753e2b8981eb8c6ea7db7230db2b504a1aa9c0b3282341d37bdf48ab9f31da" [label="/bin/sh -c sudo chmod +x $HOME/run.sh" shape="box"];
  "sha256:85204b36143d72859dabd1b4ea7149e5d4f03cb40322e147d7b13a3eeb7da7f5" [label="/bin/sh -c chown -R $USERNAME:$USERNAME $HOME" shape="box"];
  "sha256:440d1738563437c45a28e4c93728b1e6980efde679f0592a405142b1a1f17620" [label="mkdir{path=/home/rundeck}" shape="note"];
  "sha256:9e1e7bfa37627604289a50bcaa153d30cd8616c83bca11747c6bb3315ff5e0ac" [label="/bin/sh -c sudo apt-get install -y rundeck" shape="box"];
  "sha256:34e9e923d26a7bfbe06c05b83d44f06e0947b74cc808d5e8b5dc6cb446a3491d" [label="sha256:34e9e923d26a7bfbe06c05b83d44f06e0947b74cc808d5e8b5dc6cb446a3491d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:046a8f80234e3a6579fb19bd25f24901bfbba9e27fffa73f1bab8c56982b2044" [label=""];
  "sha256:046a8f80234e3a6579fb19bd25f24901bfbba9e27fffa73f1bab8c56982b2044" -> "sha256:8cef808f55cf7d33041ded3de570a26c342b1fc79611efda592789048f048f2e" [label=""];
  "sha256:8cef808f55cf7d33041ded3de570a26c342b1fc79611efda592789048f048f2e" -> "sha256:e20bfa207114eef799ab886cbafbb45234debfaf0e50ac30996f1ed515ffbc92" [label=""];
  "sha256:e20bfa207114eef799ab886cbafbb45234debfaf0e50ac30996f1ed515ffbc92" -> "sha256:111ad886fbe847969575665d7c7b44fe51145adcf420ab1d573e14d82216db35" [label=""];
  "sha256:111ad886fbe847969575665d7c7b44fe51145adcf420ab1d573e14d82216db35" -> "sha256:8e2960a1a86654f587e607bdc58a7ccca407f065e9e573cbb3f09ebe87eec903" [label=""];
  "sha256:8e2960a1a86654f587e607bdc58a7ccca407f065e9e573cbb3f09ebe87eec903" -> "sha256:f90ec45f43b8f483fb6ce2430ba5e6c7110dcfb90fb2113284a4c9d78d8201ed" [label=""];
  "sha256:f90ec45f43b8f483fb6ce2430ba5e6c7110dcfb90fb2113284a4c9d78d8201ed" -> "sha256:61de9eb90ebad012c7f0aa72e0e4b6457d17a9d050094cd7c937cd324bcafa9d" [label=""];
  "sha256:dd9ee4ce235427a57d9888c33c3f53ec8c118fcdad97fcfe958eaa06c22bd0c9" -> "sha256:61de9eb90ebad012c7f0aa72e0e4b6457d17a9d050094cd7c937cd324bcafa9d" [label=""];
  "sha256:61de9eb90ebad012c7f0aa72e0e4b6457d17a9d050094cd7c937cd324bcafa9d" -> "sha256:5e753e2b8981eb8c6ea7db7230db2b504a1aa9c0b3282341d37bdf48ab9f31da" [label=""];
  "sha256:5e753e2b8981eb8c6ea7db7230db2b504a1aa9c0b3282341d37bdf48ab9f31da" -> "sha256:85204b36143d72859dabd1b4ea7149e5d4f03cb40322e147d7b13a3eeb7da7f5" [label=""];
  "sha256:85204b36143d72859dabd1b4ea7149e5d4f03cb40322e147d7b13a3eeb7da7f5" -> "sha256:440d1738563437c45a28e4c93728b1e6980efde679f0592a405142b1a1f17620" [label=""];
  "sha256:440d1738563437c45a28e4c93728b1e6980efde679f0592a405142b1a1f17620" -> "sha256:9e1e7bfa37627604289a50bcaa153d30cd8616c83bca11747c6bb3315ff5e0ac" [label=""];
  "sha256:9e1e7bfa37627604289a50bcaa153d30cd8616c83bca11747c6bb3315ff5e0ac" -> "sha256:34e9e923d26a7bfbe06c05b83d44f06e0947b74cc808d5e8b5dc6cb446a3491d" [label=""];
}

