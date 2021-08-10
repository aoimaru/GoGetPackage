[app/sources/236318771.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label="/bin/sh -c yum install -y iscsi-initiator-utils targetcli net-tools strace && yum clean all" shape="box"];
  "sha256:d57084262d28e66024f5c477a3cf3563479f64ca4563940293e9f236acaec16a" [label="local://context" shape="ellipse"];
  "sha256:7089013481dff9eca365ba983ffcec6148fb2e78465c9f5727c2fd5eded5d51b" [label="copy{src=/run_iscsid.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:c0bfbd358b07cbb1ff55b74fe0545b47eed3df50509f9e5a20ec618324e8e5c8" [label="copy{src=/initiatorname.iscsi, dest=/etc/iscsi/}" shape="note"];
  "sha256:392c6046ec495637fc34261ac85f4c6d01d1e225c1ba5faf09315bfbf28b430d" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:52a2b46341530a0a1ec62b34ee6f3c22d8f973cdd1bd1af324e8e6b400f7fc78" [label="copy{src=/saveconfig.json, dest=/etc/target/}" shape="note"];
  "sha256:2bdab26d258e3e2be9f5e7b66bc767d12f260cdc471c9e06d90b3e8f2ea45f6d" [label="sha256:2bdab26d258e3e2be9f5e7b66bc767d12f260cdc471c9e06d90b3e8f2ea45f6d" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label=""];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" -> "sha256:7089013481dff9eca365ba983ffcec6148fb2e78465c9f5727c2fd5eded5d51b" [label=""];
  "sha256:d57084262d28e66024f5c477a3cf3563479f64ca4563940293e9f236acaec16a" -> "sha256:7089013481dff9eca365ba983ffcec6148fb2e78465c9f5727c2fd5eded5d51b" [label=""];
  "sha256:7089013481dff9eca365ba983ffcec6148fb2e78465c9f5727c2fd5eded5d51b" -> "sha256:c0bfbd358b07cbb1ff55b74fe0545b47eed3df50509f9e5a20ec618324e8e5c8" [label=""];
  "sha256:d57084262d28e66024f5c477a3cf3563479f64ca4563940293e9f236acaec16a" -> "sha256:c0bfbd358b07cbb1ff55b74fe0545b47eed3df50509f9e5a20ec618324e8e5c8" [label=""];
  "sha256:c0bfbd358b07cbb1ff55b74fe0545b47eed3df50509f9e5a20ec618324e8e5c8" -> "sha256:392c6046ec495637fc34261ac85f4c6d01d1e225c1ba5faf09315bfbf28b430d" [label=""];
  "sha256:d57084262d28e66024f5c477a3cf3563479f64ca4563940293e9f236acaec16a" -> "sha256:392c6046ec495637fc34261ac85f4c6d01d1e225c1ba5faf09315bfbf28b430d" [label=""];
  "sha256:392c6046ec495637fc34261ac85f4c6d01d1e225c1ba5faf09315bfbf28b430d" -> "sha256:52a2b46341530a0a1ec62b34ee6f3c22d8f973cdd1bd1af324e8e6b400f7fc78" [label=""];
  "sha256:d57084262d28e66024f5c477a3cf3563479f64ca4563940293e9f236acaec16a" -> "sha256:52a2b46341530a0a1ec62b34ee6f3c22d8f973cdd1bd1af324e8e6b400f7fc78" [label=""];
  "sha256:52a2b46341530a0a1ec62b34ee6f3c22d8f973cdd1bd1af324e8e6b400f7fc78" -> "sha256:2bdab26d258e3e2be9f5e7b66bc767d12f260cdc471c9e06d90b3e8f2ea45f6d" [label=""];
}

