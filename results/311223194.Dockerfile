[app/sources/311223194.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:0e9516b1590d8746adfab63496629108e4dd1c4f8b15f0a1d18b27074a982e5c" [label="local://context" shape="ellipse"];
  "sha256:c876277bd17bede6cabd9fe4c1de603807178227e5857a959eedeb8f0b5c95fa" [label="copy{src=/, dest=/srv/wineappimage}" shape="note"];
  "sha256:72ca751ee469264098c0447547ae17c2a5e2cfcd94b04c44e93296b0d38832a3" [label="mkdir{path=/srv/wineappimage}" shape="note"];
  "sha256:bf777401135c9e880bcd105dc79517b91f693b2923a2b199fc5bd97bd724cf04" [label="/bin/sh -c /srv/wineappimage/deployscript/debian-winedeploy.sh" shape="box"];
  "sha256:c83c0ba3bc7c2b16529eb00cc96c1fbb728c151b430ba9600ac8c82470a5bf19" [label="sha256:c83c0ba3bc7c2b16529eb00cc96c1fbb728c151b430ba9600ac8c82470a5bf19" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:c876277bd17bede6cabd9fe4c1de603807178227e5857a959eedeb8f0b5c95fa" [label=""];
  "sha256:0e9516b1590d8746adfab63496629108e4dd1c4f8b15f0a1d18b27074a982e5c" -> "sha256:c876277bd17bede6cabd9fe4c1de603807178227e5857a959eedeb8f0b5c95fa" [label=""];
  "sha256:c876277bd17bede6cabd9fe4c1de603807178227e5857a959eedeb8f0b5c95fa" -> "sha256:72ca751ee469264098c0447547ae17c2a5e2cfcd94b04c44e93296b0d38832a3" [label=""];
  "sha256:72ca751ee469264098c0447547ae17c2a5e2cfcd94b04c44e93296b0d38832a3" -> "sha256:bf777401135c9e880bcd105dc79517b91f693b2923a2b199fc5bd97bd724cf04" [label=""];
  "sha256:bf777401135c9e880bcd105dc79517b91f693b2923a2b199fc5bd97bd724cf04" -> "sha256:c83c0ba3bc7c2b16529eb00cc96c1fbb728c151b430ba9600ac8c82470a5bf19" [label=""];
}

