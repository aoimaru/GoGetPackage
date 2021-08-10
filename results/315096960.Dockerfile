[app/sources/315096960.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:88c44ceac9807b28a468e36f5cd9fd6982b208dfcc689334914a353f01ecaab2" [label="local://context" shape="ellipse"];
  "sha256:1354e069567f89db4fcbb07fc947b644264f5cc2c357c827b112498ea6c06b5a" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:d8c18c6722b543b645c06d4ee217d6152badeec918a8b45c59e1d46712c37948" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:a21a68727b4ab2b2b4f43080ae6c0594a2686e14052d10e0f0f67c0c574ad85a" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:9bbf3a8f47d5a69e470c1ac897cdf0484608dd4a770229e09855212221e70dac" [label="sha256:9bbf3a8f47d5a69e470c1ac897cdf0484608dd4a770229e09855212221e70dac" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:1354e069567f89db4fcbb07fc947b644264f5cc2c357c827b112498ea6c06b5a" [label=""];
  "sha256:88c44ceac9807b28a468e36f5cd9fd6982b208dfcc689334914a353f01ecaab2" -> "sha256:1354e069567f89db4fcbb07fc947b644264f5cc2c357c827b112498ea6c06b5a" [label=""];
  "sha256:1354e069567f89db4fcbb07fc947b644264f5cc2c357c827b112498ea6c06b5a" -> "sha256:d8c18c6722b543b645c06d4ee217d6152badeec918a8b45c59e1d46712c37948" [label=""];
  "sha256:d8c18c6722b543b645c06d4ee217d6152badeec918a8b45c59e1d46712c37948" -> "sha256:a21a68727b4ab2b2b4f43080ae6c0594a2686e14052d10e0f0f67c0c574ad85a" [label=""];
  "sha256:a21a68727b4ab2b2b4f43080ae6c0594a2686e14052d10e0f0f67c0c574ad85a" -> "sha256:9bbf3a8f47d5a69e470c1ac897cdf0484608dd4a770229e09855212221e70dac" [label=""];
}

