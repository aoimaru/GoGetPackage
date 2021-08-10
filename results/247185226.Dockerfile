[app/sources/247185226.Dockerfile]
digraph {
  "sha256:00e932e7ff509057e7e49d3010ffe1c7dd9ce1618071b11e379094eb7e19781e" [label="docker-image://docker.io/library/erlang:20-alpine" shape="ellipse"];
  "sha256:9a12e4ba9b92e5a59fabc41d1166f90ce48d85b9efc8462680f04d22932afac8" [label="/bin/sh -c apk add --no-cache make ca-certificates" shape="box"];
  "sha256:eb281be467b6529da810a42e9ad0b0fba967ca922415e188530577ad664b4593" [label="sha256:eb281be467b6529da810a42e9ad0b0fba967ca922415e188530577ad664b4593" shape="plaintext"];
  "sha256:00e932e7ff509057e7e49d3010ffe1c7dd9ce1618071b11e379094eb7e19781e" -> "sha256:9a12e4ba9b92e5a59fabc41d1166f90ce48d85b9efc8462680f04d22932afac8" [label=""];
  "sha256:9a12e4ba9b92e5a59fabc41d1166f90ce48d85b9efc8462680f04d22932afac8" -> "sha256:eb281be467b6529da810a42e9ad0b0fba967ca922415e188530577ad664b4593" [label=""];
}

