[app/sources/224419144.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d3c2e247d1458ee78c63ce5a45ee656e0241737389579b099e189c628d8c317a" [label="mkdir{path=/root}" shape="note"];
  "sha256:1b8b9bb61d4b791638bacabea431d258d7ae70cd359a19c7b39a621ca3e7a98b" [label="local://context" shape="ellipse"];
  "sha256:f62192eb8df76891cdd6f767099646c645ebaf187139dc635965d4b1b608d934" [label="copy{src=/, dest=/root/HZNUOJ}" shape="note"];
  "sha256:29dc089ab1c9012ebd2eeb594f549a44330a938ce760ea9c5087768b48657122" [label="/bin/sh -c sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list    && apt-get clean    && echo \"mysql-server mysql-server/root_password password $MYSQL_PWD\" | debconf-set-selections    && echo \"mysql-server mysql-server/root_password_again password $MYSQL_PWD\" | debconf-set-selections    && cd /root/HZNUOJ/judger/install    && bash install.sh" shape="box"];
  "sha256:5fbf0947525b0dda1cf119c6fdfe9a3cce30026512e365baeceaeaf22132e678" [label="sha256:5fbf0947525b0dda1cf119c6fdfe9a3cce30026512e365baeceaeaf22132e678" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d3c2e247d1458ee78c63ce5a45ee656e0241737389579b099e189c628d8c317a" [label=""];
  "sha256:d3c2e247d1458ee78c63ce5a45ee656e0241737389579b099e189c628d8c317a" -> "sha256:f62192eb8df76891cdd6f767099646c645ebaf187139dc635965d4b1b608d934" [label=""];
  "sha256:1b8b9bb61d4b791638bacabea431d258d7ae70cd359a19c7b39a621ca3e7a98b" -> "sha256:f62192eb8df76891cdd6f767099646c645ebaf187139dc635965d4b1b608d934" [label=""];
  "sha256:f62192eb8df76891cdd6f767099646c645ebaf187139dc635965d4b1b608d934" -> "sha256:29dc089ab1c9012ebd2eeb594f549a44330a938ce760ea9c5087768b48657122" [label=""];
  "sha256:29dc089ab1c9012ebd2eeb594f549a44330a938ce760ea9c5087768b48657122" -> "sha256:5fbf0947525b0dda1cf119c6fdfe9a3cce30026512e365baeceaeaf22132e678" [label=""];
}

