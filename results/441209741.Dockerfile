[app/sources/441209741.Dockerfile]
digraph {
  "sha256:bdf098ab3bb6665a5f108a8f5cc8ef10a4b20bf9df91787f661f1fbee62ba4b1" [label="docker-image://docker.io/openfalcon/makegcc-golang:1.10-alpine" shape="ellipse"];
  "sha256:c7ea561ae816da88565d55a188e4f1c041eaf63e763a43cb45a861675227a371" [label="/bin/sh -c mkdir -p $FALCON_DIR &&     mkdir -p $FALCON_DIR/logs &&     apk add --no-cache ca-certificates bash git supervisor" shape="box"];
  "sha256:daf9a1cc7e186ad29138c10f3d579f79738c3ea199b8c591f15fab9ead35da68" [label="local://context" shape="ellipse"];
  "sha256:c063e6a9ab1265e33fce4d1872c7f11d5baf223552017844cc04a13f733a027a" [label="copy{src=/, dest=/src/github.com/open-falcon/falcon-plus}" shape="note"];
  "sha256:84954c41abca26bf6a92480cb155a610eb9ae52322b5bf89848e8a6c5c4fd7f8" [label="mkdir{path=/src/github.com/open-falcon/falcon-plus}" shape="note"];
  "sha256:2fd363f1a7f9565eb41da148e06666e6ecdaecec6523afa8b972cd7bfcb232a8" [label="copy{src=/docker/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:002387b337475aa73f2cddcc01f11cde8b15cf18bca5c7594ef10e2f542b7701" [label="/bin/sh -c make all     && make pack4docker     && tar -zxf open-falcon-v*.tar.gz -C ${FALCON_DIR}     && rm -rf ${PROJ_PATH}" shape="box"];
  "sha256:910427ea6fee5d8b4da3d5b1a0f06a00d3e3b5f6820fcaa37600289165946e86" [label="mkdir{path=/open-falcon}" shape="note"];
  "sha256:d4f56cefc063a5661f3b02f5223959776b0114dc5c279d2f50e1394f0f1811d6" [label="sha256:d4f56cefc063a5661f3b02f5223959776b0114dc5c279d2f50e1394f0f1811d6" shape="plaintext"];
  "sha256:bdf098ab3bb6665a5f108a8f5cc8ef10a4b20bf9df91787f661f1fbee62ba4b1" -> "sha256:c7ea561ae816da88565d55a188e4f1c041eaf63e763a43cb45a861675227a371" [label=""];
  "sha256:c7ea561ae816da88565d55a188e4f1c041eaf63e763a43cb45a861675227a371" -> "sha256:c063e6a9ab1265e33fce4d1872c7f11d5baf223552017844cc04a13f733a027a" [label=""];
  "sha256:daf9a1cc7e186ad29138c10f3d579f79738c3ea199b8c591f15fab9ead35da68" -> "sha256:c063e6a9ab1265e33fce4d1872c7f11d5baf223552017844cc04a13f733a027a" [label=""];
  "sha256:c063e6a9ab1265e33fce4d1872c7f11d5baf223552017844cc04a13f733a027a" -> "sha256:84954c41abca26bf6a92480cb155a610eb9ae52322b5bf89848e8a6c5c4fd7f8" [label=""];
  "sha256:84954c41abca26bf6a92480cb155a610eb9ae52322b5bf89848e8a6c5c4fd7f8" -> "sha256:2fd363f1a7f9565eb41da148e06666e6ecdaecec6523afa8b972cd7bfcb232a8" [label=""];
  "sha256:daf9a1cc7e186ad29138c10f3d579f79738c3ea199b8c591f15fab9ead35da68" -> "sha256:2fd363f1a7f9565eb41da148e06666e6ecdaecec6523afa8b972cd7bfcb232a8" [label=""];
  "sha256:2fd363f1a7f9565eb41da148e06666e6ecdaecec6523afa8b972cd7bfcb232a8" -> "sha256:002387b337475aa73f2cddcc01f11cde8b15cf18bca5c7594ef10e2f542b7701" [label=""];
  "sha256:002387b337475aa73f2cddcc01f11cde8b15cf18bca5c7594ef10e2f542b7701" -> "sha256:910427ea6fee5d8b4da3d5b1a0f06a00d3e3b5f6820fcaa37600289165946e86" [label=""];
  "sha256:910427ea6fee5d8b4da3d5b1a0f06a00d3e3b5f6820fcaa37600289165946e86" -> "sha256:d4f56cefc063a5661f3b02f5223959776b0114dc5c279d2f50e1394f0f1811d6" [label=""];
}

