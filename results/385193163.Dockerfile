[app/sources/385193163.Dockerfile]
digraph {
  "sha256:38031144239deb254dce74e167459efd3a7eef695a5200913a4f4ecf8483e053" [label="docker-image://docker.io/drone/ca-certs:latest" shape="ellipse"];
  "sha256:a791b6bab3538350b7adaf3906a34c36e3cdfbfc9eb993525846245ab7a59756" [label="local://context" shape="ellipse"];
  "sha256:67a88957967704e2b4b1a14536e3cd14660bd1f13ca08420d9d5f4e6d2ef033c" [label="copy{src=/release/linux/arm/drone-agent, dest=/bin/}" shape="note"];
  "sha256:df4fe158a8eb00a5cc903c5a26b539f569f9fcde5ced522bcaa97d7c218a1766" [label="sha256:df4fe158a8eb00a5cc903c5a26b539f569f9fcde5ced522bcaa97d7c218a1766" shape="plaintext"];
  "sha256:38031144239deb254dce74e167459efd3a7eef695a5200913a4f4ecf8483e053" -> "sha256:67a88957967704e2b4b1a14536e3cd14660bd1f13ca08420d9d5f4e6d2ef033c" [label=""];
  "sha256:a791b6bab3538350b7adaf3906a34c36e3cdfbfc9eb993525846245ab7a59756" -> "sha256:67a88957967704e2b4b1a14536e3cd14660bd1f13ca08420d9d5f4e6d2ef033c" [label=""];
  "sha256:67a88957967704e2b4b1a14536e3cd14660bd1f13ca08420d9d5f4e6d2ef033c" -> "sha256:df4fe158a8eb00a5cc903c5a26b539f569f9fcde5ced522bcaa97d7c218a1766" [label=""];
}

