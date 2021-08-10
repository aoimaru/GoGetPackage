[app/sources/283639350.Dockerfile]
digraph {
  "sha256:b7b3de4b5ace7490beab79d3b58cf9be63e5a5d37c3184c0b67eec2d28749ff2" [label="docker-image://docker.io/hyperledger/fabric-ca:latest" shape="ellipse"];
  "sha256:622d4e3af620ecba2e64c9faa70908d8aee101a057112ffd16ab4bc767b3621f" [label="/bin/sh -c mkdir /ca" shape="box"];
  "sha256:530d78101a73903e017473e358b314ecd19d1b8c0d27923a22f4b46edf198738" [label="local://context" shape="ellipse"];
  "sha256:c44cc9685abf5a15b4bf930fbebc9d54d698713e12f718a4c02cbaaf5d588f33" [label="copy{src=/fabric-ca-server-config.yaml, dest=/ca}" shape="note"];
  "sha256:4a8ca7a5e8ac88d8acced6a3feaea1f24cacf0b16379510beb956ba4544d507f" [label="copy{src=/tls, dest=/ca/tls}" shape="note"];
  "sha256:90ed707df4b6b0b5690f9c408fec2dfef0ff325b7f3a10e16b4839a3f979d4a5" [label="copy{src=/ca, dest=/ca/ca}" shape="note"];
  "sha256:b5766abde7ba9b6990c5fa7c9971b5518820f40f77c92ac8293467c0844bd4b4" [label="sha256:b5766abde7ba9b6990c5fa7c9971b5518820f40f77c92ac8293467c0844bd4b4" shape="plaintext"];
  "sha256:b7b3de4b5ace7490beab79d3b58cf9be63e5a5d37c3184c0b67eec2d28749ff2" -> "sha256:622d4e3af620ecba2e64c9faa70908d8aee101a057112ffd16ab4bc767b3621f" [label=""];
  "sha256:622d4e3af620ecba2e64c9faa70908d8aee101a057112ffd16ab4bc767b3621f" -> "sha256:c44cc9685abf5a15b4bf930fbebc9d54d698713e12f718a4c02cbaaf5d588f33" [label=""];
  "sha256:530d78101a73903e017473e358b314ecd19d1b8c0d27923a22f4b46edf198738" -> "sha256:c44cc9685abf5a15b4bf930fbebc9d54d698713e12f718a4c02cbaaf5d588f33" [label=""];
  "sha256:c44cc9685abf5a15b4bf930fbebc9d54d698713e12f718a4c02cbaaf5d588f33" -> "sha256:4a8ca7a5e8ac88d8acced6a3feaea1f24cacf0b16379510beb956ba4544d507f" [label=""];
  "sha256:530d78101a73903e017473e358b314ecd19d1b8c0d27923a22f4b46edf198738" -> "sha256:4a8ca7a5e8ac88d8acced6a3feaea1f24cacf0b16379510beb956ba4544d507f" [label=""];
  "sha256:4a8ca7a5e8ac88d8acced6a3feaea1f24cacf0b16379510beb956ba4544d507f" -> "sha256:90ed707df4b6b0b5690f9c408fec2dfef0ff325b7f3a10e16b4839a3f979d4a5" [label=""];
  "sha256:530d78101a73903e017473e358b314ecd19d1b8c0d27923a22f4b46edf198738" -> "sha256:90ed707df4b6b0b5690f9c408fec2dfef0ff325b7f3a10e16b4839a3f979d4a5" [label=""];
  "sha256:90ed707df4b6b0b5690f9c408fec2dfef0ff325b7f3a10e16b4839a3f979d4a5" -> "sha256:b5766abde7ba9b6990c5fa7c9971b5518820f40f77c92ac8293467c0844bd4b4" [label=""];
}

