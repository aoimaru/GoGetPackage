[app/sources/199525794.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:730e888f1939f678ac67b861630e6ff12f440e4966d81f4fb307deaeed6369a7" [label="local://context" shape="ellipse"];
  "sha256:5761aa98871345fb7e62d3b4c10e82b6b3eb980785f8fc583ec4e77ecc230de6" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8d35154f5a65a486773fa98770e1f81684245b5781141250048ed643411d00ee" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:92e0df8d901a1da953fb8fab394e7793047aea4e48c8cfadd1e120aa72854d48" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:6899cb2271e9845ef3c1eef79fb467d874754edcd4ae371ad0dac08ef8fc24cd" [label="sha256:6899cb2271e9845ef3c1eef79fb467d874754edcd4ae371ad0dac08ef8fc24cd" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:5761aa98871345fb7e62d3b4c10e82b6b3eb980785f8fc583ec4e77ecc230de6" [label=""];
  "sha256:730e888f1939f678ac67b861630e6ff12f440e4966d81f4fb307deaeed6369a7" -> "sha256:5761aa98871345fb7e62d3b4c10e82b6b3eb980785f8fc583ec4e77ecc230de6" [label=""];
  "sha256:5761aa98871345fb7e62d3b4c10e82b6b3eb980785f8fc583ec4e77ecc230de6" -> "sha256:8d35154f5a65a486773fa98770e1f81684245b5781141250048ed643411d00ee" [label=""];
  "sha256:8d35154f5a65a486773fa98770e1f81684245b5781141250048ed643411d00ee" -> "sha256:92e0df8d901a1da953fb8fab394e7793047aea4e48c8cfadd1e120aa72854d48" [label=""];
  "sha256:92e0df8d901a1da953fb8fab394e7793047aea4e48c8cfadd1e120aa72854d48" -> "sha256:6899cb2271e9845ef3c1eef79fb467d874754edcd4ae371ad0dac08ef8fc24cd" [label=""];
}

