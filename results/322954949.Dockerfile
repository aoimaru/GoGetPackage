[app/sources/322954949.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:af6994138898fb9e5095dba51bc7269b694b617d1395e2d1ceb7f89c1801e352" [label="/bin/sh -c apt-get update && apt-get install -y python" shape="box"];
  "sha256:96d2b4117c3ac0705e66ce77002e0f2c7c4104f675ec2e27f59864bab806ee7a" [label="sha256:96d2b4117c3ac0705e66ce77002e0f2c7c4104f675ec2e27f59864bab806ee7a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:af6994138898fb9e5095dba51bc7269b694b617d1395e2d1ceb7f89c1801e352" [label=""];
  "sha256:af6994138898fb9e5095dba51bc7269b694b617d1395e2d1ceb7f89c1801e352" -> "sha256:96d2b4117c3ac0705e66ce77002e0f2c7c4104f675ec2e27f59864bab806ee7a" [label=""];
}

