[app/sources/201188137.Dockerfile]
digraph {
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:ef93fea2295d1ca4cb97c028756b7ef6ad33c50e0ed662e2142eb4eff8189486" [label="/bin/sh -c apt-get update     && apt-get install wget -y      && wget \"https://github.com/dashpay/dash/releases/download/v${BRANCH}.0/dashcore-${BRANCH}.0-${IS}-linux-gnu.tar.gz\"     && tar -zxvf dashcore-${BRANCH}.0-${IS}-linux-gnu.tar.gz      && mv dashcore-${BRANCH} dashcore" shape="box"];
  "sha256:e64ef2b756398faca245809d2ca010f98dda60bf39191d49f477b260ff3a5deb" [label="sha256:e64ef2b756398faca245809d2ca010f98dda60bf39191d49f477b260ff3a5deb" shape="plaintext"];
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" -> "sha256:ef93fea2295d1ca4cb97c028756b7ef6ad33c50e0ed662e2142eb4eff8189486" [label=""];
  "sha256:ef93fea2295d1ca4cb97c028756b7ef6ad33c50e0ed662e2142eb4eff8189486" -> "sha256:e64ef2b756398faca245809d2ca010f98dda60bf39191d49f477b260ff3a5deb" [label=""];
}

