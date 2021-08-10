[app/sources/322779770.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:976ea6af31a8acb64d36980e94d8023fd3ca095d7a95e1f6df059da7590dc453" [label="local://context" shape="ellipse"];
  "sha256:2ac3ff07e0e85852683844913cff25f26e7c4d68c8670e7fc4a1a0418a28bcf8" [label="copy{src=/, dest=/go/src/github.com/xmudrii/etcdproxy-controller}" shape="note"];
  "sha256:e2c4f64d29b309a01432f5be53bcb4930d8192a66b40e97a0ae3cd249789bd7e" [label="mkdir{path=/go/src/github.com/xmudrii/etcdproxy-controller}" shape="note"];
  "sha256:b023c82396f4d7f8a0297558a086668b19d380f09fd0275ecb684afaa4c1f514" [label="/bin/sh -c make compile" shape="box"];
  "sha256:5e8c8522fa472a3e00b3a0779fdb102c999a583b68f17af3ff9d3e1b5e361560" [label="copy{src=/go/src/github.com/xmudrii/etcdproxy-controller/bin/etcdproxy-controller, dest=/}" shape="note"];
  "sha256:c0aadd544b1e3d8e4cd344d5aec62352de842b9c6555c37669a2ff821417a9c7" [label="sha256:c0aadd544b1e3d8e4cd344d5aec62352de842b9c6555c37669a2ff821417a9c7" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label=""];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:2ac3ff07e0e85852683844913cff25f26e7c4d68c8670e7fc4a1a0418a28bcf8" [label=""];
  "sha256:976ea6af31a8acb64d36980e94d8023fd3ca095d7a95e1f6df059da7590dc453" -> "sha256:2ac3ff07e0e85852683844913cff25f26e7c4d68c8670e7fc4a1a0418a28bcf8" [label=""];
  "sha256:2ac3ff07e0e85852683844913cff25f26e7c4d68c8670e7fc4a1a0418a28bcf8" -> "sha256:e2c4f64d29b309a01432f5be53bcb4930d8192a66b40e97a0ae3cd249789bd7e" [label=""];
  "sha256:e2c4f64d29b309a01432f5be53bcb4930d8192a66b40e97a0ae3cd249789bd7e" -> "sha256:b023c82396f4d7f8a0297558a086668b19d380f09fd0275ecb684afaa4c1f514" [label=""];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" -> "sha256:5e8c8522fa472a3e00b3a0779fdb102c999a583b68f17af3ff9d3e1b5e361560" [label=""];
  "sha256:b023c82396f4d7f8a0297558a086668b19d380f09fd0275ecb684afaa4c1f514" -> "sha256:5e8c8522fa472a3e00b3a0779fdb102c999a583b68f17af3ff9d3e1b5e361560" [label=""];
  "sha256:5e8c8522fa472a3e00b3a0779fdb102c999a583b68f17af3ff9d3e1b5e361560" -> "sha256:c0aadd544b1e3d8e4cd344d5aec62352de842b9c6555c37669a2ff821417a9c7" [label=""];
}

