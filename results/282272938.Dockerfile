[app/sources/282272938.Dockerfile]
digraph {
  "sha256:ffb4b817f1f23fd0fd183fce38bbed3c4c51e044ec5126de274f12b752eb99b0" [label="docker-image://docker.io/library/golang:1.10.3-stretch" shape="ellipse"];
  "sha256:03fa24b01b99a2b662988761754f469a92e88aff263b0988f1b26d931c2beab0" [label="/bin/sh -c apt-get update &&     apt-get install -y apt-transport-https &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648A4A16A23015EEF4A66B8E4052245BD4284CDD &&     echo \"deb https://repo.iovisor.org/apt/xenial xenial main\" > /etc/apt/sources.list.d/iovisor.list &&     apt-get update &&     apt-get install -y libbcc=0.6.1-1 linux-headers-amd64" shape="box"];
  "sha256:87998c5df0037ca2ddb0d9d46394b1c56cbf41140e9199612a4a8e7c749dc115" [label="local://context" shape="ellipse"];
  "sha256:e13ee1c72c23a09fdde83668997aa88443f40b8510282a21124323d3dadaba31" [label="copy{src=/, dest=/go/src/github.com/cloudflare/ebpf_exporter}" shape="note"];
  "sha256:aced051b890080a2462f7702a142dd48d652bee1bc262c434ed6eaed293edcff" [label="/bin/sh -c go install -v $GO_PACKAGE/cmd/..." shape="box"];
  "sha256:6f7c1f5bef26a47c98d328b11f319b5486917b7fb940553953c1f118d540c3c2" [label="sha256:6f7c1f5bef26a47c98d328b11f319b5486917b7fb940553953c1f118d540c3c2" shape="plaintext"];
  "sha256:ffb4b817f1f23fd0fd183fce38bbed3c4c51e044ec5126de274f12b752eb99b0" -> "sha256:03fa24b01b99a2b662988761754f469a92e88aff263b0988f1b26d931c2beab0" [label=""];
  "sha256:03fa24b01b99a2b662988761754f469a92e88aff263b0988f1b26d931c2beab0" -> "sha256:e13ee1c72c23a09fdde83668997aa88443f40b8510282a21124323d3dadaba31" [label=""];
  "sha256:87998c5df0037ca2ddb0d9d46394b1c56cbf41140e9199612a4a8e7c749dc115" -> "sha256:e13ee1c72c23a09fdde83668997aa88443f40b8510282a21124323d3dadaba31" [label=""];
  "sha256:e13ee1c72c23a09fdde83668997aa88443f40b8510282a21124323d3dadaba31" -> "sha256:aced051b890080a2462f7702a142dd48d652bee1bc262c434ed6eaed293edcff" [label=""];
  "sha256:aced051b890080a2462f7702a142dd48d652bee1bc262c434ed6eaed293edcff" -> "sha256:6f7c1f5bef26a47c98d328b11f319b5486917b7fb940553953c1f118d540c3c2" [label=""];
}

