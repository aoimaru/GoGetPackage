[app/sources/293550150.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:038bc465956c4752ec689360829da6161b7e22f60058cc767b0bf40e62e6815e" [label="local://context" shape="ellipse"];
  "sha256:0f56d6d1fac095217b68421a23880afd4a82f68844e4269b947f3bea5f16588d" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:fa6b392b97be9ce6538d4532b4aa2c83601176ac634c4df700ea8003cf624b77" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:333e9eee1086bba027eb5017759ec02cb27ca5199c14d219a69a3615899806a4" [label="sha256:333e9eee1086bba027eb5017759ec02cb27ca5199c14d219a69a3615899806a4" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:0f56d6d1fac095217b68421a23880afd4a82f68844e4269b947f3bea5f16588d" [label=""];
  "sha256:038bc465956c4752ec689360829da6161b7e22f60058cc767b0bf40e62e6815e" -> "sha256:0f56d6d1fac095217b68421a23880afd4a82f68844e4269b947f3bea5f16588d" [label=""];
  "sha256:0f56d6d1fac095217b68421a23880afd4a82f68844e4269b947f3bea5f16588d" -> "sha256:fa6b392b97be9ce6538d4532b4aa2c83601176ac634c4df700ea8003cf624b77" [label=""];
  "sha256:fa6b392b97be9ce6538d4532b4aa2c83601176ac634c4df700ea8003cf624b77" -> "sha256:333e9eee1086bba027eb5017759ec02cb27ca5199c14d219a69a3615899806a4" [label=""];
}

