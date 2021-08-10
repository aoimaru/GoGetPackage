[app/sources/163781262.Dockerfile]
digraph {
  "sha256:f298ea79399a7d9c9de4d090051e6990261c1f17f22e2340e5f397a63b792315" [label="docker-image://docker.io/lenz/whaleware:latest" shape="ellipse"];
  "sha256:e63ab36d7c571c0afdd3600b8fc6aaf539274a86984a26fbde0c7f72b53c9765" [label="/bin/sh -c touch /var/lib/rpm/* && yum install -y yum-plugin-ovl" shape="box"];
  "sha256:b025a2f76f920e87ba4f52b5109640aebbcc74b98403134a7e42f2c4b37566e6" [label="/bin/sh -c yum install -y wget lsof nano tar jq  &&     wget -P /etc/yum.repos.d http://yum.loway.ch/loway.repo &&     yum install -y mysql mysql-server &&     yum install -y queuemetrics" shape="box"];
  "sha256:780fb98094366403f413e45eb37f0bbbf22dea88e087acb0430f66a7f059e13a" [label="local://context" shape="ellipse"];
  "sha256:a2bef69bc52cfd564d54653c80b0ac9a435ea519305f5d98513abc8d4b1878fb" [label="copy{src=/ww, dest=/ww}" shape="note"];
  "sha256:10cd37f472fbe6a232ecadfe4f26b14e78073516b3be258b00be847d8d256cb4" [label="sha256:10cd37f472fbe6a232ecadfe4f26b14e78073516b3be258b00be847d8d256cb4" shape="plaintext"];
  "sha256:f298ea79399a7d9c9de4d090051e6990261c1f17f22e2340e5f397a63b792315" -> "sha256:e63ab36d7c571c0afdd3600b8fc6aaf539274a86984a26fbde0c7f72b53c9765" [label=""];
  "sha256:e63ab36d7c571c0afdd3600b8fc6aaf539274a86984a26fbde0c7f72b53c9765" -> "sha256:b025a2f76f920e87ba4f52b5109640aebbcc74b98403134a7e42f2c4b37566e6" [label=""];
  "sha256:b025a2f76f920e87ba4f52b5109640aebbcc74b98403134a7e42f2c4b37566e6" -> "sha256:a2bef69bc52cfd564d54653c80b0ac9a435ea519305f5d98513abc8d4b1878fb" [label=""];
  "sha256:780fb98094366403f413e45eb37f0bbbf22dea88e087acb0430f66a7f059e13a" -> "sha256:a2bef69bc52cfd564d54653c80b0ac9a435ea519305f5d98513abc8d4b1878fb" [label=""];
  "sha256:a2bef69bc52cfd564d54653c80b0ac9a435ea519305f5d98513abc8d4b1878fb" -> "sha256:10cd37f472fbe6a232ecadfe4f26b14e78073516b3be258b00be847d8d256cb4" [label=""];
}

