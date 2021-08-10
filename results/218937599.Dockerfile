[app/sources/218937599.Dockerfile]
digraph {
  "sha256:2760eb37bfc7962663f7491840e27f75653bdbf54358e0dd9f91bc530e0fc3df" [label="docker-image://docker.io/icclabcna/zurmo_log_courier:latest" shape="ellipse"];
  "sha256:40f1575b07d818bbabc567d6df8ba28605c23255f159a51be487ec533799f9ce" [label="local://context" shape="ellipse"];
  "sha256:5fbd11d018c5efabe26acca8371f564e23a391173e9bd40d238323c2c47676d9" [label="copy{src=/log-courier.conf.tmpl, dest=/etc/confd/templates/log-courier.conf.tmpl}" shape="note"];
  "sha256:51b2124b1a4ef01fbe87f36ed7bec70cf892e65ad2831925868658d5a9786a04" [label="copy{src=/log-courier.conf, dest=/etc/log-courier.conf}" shape="note"];
  "sha256:b262df307fb16c96e518c659e3822c4712a14803558f1dd03ad4d2157866240e" [label="sha256:b262df307fb16c96e518c659e3822c4712a14803558f1dd03ad4d2157866240e" shape="plaintext"];
  "sha256:2760eb37bfc7962663f7491840e27f75653bdbf54358e0dd9f91bc530e0fc3df" -> "sha256:5fbd11d018c5efabe26acca8371f564e23a391173e9bd40d238323c2c47676d9" [label=""];
  "sha256:40f1575b07d818bbabc567d6df8ba28605c23255f159a51be487ec533799f9ce" -> "sha256:5fbd11d018c5efabe26acca8371f564e23a391173e9bd40d238323c2c47676d9" [label=""];
  "sha256:5fbd11d018c5efabe26acca8371f564e23a391173e9bd40d238323c2c47676d9" -> "sha256:51b2124b1a4ef01fbe87f36ed7bec70cf892e65ad2831925868658d5a9786a04" [label=""];
  "sha256:40f1575b07d818bbabc567d6df8ba28605c23255f159a51be487ec533799f9ce" -> "sha256:51b2124b1a4ef01fbe87f36ed7bec70cf892e65ad2831925868658d5a9786a04" [label=""];
  "sha256:51b2124b1a4ef01fbe87f36ed7bec70cf892e65ad2831925868658d5a9786a04" -> "sha256:b262df307fb16c96e518c659e3822c4712a14803558f1dd03ad4d2157866240e" [label=""];
}

