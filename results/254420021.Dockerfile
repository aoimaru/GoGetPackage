[app/sources/254420021.Dockerfile]
digraph {
  "sha256:acfd38f664c6172315dadf963575d5bb546395f18a966dadcd22d56e6cfc1c9d" [label="docker-image://docker.io/scrapinghub/multibinder-haproxy:latest" shape="ellipse"];
  "sha256:5cab6997f45061274c77bbfe56072b66d8f238bfd4d34d89a4eb4aa3cb195f24" [label="/bin/sh -c deps='curl unzip' &&     apt-get update && apt-get install -y --no-install-recommends $deps && rm -rf /var/lib/apt/lists/* &&     curl -sSL \"https://releases.hashicorp.com/consul-template/0.16.0/consul-template_0.16.0_linux_amd64.zip\" -o /tmp/consul-template.zip &&     echo \"064b0b492bb7ca3663811d297436a4bbf3226de706d2b76adade7021cd22e156  /tmp/consul-template.zip\" | sha256sum -c &&     unzip -DD -o /tmp/consul-template.zip -d /usr/local/bin/ &&     rm /tmp/consul-template.zip &&     mkdir -p /etc/consul-template &&     apt-get purge -y --auto-remove $deps" shape="box"];
  "sha256:1b5d942a6b7fa8631558e91ec2e72ca7e2bc241434893d442114371178f87f1d" [label="local://context" shape="ellipse"];
  "sha256:d893848accfb0d15fdcaa4d3822bbb0b03928cdd19d8b92a24a5fab55e79f7c0" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:03ba610c3e4f0dc6aa4af3282779fc622f12830724fb68880006452b285afc0c" [label="copy{src=/config/*, dest=/etc/consul-template/}" shape="note"];
  "sha256:f95af668d94cbdd4a30dc24124eb579a3132b8cb3c4ed9390eaf13000c1be49e" [label="sha256:f95af668d94cbdd4a30dc24124eb579a3132b8cb3c4ed9390eaf13000c1be49e" shape="plaintext"];
  "sha256:acfd38f664c6172315dadf963575d5bb546395f18a966dadcd22d56e6cfc1c9d" -> "sha256:5cab6997f45061274c77bbfe56072b66d8f238bfd4d34d89a4eb4aa3cb195f24" [label=""];
  "sha256:5cab6997f45061274c77bbfe56072b66d8f238bfd4d34d89a4eb4aa3cb195f24" -> "sha256:d893848accfb0d15fdcaa4d3822bbb0b03928cdd19d8b92a24a5fab55e79f7c0" [label=""];
  "sha256:1b5d942a6b7fa8631558e91ec2e72ca7e2bc241434893d442114371178f87f1d" -> "sha256:d893848accfb0d15fdcaa4d3822bbb0b03928cdd19d8b92a24a5fab55e79f7c0" [label=""];
  "sha256:d893848accfb0d15fdcaa4d3822bbb0b03928cdd19d8b92a24a5fab55e79f7c0" -> "sha256:03ba610c3e4f0dc6aa4af3282779fc622f12830724fb68880006452b285afc0c" [label=""];
  "sha256:1b5d942a6b7fa8631558e91ec2e72ca7e2bc241434893d442114371178f87f1d" -> "sha256:03ba610c3e4f0dc6aa4af3282779fc622f12830724fb68880006452b285afc0c" [label=""];
  "sha256:03ba610c3e4f0dc6aa4af3282779fc622f12830724fb68880006452b285afc0c" -> "sha256:f95af668d94cbdd4a30dc24124eb579a3132b8cb3c4ed9390eaf13000c1be49e" [label=""];
}

