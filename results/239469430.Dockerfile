[app/sources/239469430.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:293ce2551723b8969531dfc1dd5968075012a3e90bd9739330fed655ee3cc259" [label="local://context" shape="ellipse"];
  "sha256:44a1b27d8f5792aa5c07bc3eb88921ae5b10e9be9d1ffb5fd8e3740d914573d8" [label="copy{src=/shared/tools, dest=/tmp/tools/},copy{src=/istio/install.sh, dest=/tmp/tools/}" shape="note"];
  "sha256:7afdf977a3a110d5a50f104982ffafb1f04e6c4ed39c2f7e559aa1d887b827b4" [label="/bin/sh -c chmod -R +x /tmp/tools/*.sh" shape="box"];
  "sha256:3f1dc89eaf5603ade0e4e2cc17761649322fec913d875b7581a7fd2b5511b1c9" [label="/bin/sh -c cd /tmp/tools && ./install.sh && rm -rf /tmp/tools" shape="box"];
  "sha256:de8665c84f20cab224a9930952d9e224c07db5713de923a703173366f98a68d9" [label="docker-image://docker.io/koalaman/shellcheck-alpine:v0.6.0" shape="ellipse"];
  "sha256:2e3d9bff6338227aa16564b543f161509c2e1fe789f02de0a5ee764eaa31d7d1" [label="copy{src=/bin/shellcheck, dest=/bin/shellcheck}" shape="note"];
  "sha256:97927e765314264239ffdc71ad99c5b10783fb67e2f0a7b17bab69ca9bf527a4" [label="copy{src=/shared/prow-runner.sh, dest=/usr/local/bin/entrypoint}" shape="note"];
  "sha256:1c0692427373a1f51a7ed8fbfec7d59a973334a82d14c18e3cd813c9230edb73" [label="/bin/sh -c chmod +rx /usr/local/bin/entrypoint" shape="box"];
  "sha256:c57d4a993ab6bb594588cea9b4e9da32b15639f26b97f8c3e36f863ef0788662" [label="sha256:c57d4a993ab6bb594588cea9b4e9da32b15639f26b97f8c3e36f863ef0788662" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:44a1b27d8f5792aa5c07bc3eb88921ae5b10e9be9d1ffb5fd8e3740d914573d8" [label=""];
  "sha256:293ce2551723b8969531dfc1dd5968075012a3e90bd9739330fed655ee3cc259" -> "sha256:44a1b27d8f5792aa5c07bc3eb88921ae5b10e9be9d1ffb5fd8e3740d914573d8" [label=""];
  "sha256:44a1b27d8f5792aa5c07bc3eb88921ae5b10e9be9d1ffb5fd8e3740d914573d8" -> "sha256:7afdf977a3a110d5a50f104982ffafb1f04e6c4ed39c2f7e559aa1d887b827b4" [label=""];
  "sha256:7afdf977a3a110d5a50f104982ffafb1f04e6c4ed39c2f7e559aa1d887b827b4" -> "sha256:3f1dc89eaf5603ade0e4e2cc17761649322fec913d875b7581a7fd2b5511b1c9" [label=""];
  "sha256:3f1dc89eaf5603ade0e4e2cc17761649322fec913d875b7581a7fd2b5511b1c9" -> "sha256:2e3d9bff6338227aa16564b543f161509c2e1fe789f02de0a5ee764eaa31d7d1" [label=""];
  "sha256:de8665c84f20cab224a9930952d9e224c07db5713de923a703173366f98a68d9" -> "sha256:2e3d9bff6338227aa16564b543f161509c2e1fe789f02de0a5ee764eaa31d7d1" [label=""];
  "sha256:2e3d9bff6338227aa16564b543f161509c2e1fe789f02de0a5ee764eaa31d7d1" -> "sha256:97927e765314264239ffdc71ad99c5b10783fb67e2f0a7b17bab69ca9bf527a4" [label=""];
  "sha256:293ce2551723b8969531dfc1dd5968075012a3e90bd9739330fed655ee3cc259" -> "sha256:97927e765314264239ffdc71ad99c5b10783fb67e2f0a7b17bab69ca9bf527a4" [label=""];
  "sha256:97927e765314264239ffdc71ad99c5b10783fb67e2f0a7b17bab69ca9bf527a4" -> "sha256:1c0692427373a1f51a7ed8fbfec7d59a973334a82d14c18e3cd813c9230edb73" [label=""];
  "sha256:1c0692427373a1f51a7ed8fbfec7d59a973334a82d14c18e3cd813c9230edb73" -> "sha256:c57d4a993ab6bb594588cea9b4e9da32b15639f26b97f8c3e36f863ef0788662" [label=""];
}

