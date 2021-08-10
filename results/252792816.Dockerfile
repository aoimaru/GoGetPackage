[app/sources/252792816.Dockerfile]
digraph {
  "sha256:f5719d36ad7e018a88df5ab137bcf32b9b071a9e0a8f5e79375f396155d5c0be" [label="docker-image://docker.io/microsoft/aspnet:1.0.0-rc1-update1-coreclr" shape="ellipse"];
  "sha256:de624e5246dd868f483629b535e73ca72b1e5c731f4fdfb2e78147f4e2297c58" [label="/bin/sh -c /bin/bash -c \"source ${DNX_USER_HOME}/dnvm/dnvm.sh && dnvm install -u -a x64 -r coreclr -f latest\"" shape="box"];
  "sha256:f8a48289cee610682d69a91ed5533dee862f6a26d9471491ef7482c7fa2d97c7" [label="sha256:f8a48289cee610682d69a91ed5533dee862f6a26d9471491ef7482c7fa2d97c7" shape="plaintext"];
  "sha256:f5719d36ad7e018a88df5ab137bcf32b9b071a9e0a8f5e79375f396155d5c0be" -> "sha256:de624e5246dd868f483629b535e73ca72b1e5c731f4fdfb2e78147f4e2297c58" [label=""];
  "sha256:de624e5246dd868f483629b535e73ca72b1e5c731f4fdfb2e78147f4e2297c58" -> "sha256:f8a48289cee610682d69a91ed5533dee862f6a26d9471491ef7482c7fa2d97c7" [label=""];
}

