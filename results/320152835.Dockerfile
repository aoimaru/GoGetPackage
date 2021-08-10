[app/sources/320152835.Dockerfile]
digraph {
  "sha256:e16909799b371c44f56e4a0e8481927c090ebce218f7d2b34e62339ed65c2f5b" [label="local://context" shape="ellipse"];
  "sha256:1ba8e03f7852d5cadcaece8120eb443050a4d62925ff32f4e796b24ff25c959c" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:68bb23b49af3ac7df9bea2d4a57d3e43d88ef2c084063ee3bfff459519158609" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:8eb33ff8d58da3f105f2785f0431ae532a8a7b4fbd4f54542d1ff124e523798b" [label="sha256:8eb33ff8d58da3f105f2785f0431ae532a8a7b4fbd4f54542d1ff124e523798b" shape="plaintext"];
  "sha256:e16909799b371c44f56e4a0e8481927c090ebce218f7d2b34e62339ed65c2f5b" -> "sha256:1ba8e03f7852d5cadcaece8120eb443050a4d62925ff32f4e796b24ff25c959c" [label=""];
  "sha256:1ba8e03f7852d5cadcaece8120eb443050a4d62925ff32f4e796b24ff25c959c" -> "sha256:68bb23b49af3ac7df9bea2d4a57d3e43d88ef2c084063ee3bfff459519158609" [label=""];
  "sha256:e16909799b371c44f56e4a0e8481927c090ebce218f7d2b34e62339ed65c2f5b" -> "sha256:68bb23b49af3ac7df9bea2d4a57d3e43d88ef2c084063ee3bfff459519158609" [label=""];
  "sha256:68bb23b49af3ac7df9bea2d4a57d3e43d88ef2c084063ee3bfff459519158609" -> "sha256:8eb33ff8d58da3f105f2785f0431ae532a8a7b4fbd4f54542d1ff124e523798b" [label=""];
}

