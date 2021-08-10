[app/sources/252784525.Dockerfile]
digraph {
  "sha256:a53e25869b5db10aad41b0b94e995f3e5db63cd2ba920b67c642d322cb051ed7" [label="local://context" shape="ellipse"];
  "sha256:c5a584cc09e13159106e39f5f014148c7b2e9ff6b2677da7d515940a48b4a373" [label="docker-image://docker.io/library/jetty:9.4.7-jre8" shape="ellipse"];
  "sha256:99e769723b41bf2dc70dfe0189c4a35bc0fe059e7fad73adff044d074f144ada" [label="copy{src=/--from=maven, dest=/webapps},copy{src=/workdir/target/*war, dest=/webapps}" shape="note"];
  "sha256:b1673164bb2da7f1c4ddddeed625799b7ac18c8aac6f21418ecd12e49037a083" [label="copy{src=/configuration, dest=/resources/}" shape="note"];
  "sha256:28bc059e0c9a208103716b615f2046c67fdd6e3d5f806a93b9bb7fcad294d9c4" [label="copy{src=/entry.sh, dest=/}" shape="note"];
  "sha256:5537a710acbae260441b1ff46d0c55e0adfd02770a92f69377129a4590df1aea" [label="sha256:5537a710acbae260441b1ff46d0c55e0adfd02770a92f69377129a4590df1aea" shape="plaintext"];
  "sha256:c5a584cc09e13159106e39f5f014148c7b2e9ff6b2677da7d515940a48b4a373" -> "sha256:99e769723b41bf2dc70dfe0189c4a35bc0fe059e7fad73adff044d074f144ada" [label=""];
  "sha256:a53e25869b5db10aad41b0b94e995f3e5db63cd2ba920b67c642d322cb051ed7" -> "sha256:99e769723b41bf2dc70dfe0189c4a35bc0fe059e7fad73adff044d074f144ada" [label=""];
  "sha256:99e769723b41bf2dc70dfe0189c4a35bc0fe059e7fad73adff044d074f144ada" -> "sha256:b1673164bb2da7f1c4ddddeed625799b7ac18c8aac6f21418ecd12e49037a083" [label=""];
  "sha256:a53e25869b5db10aad41b0b94e995f3e5db63cd2ba920b67c642d322cb051ed7" -> "sha256:b1673164bb2da7f1c4ddddeed625799b7ac18c8aac6f21418ecd12e49037a083" [label=""];
  "sha256:b1673164bb2da7f1c4ddddeed625799b7ac18c8aac6f21418ecd12e49037a083" -> "sha256:28bc059e0c9a208103716b615f2046c67fdd6e3d5f806a93b9bb7fcad294d9c4" [label=""];
  "sha256:a53e25869b5db10aad41b0b94e995f3e5db63cd2ba920b67c642d322cb051ed7" -> "sha256:28bc059e0c9a208103716b615f2046c67fdd6e3d5f806a93b9bb7fcad294d9c4" [label=""];
  "sha256:28bc059e0c9a208103716b615f2046c67fdd6e3d5f806a93b9bb7fcad294d9c4" -> "sha256:5537a710acbae260441b1ff46d0c55e0adfd02770a92f69377129a4590df1aea" [label=""];
}

