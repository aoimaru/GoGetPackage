[app/sources/155138410.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" [label="/bin/sh -c yum install epel-release -y" shape="box"];
  "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" [label="/bin/sh -c yum install nginx -y" shape="box"];
  "sha256:5cde604803fbb130be081c2cfbd14932c0097c8e9e3c0d03d75838ac9d36a10e" [label="local://context" shape="ellipse"];
  "sha256:c882097df061f497fe08ec272f582d41919eaa1820e59f1b3364ab4be585ef61" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:74f334898afae3013fd84a2ff699aafe1fec2f1740298b16c496ec4e12e687c0" [label="copy{src=/install.sh, dest=/var/install.sh}" shape="note"];
  "sha256:b3627dff13e1788bcfa6200834e4de1a703b9b7100f54862e9995f315452caff" [label="copy{src=/start.sh, dest=/var/start.sh}" shape="note"];
  "sha256:d1166d8b4e746ffbfa100f783f975ee284fda184aab37feab2ca56386a0eef82" [label="sha256:d1166d8b4e746ffbfa100f783f975ee284fda184aab37feab2ca56386a0eef82" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" [label=""];
  "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" -> "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" [label=""];
  "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" -> "sha256:c882097df061f497fe08ec272f582d41919eaa1820e59f1b3364ab4be585ef61" [label=""];
  "sha256:5cde604803fbb130be081c2cfbd14932c0097c8e9e3c0d03d75838ac9d36a10e" -> "sha256:c882097df061f497fe08ec272f582d41919eaa1820e59f1b3364ab4be585ef61" [label=""];
  "sha256:c882097df061f497fe08ec272f582d41919eaa1820e59f1b3364ab4be585ef61" -> "sha256:74f334898afae3013fd84a2ff699aafe1fec2f1740298b16c496ec4e12e687c0" [label=""];
  "sha256:5cde604803fbb130be081c2cfbd14932c0097c8e9e3c0d03d75838ac9d36a10e" -> "sha256:74f334898afae3013fd84a2ff699aafe1fec2f1740298b16c496ec4e12e687c0" [label=""];
  "sha256:74f334898afae3013fd84a2ff699aafe1fec2f1740298b16c496ec4e12e687c0" -> "sha256:b3627dff13e1788bcfa6200834e4de1a703b9b7100f54862e9995f315452caff" [label=""];
  "sha256:5cde604803fbb130be081c2cfbd14932c0097c8e9e3c0d03d75838ac9d36a10e" -> "sha256:b3627dff13e1788bcfa6200834e4de1a703b9b7100f54862e9995f315452caff" [label=""];
  "sha256:b3627dff13e1788bcfa6200834e4de1a703b9b7100f54862e9995f315452caff" -> "sha256:d1166d8b4e746ffbfa100f783f975ee284fda184aab37feab2ca56386a0eef82" [label=""];
}

