[app/sources/464291663.Dockerfile]
digraph {
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" [label="docker-image://docker.io/openshift/origin-base:latest" shape="ellipse"];
  "sha256:56a95b384dcd6a8aedce3d22e491512046f1b6f7fdff2b0c75fdb75c261c8440" [label="docker-image://quay.io/coreos/tectonic-console-builder:v16@sha256:1d0746887b5c9da1791bc82652fe21ef9d00623847a6565b73c7b06cb0446ddc" shape="ellipse"];
  "sha256:4dcb15ef64ce4f75fb6980d94a16c1854c4267c22718c21ff5308b185dd686f6" [label="/bin/sh -c mkdir -p /go/src/github.com/openshift/console/" shape="box"];
  "sha256:ba409d1cda3eacb3e2574ba1e23f42d83dabb9be7053c9bc603a46ad3d3814cb" [label="local://context" shape="ellipse"];
  "sha256:022c162b5ff7674ae105fbfec9daa9ba49771dc0c64ad6510b93d500059803d7" [label="copy{src=/, dest=/go/src/github.com/openshift/console/}" shape="note"];
  "sha256:c44003aa0533b39cf23940e0260c46a81c82d7410431122ed8927fcbcbbff442" [label="mkdir{path=/go/src/github.com/openshift/console}" shape="note"];
  "sha256:a7f20e19ca77d7d94aaa7591a09ba6c2f6d4827b18d399b16b34edb1a5a179c3" [label="/bin/sh -c ./build.sh" shape="box"];
  "sha256:a29864c8bfa1c95e6908d2b2366571da24b90455c4a397186a05a7132cd47a18" [label="copy{src=/go/src/github.com/openshift/console/frontend/public/dist, dest=/opt/bridge/static}" shape="note"];
  "sha256:088746269a40f9a8939a4cf4a7806669d815e39ce8cf04022a64ec945141e992" [label="copy{src=/go/src/github.com/openshift/console/bin/bridge, dest=/opt/bridge/bin/bridge}" shape="note"];
  "sha256:29cd7cdd0281f6e923de15822bc8e61ae818d46dc0fa40cbc4fa4f722951ff56" [label="sha256:29cd7cdd0281f6e923de15822bc8e61ae818d46dc0fa40cbc4fa4f722951ff56" shape="plaintext"];
  "sha256:56a95b384dcd6a8aedce3d22e491512046f1b6f7fdff2b0c75fdb75c261c8440" -> "sha256:4dcb15ef64ce4f75fb6980d94a16c1854c4267c22718c21ff5308b185dd686f6" [label=""];
  "sha256:4dcb15ef64ce4f75fb6980d94a16c1854c4267c22718c21ff5308b185dd686f6" -> "sha256:022c162b5ff7674ae105fbfec9daa9ba49771dc0c64ad6510b93d500059803d7" [label=""];
  "sha256:ba409d1cda3eacb3e2574ba1e23f42d83dabb9be7053c9bc603a46ad3d3814cb" -> "sha256:022c162b5ff7674ae105fbfec9daa9ba49771dc0c64ad6510b93d500059803d7" [label=""];
  "sha256:022c162b5ff7674ae105fbfec9daa9ba49771dc0c64ad6510b93d500059803d7" -> "sha256:c44003aa0533b39cf23940e0260c46a81c82d7410431122ed8927fcbcbbff442" [label=""];
  "sha256:c44003aa0533b39cf23940e0260c46a81c82d7410431122ed8927fcbcbbff442" -> "sha256:a7f20e19ca77d7d94aaa7591a09ba6c2f6d4827b18d399b16b34edb1a5a179c3" [label=""];
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" -> "sha256:a29864c8bfa1c95e6908d2b2366571da24b90455c4a397186a05a7132cd47a18" [label=""];
  "sha256:a7f20e19ca77d7d94aaa7591a09ba6c2f6d4827b18d399b16b34edb1a5a179c3" -> "sha256:a29864c8bfa1c95e6908d2b2366571da24b90455c4a397186a05a7132cd47a18" [label=""];
  "sha256:a29864c8bfa1c95e6908d2b2366571da24b90455c4a397186a05a7132cd47a18" -> "sha256:088746269a40f9a8939a4cf4a7806669d815e39ce8cf04022a64ec945141e992" [label=""];
  "sha256:a7f20e19ca77d7d94aaa7591a09ba6c2f6d4827b18d399b16b34edb1a5a179c3" -> "sha256:088746269a40f9a8939a4cf4a7806669d815e39ce8cf04022a64ec945141e992" [label=""];
  "sha256:088746269a40f9a8939a4cf4a7806669d815e39ce8cf04022a64ec945141e992" -> "sha256:29cd7cdd0281f6e923de15822bc8e61ae818d46dc0fa40cbc4fa4f722951ff56" [label=""];
}

