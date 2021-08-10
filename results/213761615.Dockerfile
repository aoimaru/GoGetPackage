[app/sources/213761615.Dockerfile]
digraph {
  "sha256:61c8a48af2730b942d76f1c15b37dd6847663c5bbadbe125e89de1963cc52ce8" [label="http://www.scala-lang.org/files/archive/scala-2.11.8.tgz" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:55ba1611a0714c5b2f5d4883db53846d7586d0f42250d1a942185257e3d23364" [label="/bin/sh -c apt-get update &&     apt-get install -y less openjdk-8-jre-headless iproute2 vim-tiny sudo openssh-server &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2eeefe4c2abe850d4cfc28c5e2fbfa4b59999601ad58ac091b2ee527939942f7" [label="copy{src=/scala-2.11.8.tgz, dest=/}" shape="note"];
  "sha256:74257857c2d66233e4aca59f32f680b176036bb6b6f094ad495323d496dcc822" [label="/bin/sh -c (cd / && gunzip < scala-$SCALA_VERSION.tgz)|(cd /opt && tar -xvf -)" shape="box"];
  "sha256:96a7266188a8e4fbe501a0a3c378507aa6c054ce0c3f899ee2a9d6b1a9a7a9ba" [label="/bin/sh -c rm /scala-$SCALA_VERSION.tgz" shape="box"];
  "sha256:c71a546802673eb7d6cc23e92be4bd8bde707106c810ab4ddba9aa4436ef7da1" [label="sha256:c71a546802673eb7d6cc23e92be4bd8bde707106c810ab4ddba9aa4436ef7da1" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:55ba1611a0714c5b2f5d4883db53846d7586d0f42250d1a942185257e3d23364" [label=""];
  "sha256:55ba1611a0714c5b2f5d4883db53846d7586d0f42250d1a942185257e3d23364" -> "sha256:2eeefe4c2abe850d4cfc28c5e2fbfa4b59999601ad58ac091b2ee527939942f7" [label=""];
  "sha256:61c8a48af2730b942d76f1c15b37dd6847663c5bbadbe125e89de1963cc52ce8" -> "sha256:2eeefe4c2abe850d4cfc28c5e2fbfa4b59999601ad58ac091b2ee527939942f7" [label=""];
  "sha256:2eeefe4c2abe850d4cfc28c5e2fbfa4b59999601ad58ac091b2ee527939942f7" -> "sha256:74257857c2d66233e4aca59f32f680b176036bb6b6f094ad495323d496dcc822" [label=""];
  "sha256:74257857c2d66233e4aca59f32f680b176036bb6b6f094ad495323d496dcc822" -> "sha256:96a7266188a8e4fbe501a0a3c378507aa6c054ce0c3f899ee2a9d6b1a9a7a9ba" [label=""];
  "sha256:96a7266188a8e4fbe501a0a3c378507aa6c054ce0c3f899ee2a9d6b1a9a7a9ba" -> "sha256:c71a546802673eb7d6cc23e92be4bd8bde707106c810ab4ddba9aa4436ef7da1" [label=""];
}

