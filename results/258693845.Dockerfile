[app/sources/258693845.Dockerfile]
digraph {
  "sha256:de0516355a6e57750ba7a79f919666112d47ac16a9cc46f7bbfd6bbb1f2c40e5" [label="docker-image://k8s.gcr.io/kube-cross:KUBE_BUILD_IMAGE_CROSS_TAG" shape="ellipse"];
  "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" [label="/bin/sh -c touch /kube-build-image" shape="box"];
  "sha256:9c6cda190ca3baa9de6bf1c62f247eb4a694593358014e353daab0874326cd1c" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:2bd9dc3b06bf4a3a7c634bc4cd82122fc9d2b8293feea08b04e18cc34869d517" [label="/bin/sh -c go get golang.org/x/tools/cmd/goimports" shape="box"];
  "sha256:ee95b6104021d8c4f8b8c474c726894e64fc9a99dd986927791a391f3d881134" [label="sha256:ee95b6104021d8c4f8b8c474c726894e64fc9a99dd986927791a391f3d881134" shape="plaintext"];
  "sha256:de0516355a6e57750ba7a79f919666112d47ac16a9cc46f7bbfd6bbb1f2c40e5" -> "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" [label=""];
  "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" -> "sha256:9c6cda190ca3baa9de6bf1c62f247eb4a694593358014e353daab0874326cd1c" [label=""];
  "sha256:9c6cda190ca3baa9de6bf1c62f247eb4a694593358014e353daab0874326cd1c" -> "sha256:2bd9dc3b06bf4a3a7c634bc4cd82122fc9d2b8293feea08b04e18cc34869d517" [label=""];
  "sha256:2bd9dc3b06bf4a3a7c634bc4cd82122fc9d2b8293feea08b04e18cc34869d517" -> "sha256:ee95b6104021d8c4f8b8c474c726894e64fc9a99dd986927791a391f3d881134" [label=""];
}

