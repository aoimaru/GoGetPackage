[app/sources/273683422.Dockerfile]
digraph {
  "sha256:46819882a53424ce05378d53f0f2f856a48d476174ad857cdf99a77051a2efb6" [label="docker-image://docker.io/library/python:3.5-jessie" shape="ellipse"];
  "sha256:d9afb28fd947e88d7fdf4b89893075f3187dd2d1e7895fc9f0e72a52e3f5c45c" [label="/bin/sh -c mkdir -p ${WORKDIR}" shape="box"];
  "sha256:3ee5a62b93f08295f95067443362b340b663030bea6108bff6c726ad5e24232d" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:84b71b8aae8154f38451c16a8e2b0fd2580f25447bf501b185e3787f44da9e33" [label="local://context" shape="ellipse"];
  "sha256:d3e18ba34a2785576c86049ad6b49eb9ae10101f61e86c4614fc5d863a471314" [label="copy{src=/requirements.txt, dest=/workdir}" shape="note"];
  "sha256:346d0ee36d3d6295ed288f3beb0aca8c67f2e2905da4c4dbe995776f60ad7e68" [label="/bin/sh -c /bin/bash -c \"pip install -r requirements.txt\"" shape="box"];
  "sha256:0268b9e477d2d010b26d9f834d4b6f3ced4af262fbb0277b6c0739bd85af6d36" [label="sha256:0268b9e477d2d010b26d9f834d4b6f3ced4af262fbb0277b6c0739bd85af6d36" shape="plaintext"];
  "sha256:46819882a53424ce05378d53f0f2f856a48d476174ad857cdf99a77051a2efb6" -> "sha256:d9afb28fd947e88d7fdf4b89893075f3187dd2d1e7895fc9f0e72a52e3f5c45c" [label=""];
  "sha256:d9afb28fd947e88d7fdf4b89893075f3187dd2d1e7895fc9f0e72a52e3f5c45c" -> "sha256:3ee5a62b93f08295f95067443362b340b663030bea6108bff6c726ad5e24232d" [label=""];
  "sha256:3ee5a62b93f08295f95067443362b340b663030bea6108bff6c726ad5e24232d" -> "sha256:d3e18ba34a2785576c86049ad6b49eb9ae10101f61e86c4614fc5d863a471314" [label=""];
  "sha256:84b71b8aae8154f38451c16a8e2b0fd2580f25447bf501b185e3787f44da9e33" -> "sha256:d3e18ba34a2785576c86049ad6b49eb9ae10101f61e86c4614fc5d863a471314" [label=""];
  "sha256:d3e18ba34a2785576c86049ad6b49eb9ae10101f61e86c4614fc5d863a471314" -> "sha256:346d0ee36d3d6295ed288f3beb0aca8c67f2e2905da4c4dbe995776f60ad7e68" [label=""];
  "sha256:346d0ee36d3d6295ed288f3beb0aca8c67f2e2905da4c4dbe995776f60ad7e68" -> "sha256:0268b9e477d2d010b26d9f834d4b6f3ced4af262fbb0277b6c0739bd85af6d36" [label=""];
}

