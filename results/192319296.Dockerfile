[app/sources/192319296.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:8f84bae3d9ddfd5893a1dccae31295e8ba51e0a2a265f37d681d719f018921d3" [label="/bin/sh -c echo \"${CUSTOM_ARG}\" > /test.txt" shape="box"];
  "sha256:e6c66c80a1260cb0287f7ed23d9ce442df62480adb87767c9633347187dfa147" [label="sha256:e6c66c80a1260cb0287f7ed23d9ce442df62480adb87767c9633347187dfa147" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:8f84bae3d9ddfd5893a1dccae31295e8ba51e0a2a265f37d681d719f018921d3" [label=""];
  "sha256:8f84bae3d9ddfd5893a1dccae31295e8ba51e0a2a265f37d681d719f018921d3" -> "sha256:e6c66c80a1260cb0287f7ed23d9ce442df62480adb87767c9633347187dfa147" [label=""];
}

