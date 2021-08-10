[app/sources/477102411.Dockerfile]
digraph {
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" [label="docker-image://docker.io/rhscl/s2i-core-rhel7:latest" shape="ellipse"];
  "sha256:3c1d1d0e9c412cd4b6f6eeed36fdef8d1ae2a553654d0d69b37706b0d53a45bf" [label="/bin/sh -c yum install -y yum-utils &&     yum-config-manager --disable \\* &> /dev/null &&     yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     INSTALL_PKGS=\"devtoolset-6-gcc devtoolset-6-gcc-c++ devtoolset-6-gcc-gfortran devtoolset-6-gdb\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all -y" shape="box"];
  "sha256:316e08884e4cacb7bca2d1296a57ba4a8a5a431ac8fd91ca6cf6afd414e353c2" [label="local://context" shape="ellipse"];
  "sha256:40338090354f5fcbcc1659da50b0acc7a345691b35c495464673c175b2689f9f" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:e0a3085b2d6568578aabbaeced96f92a89ec22dcba06a85011fbdd8a8d6484cb" [label="/bin/sh -c mkdir -p ${HOME} &&     groupadd -r default -f -g 1001 &&     usermod -g default default &&     chown -R 1001:1001 /opt/app-root /usr/bin/container-entrypoint /usr/bin/usage &&     chmod u+x /usr/bin/usage &&     rpm-file-permissions" shape="box"];
  "sha256:3b2d431af633702d815d8233097754fd283457fbc6547ea8ccda885ea00b9bc0" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:ba61e78a3aa29e125ae4f4c243995168ba8f0ce0332c5ab7fed1473908535144" [label="sha256:ba61e78a3aa29e125ae4f4c243995168ba8f0ce0332c5ab7fed1473908535144" shape="plaintext"];
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" -> "sha256:3c1d1d0e9c412cd4b6f6eeed36fdef8d1ae2a553654d0d69b37706b0d53a45bf" [label=""];
  "sha256:3c1d1d0e9c412cd4b6f6eeed36fdef8d1ae2a553654d0d69b37706b0d53a45bf" -> "sha256:40338090354f5fcbcc1659da50b0acc7a345691b35c495464673c175b2689f9f" [label=""];
  "sha256:316e08884e4cacb7bca2d1296a57ba4a8a5a431ac8fd91ca6cf6afd414e353c2" -> "sha256:40338090354f5fcbcc1659da50b0acc7a345691b35c495464673c175b2689f9f" [label=""];
  "sha256:40338090354f5fcbcc1659da50b0acc7a345691b35c495464673c175b2689f9f" -> "sha256:e0a3085b2d6568578aabbaeced96f92a89ec22dcba06a85011fbdd8a8d6484cb" [label=""];
  "sha256:e0a3085b2d6568578aabbaeced96f92a89ec22dcba06a85011fbdd8a8d6484cb" -> "sha256:3b2d431af633702d815d8233097754fd283457fbc6547ea8ccda885ea00b9bc0" [label=""];
  "sha256:3b2d431af633702d815d8233097754fd283457fbc6547ea8ccda885ea00b9bc0" -> "sha256:ba61e78a3aa29e125ae4f4c243995168ba8f0ce0332c5ab7fed1473908535144" [label=""];
}

