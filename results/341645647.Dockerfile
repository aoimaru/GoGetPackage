[app/sources/341645647.Dockerfile]
digraph {
  "sha256:5d32ef8292a62c6bd8d491edc174d41618cc43eb3c59090948b773d0c9e9ce2b" [label="docker-image://docker.io/openshift/origin-source:latest" shape="ellipse"];
  "sha256:cb64ff1e7a432124f7e306a1114c0d3e33de527ff7127e0016ee2a13740443ae" [label="/bin/sh -c INSTALL_PKGS=\"origin-pod\" &&     yum --enablerepo=origin-local-release install -y ${INSTALL_PKGS} &&     rpm -V ${INSTALL_PKGS} &&     yum clean all" shape="box"];
  "sha256:2d208a19b6519b5889cd8a26fb84567e1935db0d61af6ff6858e6b38581c49f9" [label="sha256:2d208a19b6519b5889cd8a26fb84567e1935db0d61af6ff6858e6b38581c49f9" shape="plaintext"];
  "sha256:5d32ef8292a62c6bd8d491edc174d41618cc43eb3c59090948b773d0c9e9ce2b" -> "sha256:cb64ff1e7a432124f7e306a1114c0d3e33de527ff7127e0016ee2a13740443ae" [label=""];
  "sha256:cb64ff1e7a432124f7e306a1114c0d3e33de527ff7127e0016ee2a13740443ae" -> "sha256:2d208a19b6519b5889cd8a26fb84567e1935db0d61af6ff6858e6b38581c49f9" [label=""];
}

