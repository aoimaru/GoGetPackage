[app/sources/252790600.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b8f919843a6252941a3a2511dc6dd4e8c80563eca25961cf41c7734f4679615f" [label="/bin/sh -c apt-get update -q && apt-get clean" shape="box"];
  "sha256:cc53df46d139e8e197ebcbdda0bfa172dfb46a446622c9b757b35184e875d4d1" [label="/bin/sh -c apt-get install curl -y" shape="box"];
  "sha256:40258f38247b6415b756fe4a1aceb617f10b7bacd436c8360fbbdf385af17775" [label="/bin/sh -c apt-get install -qqy curl apt-transport-https" shape="box"];
  "sha256:d31527d1db3eef0fd9447327d2a978427abba594dad6e6a433588145b12c041a" [label="/bin/sh -c apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \\--recv-keys 58118E89F3A912897C070ADBF76221572C52609D" shape="box"];
  "sha256:ee88c8ae188d3991b7057e416d288d403ba2a6e7fb65f9feb31972a52da60dc1" [label="/bin/sh -c echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list" shape="box"];
  "sha256:443c55af10c0d3b64ab5d828445044da78bf60c85232993998af6dd7042467d5" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy docker-engine" shape="box"];
  "sha256:63bcf1048db5e65de785097ac7492fa096bfa8c50461d8da8939cc310f949cf4" [label="sha256:63bcf1048db5e65de785097ac7492fa096bfa8c50461d8da8939cc310f949cf4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b8f919843a6252941a3a2511dc6dd4e8c80563eca25961cf41c7734f4679615f" [label=""];
  "sha256:b8f919843a6252941a3a2511dc6dd4e8c80563eca25961cf41c7734f4679615f" -> "sha256:cc53df46d139e8e197ebcbdda0bfa172dfb46a446622c9b757b35184e875d4d1" [label=""];
  "sha256:cc53df46d139e8e197ebcbdda0bfa172dfb46a446622c9b757b35184e875d4d1" -> "sha256:40258f38247b6415b756fe4a1aceb617f10b7bacd436c8360fbbdf385af17775" [label=""];
  "sha256:40258f38247b6415b756fe4a1aceb617f10b7bacd436c8360fbbdf385af17775" -> "sha256:d31527d1db3eef0fd9447327d2a978427abba594dad6e6a433588145b12c041a" [label=""];
  "sha256:d31527d1db3eef0fd9447327d2a978427abba594dad6e6a433588145b12c041a" -> "sha256:ee88c8ae188d3991b7057e416d288d403ba2a6e7fb65f9feb31972a52da60dc1" [label=""];
  "sha256:ee88c8ae188d3991b7057e416d288d403ba2a6e7fb65f9feb31972a52da60dc1" -> "sha256:443c55af10c0d3b64ab5d828445044da78bf60c85232993998af6dd7042467d5" [label=""];
  "sha256:443c55af10c0d3b64ab5d828445044da78bf60c85232993998af6dd7042467d5" -> "sha256:63bcf1048db5e65de785097ac7492fa096bfa8c50461d8da8939cc310f949cf4" [label=""];
}

