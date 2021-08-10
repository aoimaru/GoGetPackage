[app/sources/477102390.Dockerfile]
digraph {
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" [label="docker-image://docker.io/rhscl/s2i-core-rhel7:latest" shape="ellipse"];
  "sha256:0840e6e2f7ad35b16d90b0d3f16e02e8a39fe4a23412219d405b39130f2ff0f3" [label="/bin/sh -c yum install -y yum-utils &&     yum-config-manager --disable \\* &> /dev/null &&     yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     INSTALL_PKGS=\"devtoolset-4-gcc devtoolset-4-gcc-c++ devtoolset-4-gcc-gfortran devtoolset-4-gdb\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all -y" shape="box"];
  "sha256:ffca6d32c391d5181d8e098f7bcced47014c133080de52f35bb6b88bcecd0965" [label="local://context" shape="ellipse"];
  "sha256:5d709e0f0e92d4e698292a690321805b5f7ed92a61e7c44e857cea7c3a7c86d0" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:c618ba35d2968551452d0fc37436e48c73eca3945fe5d5a75d495f259884bd16" [label="/bin/sh -c mkdir -p ${HOME} &&     groupadd -r default -f -g 1001 &&     usermod -g default default &&     chown -R 1001:1001 /opt/app-root /usr/bin/container-entrypoint /usr/bin/usage &&     chmod u+x /usr/bin/usage &&     rpm-file-permissions" shape="box"];
  "sha256:0336ff364f2cea31160d4b8bd07fea22c63faa80fb052d96a0c0a16aebdbf085" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:23a2316963d5d39e3dc0d27fa35376a846564d2409bb81e06ed4534ddcfd4a57" [label="sha256:23a2316963d5d39e3dc0d27fa35376a846564d2409bb81e06ed4534ddcfd4a57" shape="plaintext"];
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" -> "sha256:0840e6e2f7ad35b16d90b0d3f16e02e8a39fe4a23412219d405b39130f2ff0f3" [label=""];
  "sha256:0840e6e2f7ad35b16d90b0d3f16e02e8a39fe4a23412219d405b39130f2ff0f3" -> "sha256:5d709e0f0e92d4e698292a690321805b5f7ed92a61e7c44e857cea7c3a7c86d0" [label=""];
  "sha256:ffca6d32c391d5181d8e098f7bcced47014c133080de52f35bb6b88bcecd0965" -> "sha256:5d709e0f0e92d4e698292a690321805b5f7ed92a61e7c44e857cea7c3a7c86d0" [label=""];
  "sha256:5d709e0f0e92d4e698292a690321805b5f7ed92a61e7c44e857cea7c3a7c86d0" -> "sha256:c618ba35d2968551452d0fc37436e48c73eca3945fe5d5a75d495f259884bd16" [label=""];
  "sha256:c618ba35d2968551452d0fc37436e48c73eca3945fe5d5a75d495f259884bd16" -> "sha256:0336ff364f2cea31160d4b8bd07fea22c63faa80fb052d96a0c0a16aebdbf085" [label=""];
  "sha256:0336ff364f2cea31160d4b8bd07fea22c63faa80fb052d96a0c0a16aebdbf085" -> "sha256:23a2316963d5d39e3dc0d27fa35376a846564d2409bb81e06ed4534ddcfd4a57" [label=""];
}

