[app/sources/252799522.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:80bfb758f4fbbffc9aa8b158280ebcc37ce670875a541c8c67b7ac644c42a841" [label="local://context" shape="ellipse"];
  "sha256:313cdbbed3f3985badbaf02b38857c8f25d015dae9f4fbe1698a67549d43ec6c" [label="copy{src=/*, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:157497b0ca0b7efecb67c4190fd4312e41a513a1529427729ac72478d58391c3" [label="sha256:157497b0ca0b7efecb67c4190fd4312e41a513a1529427729ac72478d58391c3" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:313cdbbed3f3985badbaf02b38857c8f25d015dae9f4fbe1698a67549d43ec6c" [label=""];
  "sha256:80bfb758f4fbbffc9aa8b158280ebcc37ce670875a541c8c67b7ac644c42a841" -> "sha256:313cdbbed3f3985badbaf02b38857c8f25d015dae9f4fbe1698a67549d43ec6c" [label=""];
  "sha256:313cdbbed3f3985badbaf02b38857c8f25d015dae9f4fbe1698a67549d43ec6c" -> "sha256:157497b0ca0b7efecb67c4190fd4312e41a513a1529427729ac72478d58391c3" [label=""];
}

