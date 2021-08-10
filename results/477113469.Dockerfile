[app/sources/477113469.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:1f79fcb5f1882cef21be484f3cfd10e75d38c693f5af42f16aaa2aa10bf9ddba" [label="local://context" shape="ellipse"];
  "sha256:3b958cc42ce7dc8b07afa824911af45174234840bd29a2db2591f13ecb6b0324" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:98d2d2819449cad09c8acb0424422b155d83b4cbe46441d015082c7bc02ad0fd" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8bb603f5bb3202e88e03597d19f9e4e2682e5ad5bab8c812d41d20d16dec1f96" [label="sha256:8bb603f5bb3202e88e03597d19f9e4e2682e5ad5bab8c812d41d20d16dec1f96" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:3b958cc42ce7dc8b07afa824911af45174234840bd29a2db2591f13ecb6b0324" [label=""];
  "sha256:1f79fcb5f1882cef21be484f3cfd10e75d38c693f5af42f16aaa2aa10bf9ddba" -> "sha256:3b958cc42ce7dc8b07afa824911af45174234840bd29a2db2591f13ecb6b0324" [label=""];
  "sha256:3b958cc42ce7dc8b07afa824911af45174234840bd29a2db2591f13ecb6b0324" -> "sha256:98d2d2819449cad09c8acb0424422b155d83b4cbe46441d015082c7bc02ad0fd" [label=""];
  "sha256:98d2d2819449cad09c8acb0424422b155d83b4cbe46441d015082c7bc02ad0fd" -> "sha256:8bb603f5bb3202e88e03597d19f9e4e2682e5ad5bab8c812d41d20d16dec1f96" [label=""];
}

