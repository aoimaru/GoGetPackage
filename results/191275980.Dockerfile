[app/sources/191275980.Dockerfile]
digraph {
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" [label="https://bootstrap.pypa.io/get-pip.py" shape="ellipse"];
  "sha256:cd4212faf54db136b0f795ef547588b33dda492cd17b24cdb1f6156535b5a36f" [label="docker-image://docker.io/library/ubuntu:14.04.2" shape="ellipse"];
  "sha256:5f237d1a179d8e3437d094d6fe8b1cc565f0132e106d2f5be7d1e5c39ed3dcc8" [label="/bin/sh -c apt-get update && apt-get install -y python-minimal busybox" shape="box"];
  "sha256:387ef8af8d27db5bb40c7d7a9cf4ce81709f555f87ee64cc3c21bbe6e9e24b73" [label="copy{src=/get-pip.py, dest=/usr/bin/}" shape="note"];
  "sha256:5966deaf057d574c8f2b83fd889f070d00b05bd4bd2a2fe467672c3d16dd8578" [label="/bin/sh -c python /usr/bin/get-pip.py" shape="box"];
  "sha256:e479ef42a8c5b476f9a8bf65f91dc56d80436182da01aac15138710cf641a5b1" [label="/bin/sh -c pip install docker-py" shape="box"];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" [label="local://context" shape="ellipse"];
  "sha256:3a904d229278a1eb3f83d08b8037d3af564db21ff659452c8205c5e22912858a" [label="copy{src=/self.pem, dest=/var/lib/rancher/}" shape="note"];
  "sha256:5709f8c795db6deae89fc17f1078dda1b8cc37e8ff3f51b0582c26d565171194" [label="copy{src=/noVNC-0.0.2.tar.gz, dest=/var/lib/rancher/}" shape="note"];
  "sha256:3586edd562f9112224391420d33ad120b9e51c45503a5411cc3f97930f5f6fb0" [label="copy{src=/css/rancherVM.css, dest=/var/lib/rancher/noVNC-0.0.2/css/}" shape="note"];
  "sha256:c5ec8a0ce6085ddd8eb91ed980dc64b41717934c7e17fd07aabff2fdfe66f79c" [label="copy{src=/ranchervm_logo.png, dest=/var/lib/rancher/noVNC-0.0.2/images/}" shape="note"];
  "sha256:c5aa4a28e5fe0c2bc76fa28ca63316b2d570a9a04fb3b6f27cf11df3850c8ff9" [label="copy{src=/index.html, dest=/var/lib/rancher/noVNC-0.0.2/}" shape="note"];
  "sha256:2d3bfa37b1e11293bf0badc4cfe4f420336c1004c8d397339161fdd1799db09b" [label="copy{src=/ranchervm, dest=/var/lib/rancher/noVNC-0.0.2/cgi-bin/}" shape="note"];
  "sha256:2806c382bc5dc1281ffadf12a9d302a4f4c6a7796d84116d88ddc5eec6a173e5" [label="copy{src=/startmgmt, dest=/var/lib/rancher/}" shape="note"];
  "sha256:57933cbb9c0bd6807d8b32023462cf558ab03848a7b8a16c924faf040c716a5f" [label="sha256:57933cbb9c0bd6807d8b32023462cf558ab03848a7b8a16c924faf040c716a5f" shape="plaintext"];
  "sha256:cd4212faf54db136b0f795ef547588b33dda492cd17b24cdb1f6156535b5a36f" -> "sha256:5f237d1a179d8e3437d094d6fe8b1cc565f0132e106d2f5be7d1e5c39ed3dcc8" [label=""];
  "sha256:5f237d1a179d8e3437d094d6fe8b1cc565f0132e106d2f5be7d1e5c39ed3dcc8" -> "sha256:387ef8af8d27db5bb40c7d7a9cf4ce81709f555f87ee64cc3c21bbe6e9e24b73" [label=""];
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" -> "sha256:387ef8af8d27db5bb40c7d7a9cf4ce81709f555f87ee64cc3c21bbe6e9e24b73" [label=""];
  "sha256:387ef8af8d27db5bb40c7d7a9cf4ce81709f555f87ee64cc3c21bbe6e9e24b73" -> "sha256:5966deaf057d574c8f2b83fd889f070d00b05bd4bd2a2fe467672c3d16dd8578" [label=""];
  "sha256:5966deaf057d574c8f2b83fd889f070d00b05bd4bd2a2fe467672c3d16dd8578" -> "sha256:e479ef42a8c5b476f9a8bf65f91dc56d80436182da01aac15138710cf641a5b1" [label=""];
  "sha256:e479ef42a8c5b476f9a8bf65f91dc56d80436182da01aac15138710cf641a5b1" -> "sha256:3a904d229278a1eb3f83d08b8037d3af564db21ff659452c8205c5e22912858a" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:3a904d229278a1eb3f83d08b8037d3af564db21ff659452c8205c5e22912858a" [label=""];
  "sha256:3a904d229278a1eb3f83d08b8037d3af564db21ff659452c8205c5e22912858a" -> "sha256:5709f8c795db6deae89fc17f1078dda1b8cc37e8ff3f51b0582c26d565171194" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:5709f8c795db6deae89fc17f1078dda1b8cc37e8ff3f51b0582c26d565171194" [label=""];
  "sha256:5709f8c795db6deae89fc17f1078dda1b8cc37e8ff3f51b0582c26d565171194" -> "sha256:3586edd562f9112224391420d33ad120b9e51c45503a5411cc3f97930f5f6fb0" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:3586edd562f9112224391420d33ad120b9e51c45503a5411cc3f97930f5f6fb0" [label=""];
  "sha256:3586edd562f9112224391420d33ad120b9e51c45503a5411cc3f97930f5f6fb0" -> "sha256:c5ec8a0ce6085ddd8eb91ed980dc64b41717934c7e17fd07aabff2fdfe66f79c" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:c5ec8a0ce6085ddd8eb91ed980dc64b41717934c7e17fd07aabff2fdfe66f79c" [label=""];
  "sha256:c5ec8a0ce6085ddd8eb91ed980dc64b41717934c7e17fd07aabff2fdfe66f79c" -> "sha256:c5aa4a28e5fe0c2bc76fa28ca63316b2d570a9a04fb3b6f27cf11df3850c8ff9" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:c5aa4a28e5fe0c2bc76fa28ca63316b2d570a9a04fb3b6f27cf11df3850c8ff9" [label=""];
  "sha256:c5aa4a28e5fe0c2bc76fa28ca63316b2d570a9a04fb3b6f27cf11df3850c8ff9" -> "sha256:2d3bfa37b1e11293bf0badc4cfe4f420336c1004c8d397339161fdd1799db09b" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:2d3bfa37b1e11293bf0badc4cfe4f420336c1004c8d397339161fdd1799db09b" [label=""];
  "sha256:2d3bfa37b1e11293bf0badc4cfe4f420336c1004c8d397339161fdd1799db09b" -> "sha256:2806c382bc5dc1281ffadf12a9d302a4f4c6a7796d84116d88ddc5eec6a173e5" [label=""];
  "sha256:8eab312a3d0ebd0acd57c1d8f49ade520c435d1d07d99047e295d43079039b51" -> "sha256:2806c382bc5dc1281ffadf12a9d302a4f4c6a7796d84116d88ddc5eec6a173e5" [label=""];
  "sha256:2806c382bc5dc1281ffadf12a9d302a4f4c6a7796d84116d88ddc5eec6a173e5" -> "sha256:57933cbb9c0bd6807d8b32023462cf558ab03848a7b8a16c924faf040c716a5f" [label=""];
}

