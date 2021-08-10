[app/sources/293858348.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:2d600e3d251227d7154a1b0c0d12d79d8991cffaa79670c650c9c913390dac59" [label="local://context" shape="ellipse"];
  "sha256:a162cdc00554fb0c51524225ebeecacf129257789c5b98f4c33860a025cfc273" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:da2449e7e02a1e21c0a7e37267889b626927d798cab272473debc97f11059734" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:1f8f216002489a8686730604e1f78696672f70ce37542327928d2329b3ddfec7" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:fa7c4f2e48147084825365627298450ac4e0027c10341fa8121eb5243fff5981" [label="sha256:fa7c4f2e48147084825365627298450ac4e0027c10341fa8121eb5243fff5981" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:a162cdc00554fb0c51524225ebeecacf129257789c5b98f4c33860a025cfc273" [label=""];
  "sha256:2d600e3d251227d7154a1b0c0d12d79d8991cffaa79670c650c9c913390dac59" -> "sha256:a162cdc00554fb0c51524225ebeecacf129257789c5b98f4c33860a025cfc273" [label=""];
  "sha256:a162cdc00554fb0c51524225ebeecacf129257789c5b98f4c33860a025cfc273" -> "sha256:da2449e7e02a1e21c0a7e37267889b626927d798cab272473debc97f11059734" [label=""];
  "sha256:da2449e7e02a1e21c0a7e37267889b626927d798cab272473debc97f11059734" -> "sha256:1f8f216002489a8686730604e1f78696672f70ce37542327928d2329b3ddfec7" [label=""];
  "sha256:1f8f216002489a8686730604e1f78696672f70ce37542327928d2329b3ddfec7" -> "sha256:fa7c4f2e48147084825365627298450ac4e0027c10341fa8121eb5243fff5981" [label=""];
}

