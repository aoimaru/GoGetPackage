[app/sources/365518296.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:abd4285ff4215dd70c4b7d8cb197e91f4b03bf406e61ceb4fb8d97a8d46b79e9" [label="/bin/sh -c zypper --non-interactive install wget" shape="box"];
  "sha256:d795c1c56bee062e811ccc6ff1151141af8224709a779db6ff6666a969799056" [label="/bin/sh -c wget http://download.eclipse.org/package-drone/PD-GPG-KEY" shape="box"];
  "sha256:ff76ea19b7a2860769c0a940b5e9299e4ffc560adae7e5bbfa17523f9b8784a9" [label="/bin/sh -c rpm --import PD-GPG-KEY" shape="box"];
  "sha256:60366350e44002125b333ea9c87140fc11000da63311ad250d41051895706457" [label="/bin/sh -c zypper ar -f -n PackageDrone -g http://download.eclipse.org/package-drone/milestone/0.13/opensuse13 pdrone" shape="box"];
  "sha256:6e3e13bb26e75b51b736f58aef2c32e064954ce0f7fa6f27453f8ba8cff0472c" [label="/bin/sh -c zypper --non-interactive install org.eclipse.packagedrone.server" shape="box"];
  "sha256:68217f39694cb213c9a0b2ae409f928b124b872d463c57c29cc4985be943c655" [label="sha256:68217f39694cb213c9a0b2ae409f928b124b872d463c57c29cc4985be943c655" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:abd4285ff4215dd70c4b7d8cb197e91f4b03bf406e61ceb4fb8d97a8d46b79e9" [label=""];
  "sha256:abd4285ff4215dd70c4b7d8cb197e91f4b03bf406e61ceb4fb8d97a8d46b79e9" -> "sha256:d795c1c56bee062e811ccc6ff1151141af8224709a779db6ff6666a969799056" [label=""];
  "sha256:d795c1c56bee062e811ccc6ff1151141af8224709a779db6ff6666a969799056" -> "sha256:ff76ea19b7a2860769c0a940b5e9299e4ffc560adae7e5bbfa17523f9b8784a9" [label=""];
  "sha256:ff76ea19b7a2860769c0a940b5e9299e4ffc560adae7e5bbfa17523f9b8784a9" -> "sha256:60366350e44002125b333ea9c87140fc11000da63311ad250d41051895706457" [label=""];
  "sha256:60366350e44002125b333ea9c87140fc11000da63311ad250d41051895706457" -> "sha256:6e3e13bb26e75b51b736f58aef2c32e064954ce0f7fa6f27453f8ba8cff0472c" [label=""];
  "sha256:6e3e13bb26e75b51b736f58aef2c32e064954ce0f7fa6f27453f8ba8cff0472c" -> "sha256:68217f39694cb213c9a0b2ae409f928b124b872d463c57c29cc4985be943c655" [label=""];
}

