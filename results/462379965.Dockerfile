[app/sources/462379965.Dockerfile]
digraph {
  "sha256:2de73f10f0409b3d299b825a0606e0e999b8ba9e8e682c215585b08179d33e8e" [label="docker-image://registry.svc.ci.openshift.org/origin/4.1:base" shape="ellipse"];
  "sha256:e439d068e7ae229c0608bccfcaaa66445da768843727599c0f760fee084e1739" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.11" shape="ellipse"];
  "sha256:af3bc39af8e57ecac97f799e75174bb92283a4948bb71feb19a6d92378418648" [label="mkdir{path=/go/src/github.com/ovirt/ovirt-openshift-extensions}" shape="note"];
  "sha256:e9f5724df357f996ed0930dcc82c4f77d6b3c99c60eeb31d24798124e437682d" [label="local://context" shape="ellipse"];
  "sha256:50849406ef7143ec0208324d6cf4362f646061e761976e55b347edb18a2faae8" [label="copy{src=/ovirt-openshift-extensions--.tar.gz, dest=/go/src/github.com/ovirt/ovirt-openshift-extensions/}" shape="note"];
  "sha256:6d3618d99c81b2f2173b32a524c50401f5b531fad1f60733128bb2a3e2777bfe" [label="/bin/sh -c make ovirt-cloud-provider" shape="box"];
  "sha256:93d89cd4b6aa918994c9bf210ab11c0af6f41c693a387ca1910b62b31c534e8e" [label="copy{src=/go/src/github.com/ovirt/ovirt-openshift-extensions/ovirt-cloud-provider, dest=/usr/bin/}" shape="note"];
  "sha256:a6ba794bb4ddc23bdbf39eb89b91f877334dd7dc1634fe4a5880b623c8776bb2" [label="sha256:a6ba794bb4ddc23bdbf39eb89b91f877334dd7dc1634fe4a5880b623c8776bb2" shape="plaintext"];
  "sha256:e439d068e7ae229c0608bccfcaaa66445da768843727599c0f760fee084e1739" -> "sha256:af3bc39af8e57ecac97f799e75174bb92283a4948bb71feb19a6d92378418648" [label=""];
  "sha256:af3bc39af8e57ecac97f799e75174bb92283a4948bb71feb19a6d92378418648" -> "sha256:50849406ef7143ec0208324d6cf4362f646061e761976e55b347edb18a2faae8" [label=""];
  "sha256:e9f5724df357f996ed0930dcc82c4f77d6b3c99c60eeb31d24798124e437682d" -> "sha256:50849406ef7143ec0208324d6cf4362f646061e761976e55b347edb18a2faae8" [label=""];
  "sha256:50849406ef7143ec0208324d6cf4362f646061e761976e55b347edb18a2faae8" -> "sha256:6d3618d99c81b2f2173b32a524c50401f5b531fad1f60733128bb2a3e2777bfe" [label=""];
  "sha256:2de73f10f0409b3d299b825a0606e0e999b8ba9e8e682c215585b08179d33e8e" -> "sha256:93d89cd4b6aa918994c9bf210ab11c0af6f41c693a387ca1910b62b31c534e8e" [label=""];
  "sha256:6d3618d99c81b2f2173b32a524c50401f5b531fad1f60733128bb2a3e2777bfe" -> "sha256:93d89cd4b6aa918994c9bf210ab11c0af6f41c693a387ca1910b62b31c534e8e" [label=""];
  "sha256:93d89cd4b6aa918994c9bf210ab11c0af6f41c693a387ca1910b62b31c534e8e" -> "sha256:a6ba794bb4ddc23bdbf39eb89b91f877334dd7dc1634fe4a5880b623c8776bb2" [label=""];
}

