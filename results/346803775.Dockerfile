[app/sources/346803775.Dockerfile]
digraph {
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" [label="docker-image://docker.io/prestashop/base:5.6-apache" shape="ellipse"];
  "sha256:fe7f3e34bdad237984e918e717792276640982d80bb341b168567fb505fc1542" [label="https://www.prestashop.com/download/old/prestashop_1.4.0.8.zip" shape="ellipse"];
  "sha256:3d77a73ca568c71b873496bb258a816f68be8d76f2aafd51235dbc3fa13cf9ce" [label="copy{src=/prestashop_1.4.0.8.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:4b8633aeede8265ec8d662cfb532b225279ffdccb1eaf5700a2d7fbf0c3b0490" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:ab6c7227d15eee8667ca1e4e118e057ed39a9f8aa3e60682ba1a4f406db191d9" [label="sha256:ab6c7227d15eee8667ca1e4e118e057ed39a9f8aa3e60682ba1a4f406db191d9" shape="plaintext"];
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" -> "sha256:3d77a73ca568c71b873496bb258a816f68be8d76f2aafd51235dbc3fa13cf9ce" [label=""];
  "sha256:fe7f3e34bdad237984e918e717792276640982d80bb341b168567fb505fc1542" -> "sha256:3d77a73ca568c71b873496bb258a816f68be8d76f2aafd51235dbc3fa13cf9ce" [label=""];
  "sha256:3d77a73ca568c71b873496bb258a816f68be8d76f2aafd51235dbc3fa13cf9ce" -> "sha256:4b8633aeede8265ec8d662cfb532b225279ffdccb1eaf5700a2d7fbf0c3b0490" [label=""];
  "sha256:4b8633aeede8265ec8d662cfb532b225279ffdccb1eaf5700a2d7fbf0c3b0490" -> "sha256:ab6c7227d15eee8667ca1e4e118e057ed39a9f8aa3e60682ba1a4f406db191d9" [label=""];
}

