[app/sources/184625479.Dockerfile]
digraph {
  "sha256:89ec8bd80aa0ede011bd9e3f79395bf27260209824fa4f7cdfda29828bb819fe" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label="mkdir{path=/root}" shape="note"];
  "sha256:3411fd5e696db04bcb7cd89518288ea560016084ff586c9c6dfe31e0eabd7811" [label="copy{src=/VMware-vSphereSDK-6.5.0-4571253.zip, dest=/tmp/},copy{src=/VMware-vSphere-Automation-SDK-Java-6.5.0-4571808.zip, dest=/tmp/},copy{src=/vsan-sdk-65-java-4602587.zip, dest=/tmp/},copy{src=/vmware-utils-install.sh, dest=/tmp/}" shape="note"];
  "sha256:ef9f999e9abcda7d437ce837d5dc6c42f90c1c53d46073fc840b6f077153f021" [label="/bin/sh -c /tmp/$VMWARE_UTILS_INSTALLER" shape="box"];
  "sha256:a3737b0859d2c8342291183390608ed603e3cd031035cb047da913f6205bd847" [label="sha256:a3737b0859d2c8342291183390608ed603e3cd031035cb047da913f6205bd847" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label=""];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" -> "sha256:3411fd5e696db04bcb7cd89518288ea560016084ff586c9c6dfe31e0eabd7811" [label=""];
  "sha256:89ec8bd80aa0ede011bd9e3f79395bf27260209824fa4f7cdfda29828bb819fe" -> "sha256:3411fd5e696db04bcb7cd89518288ea560016084ff586c9c6dfe31e0eabd7811" [label=""];
  "sha256:3411fd5e696db04bcb7cd89518288ea560016084ff586c9c6dfe31e0eabd7811" -> "sha256:ef9f999e9abcda7d437ce837d5dc6c42f90c1c53d46073fc840b6f077153f021" [label=""];
  "sha256:ef9f999e9abcda7d437ce837d5dc6c42f90c1c53d46073fc840b6f077153f021" -> "sha256:a3737b0859d2c8342291183390608ed603e3cd031035cb047da913f6205bd847" [label=""];
}

