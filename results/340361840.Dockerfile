[app/sources/340361840.Dockerfile]
digraph {
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" [label="docker-image://docker.io/phusion/baseimage:0.9.16" shape="ellipse"];
  "sha256:91d0cbc55535ae6ddf514b0808d1586eb402c7358fe3f1b849cc7e064eafb329" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   add-apt-repository -y ppa:webupd8team/java &&   apt-get update &&   apt-get install -y oracle-java8-installer &&   rm -rf /var/lib/apt/lists/* &&   rm -rf /var/cache/oracle-jdk8-installer" shape="box"];
  "sha256:4517b8870f3da252d9c44f07269524f7f8f1998f59f9ccaf9496ecfcd3b11edb" [label="/bin/sh -c rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:d6d3adf0984fa57dfb4b0ed407eb932ff8e68385c3c20a9f5248e1b169c52ee2" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:07314c1ac1499c8a9e0b4ec47439d487fa35899a9150e16a26fc57008165c391" [label="sha256:07314c1ac1499c8a9e0b4ec47439d487fa35899a9150e16a26fc57008165c391" shape="plaintext"];
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" -> "sha256:91d0cbc55535ae6ddf514b0808d1586eb402c7358fe3f1b849cc7e064eafb329" [label=""];
  "sha256:91d0cbc55535ae6ddf514b0808d1586eb402c7358fe3f1b849cc7e064eafb329" -> "sha256:4517b8870f3da252d9c44f07269524f7f8f1998f59f9ccaf9496ecfcd3b11edb" [label=""];
  "sha256:4517b8870f3da252d9c44f07269524f7f8f1998f59f9ccaf9496ecfcd3b11edb" -> "sha256:d6d3adf0984fa57dfb4b0ed407eb932ff8e68385c3c20a9f5248e1b169c52ee2" [label=""];
  "sha256:d6d3adf0984fa57dfb4b0ed407eb932ff8e68385c3c20a9f5248e1b169c52ee2" -> "sha256:07314c1ac1499c8a9e0b4ec47439d487fa35899a9150e16a26fc57008165c391" [label=""];
}

