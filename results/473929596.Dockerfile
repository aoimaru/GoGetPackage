[app/sources/473929596.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:8a78bdcac44a772e5b143811ff958293c3fc4af7cef43be2b04065991cfd44c3" [label="local://context" shape="ellipse"];
  "sha256:0de60dcd012f383189e129c12e6919ce91fadc86796716d1cad44f9ddebd3e6c" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:212fb3e126dc9131195e5768cf83da0714bfe0aae6f651c2f8844b6326452c4b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:f0d8b39ee0013577018a800776f844abff1246780b2b2add01e88793a983f0fd" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:0f9fd95041e13ad80ab2b46a91f05c805dbbbc51da077ad8b0f62208445db0dc" [label="sha256:0f9fd95041e13ad80ab2b46a91f05c805dbbbc51da077ad8b0f62208445db0dc" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:0de60dcd012f383189e129c12e6919ce91fadc86796716d1cad44f9ddebd3e6c" [label=""];
  "sha256:8a78bdcac44a772e5b143811ff958293c3fc4af7cef43be2b04065991cfd44c3" -> "sha256:0de60dcd012f383189e129c12e6919ce91fadc86796716d1cad44f9ddebd3e6c" [label=""];
  "sha256:0de60dcd012f383189e129c12e6919ce91fadc86796716d1cad44f9ddebd3e6c" -> "sha256:212fb3e126dc9131195e5768cf83da0714bfe0aae6f651c2f8844b6326452c4b" [label=""];
  "sha256:212fb3e126dc9131195e5768cf83da0714bfe0aae6f651c2f8844b6326452c4b" -> "sha256:f0d8b39ee0013577018a800776f844abff1246780b2b2add01e88793a983f0fd" [label=""];
  "sha256:f0d8b39ee0013577018a800776f844abff1246780b2b2add01e88793a983f0fd" -> "sha256:0f9fd95041e13ad80ab2b46a91f05c805dbbbc51da077ad8b0f62208445db0dc" [label=""];
}

