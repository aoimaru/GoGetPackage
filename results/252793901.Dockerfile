[app/sources/252793901.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:9880fd67eb88b82377c58558fd786210f245f7ecf8affe980d5c351cb8c7a085" [label="/bin/sh -c yum -y install httpd" shape="box"];
  "sha256:b62f3bf7e337853af44c59239c02f6c09989c57169e4d30335f647155dd378f5" [label="local://context" shape="ellipse"];
  "sha256:0fe606dd87cd1986461e05a452eb6d09ccfa2cec67eba512b699c456e0604749" [label="copy{src=/html, dest=/var/www/html/}" shape="note"];
  "sha256:b32ef67cf92f85c1fc63eb571df9480c668819e54be905ac9b38278e16afd11c" [label="sha256:b32ef67cf92f85c1fc63eb571df9480c668819e54be905ac9b38278e16afd11c" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:9880fd67eb88b82377c58558fd786210f245f7ecf8affe980d5c351cb8c7a085" [label=""];
  "sha256:9880fd67eb88b82377c58558fd786210f245f7ecf8affe980d5c351cb8c7a085" -> "sha256:0fe606dd87cd1986461e05a452eb6d09ccfa2cec67eba512b699c456e0604749" [label=""];
  "sha256:b62f3bf7e337853af44c59239c02f6c09989c57169e4d30335f647155dd378f5" -> "sha256:0fe606dd87cd1986461e05a452eb6d09ccfa2cec67eba512b699c456e0604749" [label=""];
  "sha256:0fe606dd87cd1986461e05a452eb6d09ccfa2cec67eba512b699c456e0604749" -> "sha256:b32ef67cf92f85c1fc63eb571df9480c668819e54be905ac9b38278e16afd11c" [label=""];
}

