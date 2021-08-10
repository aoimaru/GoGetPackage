[app/sources/192475989.Dockerfile]
digraph {
  "sha256:d9586a2f0181ff45cbbfa7fa75293333da83a8384503de2eb168cc2885c546ff" [label="local://context" shape="ellipse"];
  "sha256:8ffaa88f895f180b4a518da75fa74fe0331b58907ce68a5a475ff9b31d96be0a" [label="docker-image://docker.io/rancher/os-centosconsole-base:latest" shape="ellipse"];
  "sha256:c62a9d3419b79ee6a2516112bc8bc568270b97a2a8d7387294e4deb0620f5f58" [label="copy{src=/prompt.sh, dest=/etc/profile.d/}" shape="note"];
  "sha256:6411b28550e852cc95445de05e3212ef29121f9161521002960ec94f1d205176" [label="copy{src=/build/sshd_config.append.tpl, dest=/etc/ssh/}" shape="note"];
  "sha256:1c5f9dc5af0f10ad5056510c407e5e22df498fc75235270fe90993e458cd820d" [label="/bin/sh -c yum install -y iptables openssh-server rsync sudo                     vim less ca-certificates psmisc htop                     procps-ng iproute openssh-clients bash-completion wget     && yum clean all     && rm -rf /etc/ssh/*key*     && localedef -c -f UTF-8 -i en_US en_US.UTF-8     && groupadd --gid 1100 rancher     && groupadd --gid 1101 docker     && useradd -u 1100 -g rancher -G docker,wheel -m -s /bin/bash rancher     && useradd -u 1101 -g docker -G docker,wheel -m -s /bin/bash docker     && echo '## allow password less for rancher user' >> /etc/sudoers     && echo 'rancher ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers     && echo '## allow password less for docker user' >> /etc/sudoers     && echo 'docker ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers     && cat /etc/ssh/sshd_config > /etc/ssh/sshd_config.tpl     && cat /etc/ssh/sshd_config.append.tpl >> /etc/ssh/sshd_config.tpl     && rm -f /etc/ssh/sshd_config.append.tpl /etc/ssh/sshd_config" shape="box"];
  "sha256:6df586906907886b65ac554b2c915e94d108b48854c866e9a1642afb724a558b" [label="sha256:6df586906907886b65ac554b2c915e94d108b48854c866e9a1642afb724a558b" shape="plaintext"];
  "sha256:8ffaa88f895f180b4a518da75fa74fe0331b58907ce68a5a475ff9b31d96be0a" -> "sha256:c62a9d3419b79ee6a2516112bc8bc568270b97a2a8d7387294e4deb0620f5f58" [label=""];
  "sha256:d9586a2f0181ff45cbbfa7fa75293333da83a8384503de2eb168cc2885c546ff" -> "sha256:c62a9d3419b79ee6a2516112bc8bc568270b97a2a8d7387294e4deb0620f5f58" [label=""];
  "sha256:c62a9d3419b79ee6a2516112bc8bc568270b97a2a8d7387294e4deb0620f5f58" -> "sha256:6411b28550e852cc95445de05e3212ef29121f9161521002960ec94f1d205176" [label=""];
  "sha256:d9586a2f0181ff45cbbfa7fa75293333da83a8384503de2eb168cc2885c546ff" -> "sha256:6411b28550e852cc95445de05e3212ef29121f9161521002960ec94f1d205176" [label=""];
  "sha256:6411b28550e852cc95445de05e3212ef29121f9161521002960ec94f1d205176" -> "sha256:1c5f9dc5af0f10ad5056510c407e5e22df498fc75235270fe90993e458cd820d" [label=""];
  "sha256:1c5f9dc5af0f10ad5056510c407e5e22df498fc75235270fe90993e458cd820d" -> "sha256:6df586906907886b65ac554b2c915e94d108b48854c866e9a1642afb724a558b" [label=""];
}

