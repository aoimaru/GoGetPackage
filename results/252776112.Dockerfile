[app/sources/252776112.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:71fdc01e8c29a6216f11ef01827712203e3e7dbe7af2d04effd61f74e2e63d48" [label="/bin/sh -c apt-get update -qq -y && apt-get install -qq -y hatop && apt-get clean" shape="box"];
  "sha256:c9c662508700376d1312238ba9cbfaeff5a069ce1fc2239b3c17895c47078960" [label="sha256:c9c662508700376d1312238ba9cbfaeff5a069ce1fc2239b3c17895c47078960" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:71fdc01e8c29a6216f11ef01827712203e3e7dbe7af2d04effd61f74e2e63d48" [label=""];
  "sha256:71fdc01e8c29a6216f11ef01827712203e3e7dbe7af2d04effd61f74e2e63d48" -> "sha256:c9c662508700376d1312238ba9cbfaeff5a069ce1fc2239b3c17895c47078960" [label=""];
}

