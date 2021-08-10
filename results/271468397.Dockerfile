[app/sources/271468397.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:c1df78827ddeca9a1b4a48a770747d3432203a23822a0fc737a6f462c6ef8dde" [label="local://context" shape="ellipse"];
  "sha256:f610a6de5ef44383ba8b977a7ca3594d8f2c662696e3aa3f0e9957208f03fbf3" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:a9ccf65e806ceaf09243ed933e39cb6b8220b6c6e512aec00293e4a42ed84c1a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:755254ef25b58f885ea6c7001cc152712d7cb289e432d2b2805da9f4652672e1" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:2fe9d162079c3daace864197ca301d574e03ade1d24c2e9887aaac5234a0495f" [label="sha256:2fe9d162079c3daace864197ca301d574e03ade1d24c2e9887aaac5234a0495f" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:f610a6de5ef44383ba8b977a7ca3594d8f2c662696e3aa3f0e9957208f03fbf3" [label=""];
  "sha256:c1df78827ddeca9a1b4a48a770747d3432203a23822a0fc737a6f462c6ef8dde" -> "sha256:f610a6de5ef44383ba8b977a7ca3594d8f2c662696e3aa3f0e9957208f03fbf3" [label=""];
  "sha256:f610a6de5ef44383ba8b977a7ca3594d8f2c662696e3aa3f0e9957208f03fbf3" -> "sha256:a9ccf65e806ceaf09243ed933e39cb6b8220b6c6e512aec00293e4a42ed84c1a" [label=""];
  "sha256:a9ccf65e806ceaf09243ed933e39cb6b8220b6c6e512aec00293e4a42ed84c1a" -> "sha256:755254ef25b58f885ea6c7001cc152712d7cb289e432d2b2805da9f4652672e1" [label=""];
  "sha256:755254ef25b58f885ea6c7001cc152712d7cb289e432d2b2805da9f4652672e1" -> "sha256:2fe9d162079c3daace864197ca301d574e03ade1d24c2e9887aaac5234a0495f" [label=""];
}

