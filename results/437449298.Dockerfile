[app/sources/437449298.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:f0eec687d7ae49e9f8a4c72a79eb972f67ab0e43eafc44ebded68b080e1ef837" [label="/bin/sh -c apt-get update -yq &&   apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A &&   echo 'deb http://repo.percona.com/apt precise main' >> /etc/apt/sources.list &&   echo 'deb-src http://repo.percona.com/apt precise main' >> /etc/apt/sources.list &&   apt-get update -yq" shape="box"];
  "sha256:f165952e00fc67b84057f4df2776bdf4925b2a072042c96fafc92b9ff768a599" [label="sha256:f165952e00fc67b84057f4df2776bdf4925b2a072042c96fafc92b9ff768a599" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:f0eec687d7ae49e9f8a4c72a79eb972f67ab0e43eafc44ebded68b080e1ef837" [label=""];
  "sha256:f0eec687d7ae49e9f8a4c72a79eb972f67ab0e43eafc44ebded68b080e1ef837" -> "sha256:f165952e00fc67b84057f4df2776bdf4925b2a072042c96fafc92b9ff768a599" [label=""];
}

