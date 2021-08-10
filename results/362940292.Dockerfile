[app/sources/362940292.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:74b84a0ccf0863d82333306d17104b4d50afb60df4ad55b81cb273f831df092e" [label="local://context" shape="ellipse"];
  "sha256:707ef68bb3fcf67bb91933c412389f764cf0135e49dd1dce5f2df3b22ca2c521" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:912883e43dc77dc79341a739a12371c97c28d9206df41f802b3059c5b980da55" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:a09bc8a7f01e303c05b5124ef0576c77af349dcb7faf515d9609b75f0eff24f0" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:5e29ffb120ced2216eb828ab40e1f6259c725143e95b792ffb1e51c330b7d1ff" [label="sha256:5e29ffb120ced2216eb828ab40e1f6259c725143e95b792ffb1e51c330b7d1ff" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:707ef68bb3fcf67bb91933c412389f764cf0135e49dd1dce5f2df3b22ca2c521" [label=""];
  "sha256:74b84a0ccf0863d82333306d17104b4d50afb60df4ad55b81cb273f831df092e" -> "sha256:707ef68bb3fcf67bb91933c412389f764cf0135e49dd1dce5f2df3b22ca2c521" [label=""];
  "sha256:707ef68bb3fcf67bb91933c412389f764cf0135e49dd1dce5f2df3b22ca2c521" -> "sha256:912883e43dc77dc79341a739a12371c97c28d9206df41f802b3059c5b980da55" [label=""];
  "sha256:912883e43dc77dc79341a739a12371c97c28d9206df41f802b3059c5b980da55" -> "sha256:a09bc8a7f01e303c05b5124ef0576c77af349dcb7faf515d9609b75f0eff24f0" [label=""];
  "sha256:a09bc8a7f01e303c05b5124ef0576c77af349dcb7faf515d9609b75f0eff24f0" -> "sha256:5e29ffb120ced2216eb828ab40e1f6259c725143e95b792ffb1e51c330b7d1ff" [label=""];
}

