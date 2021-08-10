[app/sources/203726061.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:24983b158b67e82ab841267e2d30357d180ef72e005f9c33b14f6d280ee77ab5" [label="local://context" shape="ellipse"];
  "sha256:775b1d8337c93339192193ac2bd5f380b29bdbdcdf2ac2ce5584eeb62d417e8c" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:204050d53345008f511f7c37f3ee3404cf82232f0e93239be0144b2599adae0f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:4a0c76d8c1fea15a3ab29f5d333c68cd49032069a3a90892d74517a82d66ee18" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:18c2cb477783eebdb3f4f491cf99972d058b66589c9119ef05c3cc9d18afbe1f" [label="sha256:18c2cb477783eebdb3f4f491cf99972d058b66589c9119ef05c3cc9d18afbe1f" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:775b1d8337c93339192193ac2bd5f380b29bdbdcdf2ac2ce5584eeb62d417e8c" [label=""];
  "sha256:24983b158b67e82ab841267e2d30357d180ef72e005f9c33b14f6d280ee77ab5" -> "sha256:775b1d8337c93339192193ac2bd5f380b29bdbdcdf2ac2ce5584eeb62d417e8c" [label=""];
  "sha256:775b1d8337c93339192193ac2bd5f380b29bdbdcdf2ac2ce5584eeb62d417e8c" -> "sha256:204050d53345008f511f7c37f3ee3404cf82232f0e93239be0144b2599adae0f" [label=""];
  "sha256:204050d53345008f511f7c37f3ee3404cf82232f0e93239be0144b2599adae0f" -> "sha256:4a0c76d8c1fea15a3ab29f5d333c68cd49032069a3a90892d74517a82d66ee18" [label=""];
  "sha256:4a0c76d8c1fea15a3ab29f5d333c68cd49032069a3a90892d74517a82d66ee18" -> "sha256:18c2cb477783eebdb3f4f491cf99972d058b66589c9119ef05c3cc9d18afbe1f" [label=""];
}

