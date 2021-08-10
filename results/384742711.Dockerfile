[app/sources/384742711.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:75446fe3280b65e6ea20853bc4f4454d880ad9ddaf2e84534871a3afbc18d6a4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   libssl-dev   pkg-config" shape="box"];
  "sha256:ba9277576a7661bcc979968711000435318329339b2997aaa4e1dc33cf09909f" [label="local://context" shape="ellipse"];
  "sha256:e05aa76d7f6da94919f474c9c7b8e266f5af733fe9a4b2822782bd90765ecce8" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:3afb5de7ea004b11f41db20e1faa913fa647e7a64e3357dc6fa1296bdb96f608" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:5d33ea1acba918836a328bb1006a72052da9dae8fc09b5b66c6a6f89e7b7cfb5" [label="sha256:5d33ea1acba918836a328bb1006a72052da9dae8fc09b5b66c6a6f89e7b7cfb5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:75446fe3280b65e6ea20853bc4f4454d880ad9ddaf2e84534871a3afbc18d6a4" [label=""];
  "sha256:75446fe3280b65e6ea20853bc4f4454d880ad9ddaf2e84534871a3afbc18d6a4" -> "sha256:e05aa76d7f6da94919f474c9c7b8e266f5af733fe9a4b2822782bd90765ecce8" [label=""];
  "sha256:ba9277576a7661bcc979968711000435318329339b2997aaa4e1dc33cf09909f" -> "sha256:e05aa76d7f6da94919f474c9c7b8e266f5af733fe9a4b2822782bd90765ecce8" [label=""];
  "sha256:e05aa76d7f6da94919f474c9c7b8e266f5af733fe9a4b2822782bd90765ecce8" -> "sha256:3afb5de7ea004b11f41db20e1faa913fa647e7a64e3357dc6fa1296bdb96f608" [label=""];
  "sha256:3afb5de7ea004b11f41db20e1faa913fa647e7a64e3357dc6fa1296bdb96f608" -> "sha256:5d33ea1acba918836a328bb1006a72052da9dae8fc09b5b66c6a6f89e7b7cfb5" [label=""];
}

