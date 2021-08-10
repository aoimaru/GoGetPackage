[app/sources/337127323.Dockerfile]
digraph {
  "sha256:c0d1798b3007a3c08d47e0e40adfde4025721bae7e5c79d3ba96531d6d22523f" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:42b85aefd9393490246aad7d9249b63fe86563da15c05312282b0b7c216fbc1d" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:a5d1161da140f0829684e38b92d12855745de6316146ccfa8893bb1627bdeb45" [label="/bin/sh -c yum install -y epel-release yum-utils" shape="box"];
  "sha256:ede41a8a5e63fc1ed08c5870a1dcd80d7f149ab1a19dc67c0a16c4a04c55acd3" [label="/bin/sh -c yum install -y httpd mysql-server mysql sendmail redis \twget curl zip unzip vim bzip2 net-tools iproute lrzsz nc patch nano lsof rsync bind-utils \tpython-pip gettext git file lftp psmisc xz \tglibc.i686 gdb python2-crypto inotify-tools libxml2-devel" shape="box"];
  "sha256:d900e721a0bda0cada5bb29b84ef5ecf73e8e12966d0d3837db0333740f94a4e" [label="/bin/sh -c mysql_install_db \t&& chown mysql -R /var/lib/mysql" shape="box"];
  "sha256:a850daacf088fee68adee0c51b7664961dc35ab57934ec477a114bf0cc939b2e" [label="copy{src=/*.sh, dest=/root/},copy{src=/.bash*, dest=/root/},copy{src=/.vimrc, dest=/root/}" shape="note"];
  "sha256:f88714917969ff2890565197eafac899eadcc07c8706864dfa1f7172a6e02c55" [label="copy{src=/server.cnf, dest=/etc/my.cnf.d/}" shape="note"];
  "sha256:0e78da56b21cfd9a95765b71e9bb7f5c844fe52538ed1ff7703f5faae6f511ae" [label="/bin/sh -c chmod 755 /etc/my.cnf.d/server.cnf" shape="box"];
  "sha256:c34b16b5ad495f87888244401ca557e267b2362f41dba8bac7431bb0f9c319cd" [label="copy{src=/httpd.conf, dest=/etc/httpd/conf/httpd.conf}" shape="note"];
  "sha256:7c8302231df72d29248a6c87ffdca5339b453c0431a0adf6b3c175a4b94741e9" [label="copy{src=/control/*.sh, dest=/etc/init.d/}" shape="note"];
  "sha256:5a284bb06c8b42a8a07c8bd9896ea526746bf0aa2b0ad7f1cd74930b7b74932b" [label="/bin/sh -c chmod +x /etc/init.d/*.sh" shape="box"];
  "sha256:f9c1c4e99dd7dfd86d657f815c69c59635a4e0bc3062fd72034931673baf5d9f" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:0b5f2ce4ddce977c249be7cc80521f5b232c572078b5319afdc19b2f65c58f7f" [label="sha256:0b5f2ce4ddce977c249be7cc80521f5b232c572078b5319afdc19b2f65c58f7f" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:42b85aefd9393490246aad7d9249b63fe86563da15c05312282b0b7c216fbc1d" [label=""];
  "sha256:42b85aefd9393490246aad7d9249b63fe86563da15c05312282b0b7c216fbc1d" -> "sha256:a5d1161da140f0829684e38b92d12855745de6316146ccfa8893bb1627bdeb45" [label=""];
  "sha256:a5d1161da140f0829684e38b92d12855745de6316146ccfa8893bb1627bdeb45" -> "sha256:ede41a8a5e63fc1ed08c5870a1dcd80d7f149ab1a19dc67c0a16c4a04c55acd3" [label=""];
  "sha256:ede41a8a5e63fc1ed08c5870a1dcd80d7f149ab1a19dc67c0a16c4a04c55acd3" -> "sha256:d900e721a0bda0cada5bb29b84ef5ecf73e8e12966d0d3837db0333740f94a4e" [label=""];
  "sha256:d900e721a0bda0cada5bb29b84ef5ecf73e8e12966d0d3837db0333740f94a4e" -> "sha256:a850daacf088fee68adee0c51b7664961dc35ab57934ec477a114bf0cc939b2e" [label=""];
  "sha256:c0d1798b3007a3c08d47e0e40adfde4025721bae7e5c79d3ba96531d6d22523f" -> "sha256:a850daacf088fee68adee0c51b7664961dc35ab57934ec477a114bf0cc939b2e" [label=""];
  "sha256:a850daacf088fee68adee0c51b7664961dc35ab57934ec477a114bf0cc939b2e" -> "sha256:f88714917969ff2890565197eafac899eadcc07c8706864dfa1f7172a6e02c55" [label=""];
  "sha256:c0d1798b3007a3c08d47e0e40adfde4025721bae7e5c79d3ba96531d6d22523f" -> "sha256:f88714917969ff2890565197eafac899eadcc07c8706864dfa1f7172a6e02c55" [label=""];
  "sha256:f88714917969ff2890565197eafac899eadcc07c8706864dfa1f7172a6e02c55" -> "sha256:0e78da56b21cfd9a95765b71e9bb7f5c844fe52538ed1ff7703f5faae6f511ae" [label=""];
  "sha256:0e78da56b21cfd9a95765b71e9bb7f5c844fe52538ed1ff7703f5faae6f511ae" -> "sha256:c34b16b5ad495f87888244401ca557e267b2362f41dba8bac7431bb0f9c319cd" [label=""];
  "sha256:c0d1798b3007a3c08d47e0e40adfde4025721bae7e5c79d3ba96531d6d22523f" -> "sha256:c34b16b5ad495f87888244401ca557e267b2362f41dba8bac7431bb0f9c319cd" [label=""];
  "sha256:c34b16b5ad495f87888244401ca557e267b2362f41dba8bac7431bb0f9c319cd" -> "sha256:7c8302231df72d29248a6c87ffdca5339b453c0431a0adf6b3c175a4b94741e9" [label=""];
  "sha256:c0d1798b3007a3c08d47e0e40adfde4025721bae7e5c79d3ba96531d6d22523f" -> "sha256:7c8302231df72d29248a6c87ffdca5339b453c0431a0adf6b3c175a4b94741e9" [label=""];
  "sha256:7c8302231df72d29248a6c87ffdca5339b453c0431a0adf6b3c175a4b94741e9" -> "sha256:5a284bb06c8b42a8a07c8bd9896ea526746bf0aa2b0ad7f1cd74930b7b74932b" [label=""];
  "sha256:5a284bb06c8b42a8a07c8bd9896ea526746bf0aa2b0ad7f1cd74930b7b74932b" -> "sha256:f9c1c4e99dd7dfd86d657f815c69c59635a4e0bc3062fd72034931673baf5d9f" [label=""];
  "sha256:f9c1c4e99dd7dfd86d657f815c69c59635a4e0bc3062fd72034931673baf5d9f" -> "sha256:0b5f2ce4ddce977c249be7cc80521f5b232c572078b5319afdc19b2f65c58f7f" [label=""];
}

