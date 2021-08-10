[app/sources/337127537.Dockerfile]
digraph {
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" [label="docker-image://docker.io/openrasp/centos7:latest" shape="ellipse"];
  "sha256:13dc6699e053514ab0435aeb76eaac163643a310d3181fd5e2e909c895590766" [label="/bin/sh -c yum install -y dnsmasq" shape="box"];
  "sha256:3ff055581f7fec7cd2083cab478301c89e74a6805d0cd43fb188bba7702a1a65" [label="local://context" shape="ellipse"];
  "sha256:fd33a63df8e37becb0fb0572df2aada17f6d6afcc16bcfef0993972041b79b9f" [label="copy{src=/localhost.conf, dest=/etc/dnsmasq.d/}" shape="note"];
  "sha256:6d558d518a4eb1962ef021eba33b322c16a4325bb7605e6f483ba5b061c35cae" [label="copy{src=/*.sh, dest=/root/}" shape="note"];
  "sha256:11d5956d62252428e7673a0709087d7e9cc0d844c2498f59fa1041577512f9c1" [label="/bin/sh -c chmod +x /root/*.sh" shape="box"];
  "sha256:072b0a6804cdbd95f6fd6d961d169849ed19e375c0c3c8bf357b6f9c4bae3f89" [label="sha256:072b0a6804cdbd95f6fd6d961d169849ed19e375c0c3c8bf357b6f9c4bae3f89" shape="plaintext"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" -> "sha256:13dc6699e053514ab0435aeb76eaac163643a310d3181fd5e2e909c895590766" [label=""];
  "sha256:13dc6699e053514ab0435aeb76eaac163643a310d3181fd5e2e909c895590766" -> "sha256:fd33a63df8e37becb0fb0572df2aada17f6d6afcc16bcfef0993972041b79b9f" [label=""];
  "sha256:3ff055581f7fec7cd2083cab478301c89e74a6805d0cd43fb188bba7702a1a65" -> "sha256:fd33a63df8e37becb0fb0572df2aada17f6d6afcc16bcfef0993972041b79b9f" [label=""];
  "sha256:fd33a63df8e37becb0fb0572df2aada17f6d6afcc16bcfef0993972041b79b9f" -> "sha256:6d558d518a4eb1962ef021eba33b322c16a4325bb7605e6f483ba5b061c35cae" [label=""];
  "sha256:3ff055581f7fec7cd2083cab478301c89e74a6805d0cd43fb188bba7702a1a65" -> "sha256:6d558d518a4eb1962ef021eba33b322c16a4325bb7605e6f483ba5b061c35cae" [label=""];
  "sha256:6d558d518a4eb1962ef021eba33b322c16a4325bb7605e6f483ba5b061c35cae" -> "sha256:11d5956d62252428e7673a0709087d7e9cc0d844c2498f59fa1041577512f9c1" [label=""];
  "sha256:11d5956d62252428e7673a0709087d7e9cc0d844c2498f59fa1041577512f9c1" -> "sha256:072b0a6804cdbd95f6fd6d961d169849ed19e375c0c3c8bf357b6f9c4bae3f89" [label=""];
}

