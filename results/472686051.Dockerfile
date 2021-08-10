[app/sources/472686051.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:a2fe392e13c60c07b106da2e2a4da12013324bc314848b7926459d833969a80c" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y zip" shape="box"];
  "sha256:670db67033b668fc4b5ec9063f8a57acf729fc812dc394f50a1bbdd7d6eb073f" [label="local://context" shape="ellipse"];
  "sha256:bb6659f1875686cc194bf783e44bbfde93824be1fc852482142be62638f3e7be" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:4050f42f82e29c7546151f5e81e3b4c7d6e91967b347b513ec3cafe0773527ac" [label="/bin/sh -c go get github.com/aws/aws-lambda-go/lambda" shape="box"];
  "sha256:34edb9dd16bb5e5aab7123976023fcd9ca84cde42b874857c7b7f38694a279a3" [label="/bin/sh -c GOOS=linux GOARCH=amd64 go build -o hello.lambda ." shape="box"];
  "sha256:0e0747d06f64f6f996c52af12a2c2c1961dd898997979088452995f1e7e678da" [label="/bin/sh -c zip hello.zip hello.lambda" shape="box"];
  "sha256:4c1c95c500178b903aeff1ea89838cdf280e0deaf4807fbec205a59e682ec633" [label="/bin/sh -c zip basicHello.zip hello.lambda" shape="box"];
  "sha256:b8e07fd313f42ec9b0c051a7622be437a6d9aeaa370e54961b73c7918f4c0db2" [label="sha256:b8e07fd313f42ec9b0c051a7622be437a6d9aeaa370e54961b73c7918f4c0db2" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:a2fe392e13c60c07b106da2e2a4da12013324bc314848b7926459d833969a80c" [label=""];
  "sha256:a2fe392e13c60c07b106da2e2a4da12013324bc314848b7926459d833969a80c" -> "sha256:bb6659f1875686cc194bf783e44bbfde93824be1fc852482142be62638f3e7be" [label=""];
  "sha256:670db67033b668fc4b5ec9063f8a57acf729fc812dc394f50a1bbdd7d6eb073f" -> "sha256:bb6659f1875686cc194bf783e44bbfde93824be1fc852482142be62638f3e7be" [label=""];
  "sha256:bb6659f1875686cc194bf783e44bbfde93824be1fc852482142be62638f3e7be" -> "sha256:4050f42f82e29c7546151f5e81e3b4c7d6e91967b347b513ec3cafe0773527ac" [label=""];
  "sha256:4050f42f82e29c7546151f5e81e3b4c7d6e91967b347b513ec3cafe0773527ac" -> "sha256:34edb9dd16bb5e5aab7123976023fcd9ca84cde42b874857c7b7f38694a279a3" [label=""];
  "sha256:34edb9dd16bb5e5aab7123976023fcd9ca84cde42b874857c7b7f38694a279a3" -> "sha256:0e0747d06f64f6f996c52af12a2c2c1961dd898997979088452995f1e7e678da" [label=""];
  "sha256:0e0747d06f64f6f996c52af12a2c2c1961dd898997979088452995f1e7e678da" -> "sha256:4c1c95c500178b903aeff1ea89838cdf280e0deaf4807fbec205a59e682ec633" [label=""];
  "sha256:4c1c95c500178b903aeff1ea89838cdf280e0deaf4807fbec205a59e682ec633" -> "sha256:b8e07fd313f42ec9b0c051a7622be437a6d9aeaa370e54961b73c7918f4c0db2" [label=""];
}

