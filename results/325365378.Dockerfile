[app/sources/325365378.Dockerfile]
digraph {
  "sha256:cc65fc20218020fd8c9f1603b5ff2565afb788cd049267766091a9e99ace88b8" [label="docker-image://docker.io/library/rabbitmq:3-management" shape="ellipse"];
  "sha256:6fa91f148f7dfdd5f1e1c1ab958ffedded3377993f31193544bd224ce5bff381" [label="local://context" shape="ellipse"];
  "sha256:eb201d6d4f7f3f3ad1ea29143f6955555de9260a95a5209caed709c4ebea3e15" [label="copy{src=/rabbitmq.conf, dest=/etc/rabbitmq/}" shape="note"];
  "sha256:77c58ca0da486a13ff2f5ac3de30635ab78192852011c17ef77e7b049b6d7f25" [label="copy{src=/definitions.json, dest=/etc/rabbitmq/}" shape="note"];
  "sha256:f027dd76ee4a8f7728dd04b06ae9552b1f8413adf73f7c7980232f49531e1aad" [label="sha256:f027dd76ee4a8f7728dd04b06ae9552b1f8413adf73f7c7980232f49531e1aad" shape="plaintext"];
  "sha256:cc65fc20218020fd8c9f1603b5ff2565afb788cd049267766091a9e99ace88b8" -> "sha256:eb201d6d4f7f3f3ad1ea29143f6955555de9260a95a5209caed709c4ebea3e15" [label=""];
  "sha256:6fa91f148f7dfdd5f1e1c1ab958ffedded3377993f31193544bd224ce5bff381" -> "sha256:eb201d6d4f7f3f3ad1ea29143f6955555de9260a95a5209caed709c4ebea3e15" [label=""];
  "sha256:eb201d6d4f7f3f3ad1ea29143f6955555de9260a95a5209caed709c4ebea3e15" -> "sha256:77c58ca0da486a13ff2f5ac3de30635ab78192852011c17ef77e7b049b6d7f25" [label=""];
  "sha256:6fa91f148f7dfdd5f1e1c1ab958ffedded3377993f31193544bd224ce5bff381" -> "sha256:77c58ca0da486a13ff2f5ac3de30635ab78192852011c17ef77e7b049b6d7f25" [label=""];
  "sha256:77c58ca0da486a13ff2f5ac3de30635ab78192852011c17ef77e7b049b6d7f25" -> "sha256:f027dd76ee4a8f7728dd04b06ae9552b1f8413adf73f7c7980232f49531e1aad" [label=""];
}

