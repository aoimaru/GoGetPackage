[app/sources/252774695.Dockerfile]
digraph {
  "sha256:2753e3cf4206ab12920f0c7d217d97b2449822dd95921985df9fe5a277bb8141" [label="docker-image://docker.io/baselibrary/python:2.7" shape="ellipse"];
  "sha256:6e4098c1b3caef61b84885a85af24e3674d05226b0a04ebbb6566d251da9b95f" [label="/bin/sh -c pip install shadowsocks==2.8.2" shape="box"];
  "sha256:7d96c54090af0c10928c387b7f030fcfbfe792d7f3b318c855e374912d67844f" [label="sha256:7d96c54090af0c10928c387b7f030fcfbfe792d7f3b318c855e374912d67844f" shape="plaintext"];
  "sha256:2753e3cf4206ab12920f0c7d217d97b2449822dd95921985df9fe5a277bb8141" -> "sha256:6e4098c1b3caef61b84885a85af24e3674d05226b0a04ebbb6566d251da9b95f" [label=""];
  "sha256:6e4098c1b3caef61b84885a85af24e3674d05226b0a04ebbb6566d251da9b95f" -> "sha256:7d96c54090af0c10928c387b7f030fcfbfe792d7f3b318c855e374912d67844f" [label=""];
}

