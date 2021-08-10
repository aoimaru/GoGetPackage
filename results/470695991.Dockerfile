[app/sources/470695991.Dockerfile]
digraph {
  "sha256:fb8b73b2ed38d07f7cc6b713ad5c469b5e70ab2a2893258f38f4b6ef6e050426" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" [label="mkdir{path=/app}" shape="note"];
  "sha256:b46b2caa71cf843b3e1b1d042f87440b24fdf0655bcff8c18d20b03554a75f98" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f295236153c5587a630e03b2137aee878cecdf561e623947b0a692a2b651354b" [label="/bin/sh -c apt-get update && apt-get install wget curl -qy" shape="box"];
  "sha256:08fdd1e5cef442f3ba197374a8b7281f25553b7df74aee6857f97565c6271486" [label="sha256:08fdd1e5cef442f3ba197374a8b7281f25553b7df74aee6857f97565c6271486" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" [label=""];
  "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" -> "sha256:b46b2caa71cf843b3e1b1d042f87440b24fdf0655bcff8c18d20b03554a75f98" [label=""];
  "sha256:fb8b73b2ed38d07f7cc6b713ad5c469b5e70ab2a2893258f38f4b6ef6e050426" -> "sha256:b46b2caa71cf843b3e1b1d042f87440b24fdf0655bcff8c18d20b03554a75f98" [label=""];
  "sha256:b46b2caa71cf843b3e1b1d042f87440b24fdf0655bcff8c18d20b03554a75f98" -> "sha256:f295236153c5587a630e03b2137aee878cecdf561e623947b0a692a2b651354b" [label=""];
  "sha256:f295236153c5587a630e03b2137aee878cecdf561e623947b0a692a2b651354b" -> "sha256:08fdd1e5cef442f3ba197374a8b7281f25553b7df74aee6857f97565c6271486" [label=""];
}

