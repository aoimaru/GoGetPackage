[app/sources/227248673.Dockerfile]
digraph {
  "sha256:8b298d3652059ddb1d9df71ef308b7e902d74936e0041cd2e9760dee29cc8fa0" [label="docker-image://docker.io/izone/hadoop:cos6-anaconda" shape="ellipse"];
  "sha256:29f96955fe0ddf1dadd2fa0ff8409dabd1c05a43e82bda11042271aef841c94b" [label="/bin/sh -c yum install -y R" shape="box"];
  "sha256:74d8d2d6f27daeb07a3380cf9994d292982e96d17a72aaa5ef96c9f3e75d950c" [label="/bin/sh -c curl -L http://cran.r-project.org/src/contrib/rJava_0.9-8.tar.gz -o rJava_0.9-8.tar.gz" shape="box"];
  "sha256:52115f19fda6dfe62838012ccf4c49c14ba3a4d5d5733e9938d9cd9c925eabaa" [label="/bin/sh -c R CMD INSTALL rJava_0.9-8.tar.gz" shape="box"];
  "sha256:fee8c46be33944b2e6a8dbaf8bec3a17bebfebf5e494ef6d2b8423539e1d5097" [label="/bin/sh -c R CMD javareconf \t&& rm -rf rJava_0.9-8.tar.gz" shape="box"];
  "sha256:8ae5b6d3ff3818928e154cefc891ac537bd93a004e5ea8726f8edf056eb1bdba" [label="/bin/sh -c yum install -y --nogpgcheck     https://download2.rstudio.org/rstudio-server-rhel-${RSTUDIO_VERSION}-x86_64.rpm" shape="box"];
  "sha256:7638da62c62b4c88997e55107e5d5bff9cae053a050a91d53d54b587615fbd39" [label="/bin/sh -c groupadd rstudio \t&& useradd -g rstudio rstudio \t&& echo rstudio | passwd rstudio --stdin" shape="box"];
  "sha256:ef29afbb5e92e55ccaa5f3f665933e3f767884e02313bb0d5dcbffc5da7f6f56" [label="/bin/sh -c echo \"root:root\" | chpasswd     && echo 'auth-minimum-user-id=0' >>/etc/rstudio/rserver.conf" shape="box"];
  "sha256:0de91e6e9e83e1f4625e7517f21b434ad5a5278856b09b3a69ea301e4f7080ea" [label="/bin/sh -c echo \"\" >>/etc/supervisord.conf     && echo \"[program:rserver]\" >>/etc/supervisord.conf     && echo \"command=/usr/lib/rstudio-server/bin/rserver\" >>/etc/supervisord.conf" shape="box"];
  "sha256:80a2aa9bac95dc3b294c31c6368bf39bf2e758327609053681f54a4d64a9f017" [label="sha256:80a2aa9bac95dc3b294c31c6368bf39bf2e758327609053681f54a4d64a9f017" shape="plaintext"];
  "sha256:8b298d3652059ddb1d9df71ef308b7e902d74936e0041cd2e9760dee29cc8fa0" -> "sha256:29f96955fe0ddf1dadd2fa0ff8409dabd1c05a43e82bda11042271aef841c94b" [label=""];
  "sha256:29f96955fe0ddf1dadd2fa0ff8409dabd1c05a43e82bda11042271aef841c94b" -> "sha256:74d8d2d6f27daeb07a3380cf9994d292982e96d17a72aaa5ef96c9f3e75d950c" [label=""];
  "sha256:74d8d2d6f27daeb07a3380cf9994d292982e96d17a72aaa5ef96c9f3e75d950c" -> "sha256:52115f19fda6dfe62838012ccf4c49c14ba3a4d5d5733e9938d9cd9c925eabaa" [label=""];
  "sha256:52115f19fda6dfe62838012ccf4c49c14ba3a4d5d5733e9938d9cd9c925eabaa" -> "sha256:fee8c46be33944b2e6a8dbaf8bec3a17bebfebf5e494ef6d2b8423539e1d5097" [label=""];
  "sha256:fee8c46be33944b2e6a8dbaf8bec3a17bebfebf5e494ef6d2b8423539e1d5097" -> "sha256:8ae5b6d3ff3818928e154cefc891ac537bd93a004e5ea8726f8edf056eb1bdba" [label=""];
  "sha256:8ae5b6d3ff3818928e154cefc891ac537bd93a004e5ea8726f8edf056eb1bdba" -> "sha256:7638da62c62b4c88997e55107e5d5bff9cae053a050a91d53d54b587615fbd39" [label=""];
  "sha256:7638da62c62b4c88997e55107e5d5bff9cae053a050a91d53d54b587615fbd39" -> "sha256:ef29afbb5e92e55ccaa5f3f665933e3f767884e02313bb0d5dcbffc5da7f6f56" [label=""];
  "sha256:ef29afbb5e92e55ccaa5f3f665933e3f767884e02313bb0d5dcbffc5da7f6f56" -> "sha256:0de91e6e9e83e1f4625e7517f21b434ad5a5278856b09b3a69ea301e4f7080ea" [label=""];
  "sha256:0de91e6e9e83e1f4625e7517f21b434ad5a5278856b09b3a69ea301e4f7080ea" -> "sha256:80a2aa9bac95dc3b294c31c6368bf39bf2e758327609053681f54a4d64a9f017" [label=""];
}

