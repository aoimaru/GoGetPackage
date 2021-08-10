[app/sources/252768941.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:155627cc23b0d4c88ef18d0133e8b3834cdd0a1b220f2edf1697e5510636ffdf" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:5e9411997499aca7106d9fcfc55d72eb8aa222d5cd94c72e1fc0967639eea9e2" [label="/bin/sh -c apt-get install -y python-pip python-dev build-essential" shape="box"];
  "sha256:7e06220f6c017d9e5df1f843e4eb6a89cb307404f7c80944103d3d153e55ef49" [label="local://context" shape="ellipse"];
  "sha256:3b1b1778ba91ae3a1e13cef0d0c9f0d9b07cb0f2a5b8e91e54791ca367da38e2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:106f38195c304655ec344ef2e9fd3a73c2b7d4d1b8640ce675a783a01d32f94d" [label="mkdir{path=/app}" shape="note"];
  "sha256:d417fdc7f9f64f2d8647e2c1477669e6cedbcf813bb0c914e58fcb148c54d347" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:cf4609db465968c5711332cf0a5a264449ec03af29e78313e0094e74380a694f" [label="sha256:cf4609db465968c5711332cf0a5a264449ec03af29e78313e0094e74380a694f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:155627cc23b0d4c88ef18d0133e8b3834cdd0a1b220f2edf1697e5510636ffdf" [label=""];
  "sha256:155627cc23b0d4c88ef18d0133e8b3834cdd0a1b220f2edf1697e5510636ffdf" -> "sha256:5e9411997499aca7106d9fcfc55d72eb8aa222d5cd94c72e1fc0967639eea9e2" [label=""];
  "sha256:5e9411997499aca7106d9fcfc55d72eb8aa222d5cd94c72e1fc0967639eea9e2" -> "sha256:3b1b1778ba91ae3a1e13cef0d0c9f0d9b07cb0f2a5b8e91e54791ca367da38e2" [label=""];
  "sha256:7e06220f6c017d9e5df1f843e4eb6a89cb307404f7c80944103d3d153e55ef49" -> "sha256:3b1b1778ba91ae3a1e13cef0d0c9f0d9b07cb0f2a5b8e91e54791ca367da38e2" [label=""];
  "sha256:3b1b1778ba91ae3a1e13cef0d0c9f0d9b07cb0f2a5b8e91e54791ca367da38e2" -> "sha256:106f38195c304655ec344ef2e9fd3a73c2b7d4d1b8640ce675a783a01d32f94d" [label=""];
  "sha256:106f38195c304655ec344ef2e9fd3a73c2b7d4d1b8640ce675a783a01d32f94d" -> "sha256:d417fdc7f9f64f2d8647e2c1477669e6cedbcf813bb0c914e58fcb148c54d347" [label=""];
  "sha256:d417fdc7f9f64f2d8647e2c1477669e6cedbcf813bb0c914e58fcb148c54d347" -> "sha256:cf4609db465968c5711332cf0a5a264449ec03af29e78313e0094e74380a694f" [label=""];
}

