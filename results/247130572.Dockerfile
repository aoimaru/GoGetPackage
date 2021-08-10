[app/sources/247130572.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:9b9ed525b80c43f6d28fdd4bac4260bc21b68b1fdb1a2bad577fcda148932825" [label="local://context" shape="ellipse"];
  "sha256:028325435fd41c7b22d851023f2a714bc882338d214138bd6e454969d4a72931" [label="copy{src=/src, dest=/root/}" shape="note"];
  "sha256:77290d26b4a0809a3106d82478428f19b2802d51712a3bd37e6afd2dadc6a1c5" [label="/bin/sh -c apt-get -yq update &&     apt-get -yq --no-install-recommends install       cron curl rbldnsd=$RBLDNSD_VERSION perl libdbd-mysql-perl       mariadb-client patch &&     curl -sL http://www.blue-quartz.com/rbl/rebuild_rbldns.txt >       /usr/local/bin/rebuild_rbldns.pl &&     patch -d /usr/local/bin < /root/rebuild_rbldns.diff &&     chmod 755 /usr/local/bin/rebuild_rbldns.pl &&     apt-get purge -yq --auto-remove curl patch &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/log/*" shape="box"];
  "sha256:f800cc05b52c12785aefecbbcb9867533242a8811b4041069601b65e3d4f4dec" [label="sha256:f800cc05b52c12785aefecbbcb9867533242a8811b4041069601b65e3d4f4dec" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:028325435fd41c7b22d851023f2a714bc882338d214138bd6e454969d4a72931" [label=""];
  "sha256:9b9ed525b80c43f6d28fdd4bac4260bc21b68b1fdb1a2bad577fcda148932825" -> "sha256:028325435fd41c7b22d851023f2a714bc882338d214138bd6e454969d4a72931" [label=""];
  "sha256:028325435fd41c7b22d851023f2a714bc882338d214138bd6e454969d4a72931" -> "sha256:77290d26b4a0809a3106d82478428f19b2802d51712a3bd37e6afd2dadc6a1c5" [label=""];
  "sha256:77290d26b4a0809a3106d82478428f19b2802d51712a3bd37e6afd2dadc6a1c5" -> "sha256:f800cc05b52c12785aefecbbcb9867533242a8811b4041069601b65e3d4f4dec" [label=""];
}

