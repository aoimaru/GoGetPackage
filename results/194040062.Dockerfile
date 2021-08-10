[app/sources/194040062.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:2aa229db9210d614abbbe8b2ed41fc48f678aba70a68cee89ef8f2bcfd6776cd" [label="mkdir{path=/home/Bassa}" shape="note"];
  "sha256:57d91ad8d94dc56c52589c99ce16d9df89314843597197d00a941ffadb50f212" [label="local://context" shape="ellipse"];
  "sha256:b0603e84f5c8e535af66b014e42a2a1c0e834369de08bc6ae93bd17bffeb1f97" [label="copy{src=/, dest=/home/Bassa/}" shape="note"];
  "sha256:272590d0f6aeed947aa579cc5e4d4c3b86c1663de84a33e3f5f6c4b79bfffac7" [label="/bin/sh -c apt-get update && ./setup.sh && python setup.py develop" shape="box"];
  "sha256:e31216144e74950780b0aa027863a68081541a15edcdd2708b3ab9267aa1a9b8" [label="sha256:e31216144e74950780b0aa027863a68081541a15edcdd2708b3ab9267aa1a9b8" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:2aa229db9210d614abbbe8b2ed41fc48f678aba70a68cee89ef8f2bcfd6776cd" [label=""];
  "sha256:2aa229db9210d614abbbe8b2ed41fc48f678aba70a68cee89ef8f2bcfd6776cd" -> "sha256:b0603e84f5c8e535af66b014e42a2a1c0e834369de08bc6ae93bd17bffeb1f97" [label=""];
  "sha256:57d91ad8d94dc56c52589c99ce16d9df89314843597197d00a941ffadb50f212" -> "sha256:b0603e84f5c8e535af66b014e42a2a1c0e834369de08bc6ae93bd17bffeb1f97" [label=""];
  "sha256:b0603e84f5c8e535af66b014e42a2a1c0e834369de08bc6ae93bd17bffeb1f97" -> "sha256:272590d0f6aeed947aa579cc5e4d4c3b86c1663de84a33e3f5f6c4b79bfffac7" [label=""];
  "sha256:272590d0f6aeed947aa579cc5e4d4c3b86c1663de84a33e3f5f6c4b79bfffac7" -> "sha256:e31216144e74950780b0aa027863a68081541a15edcdd2708b3ab9267aa1a9b8" [label=""];
}

