[app/sources/260509160.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c68781329c61d25e4c9211484f55eb9ad98b5d7e0dbb351affee341e31a50e97" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common git" shape="box"];
  "sha256:9e600bfb8e7f700d9f271021306793c89669944652ebf68bfeddef769320dccd" [label="/bin/sh -c apt-add-repository -y ppa:ansible/ansible" shape="box"];
  "sha256:6a4b487a848f6d0e136b289eb38070aec25dd6323124d3f29b2a2cd27fe3183b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5cdec0b4e68337cfe6d5b574a85a624c6000112aeeaa91731bfd781384db3596" [label="/bin/sh -c apt-get install -y ansible python sudo python-pip" shape="box"];
  "sha256:a13917accbd4885e27330e5dec894d9f4e6f414037ade0704eb22cfa3c0dded0" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:3f75e71c1c67b324eb3ba65a1e42fe0ed6559d70c68803aa7441917de4a6173d" [label="sha256:3f75e71c1c67b324eb3ba65a1e42fe0ed6559d70c68803aa7441917de4a6173d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:c68781329c61d25e4c9211484f55eb9ad98b5d7e0dbb351affee341e31a50e97" [label=""];
  "sha256:c68781329c61d25e4c9211484f55eb9ad98b5d7e0dbb351affee341e31a50e97" -> "sha256:9e600bfb8e7f700d9f271021306793c89669944652ebf68bfeddef769320dccd" [label=""];
  "sha256:9e600bfb8e7f700d9f271021306793c89669944652ebf68bfeddef769320dccd" -> "sha256:6a4b487a848f6d0e136b289eb38070aec25dd6323124d3f29b2a2cd27fe3183b" [label=""];
  "sha256:6a4b487a848f6d0e136b289eb38070aec25dd6323124d3f29b2a2cd27fe3183b" -> "sha256:5cdec0b4e68337cfe6d5b574a85a624c6000112aeeaa91731bfd781384db3596" [label=""];
  "sha256:5cdec0b4e68337cfe6d5b574a85a624c6000112aeeaa91731bfd781384db3596" -> "sha256:a13917accbd4885e27330e5dec894d9f4e6f414037ade0704eb22cfa3c0dded0" [label=""];
  "sha256:a13917accbd4885e27330e5dec894d9f4e6f414037ade0704eb22cfa3c0dded0" -> "sha256:3f75e71c1c67b324eb3ba65a1e42fe0ed6559d70c68803aa7441917de4a6173d" [label=""];
}

