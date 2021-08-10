[app/sources/171179091.Dockerfile]
digraph {
  "sha256:73e8195b75b07827024ba431d2fb2228663df3b6f8db4698202314f5976b0d37" [label="https://github.com/dokku/plugn/releases/download/v0.3.0/plugn_0.3.0_linux_x86_64.tgz" shape="ellipse"];
  "sha256:735b02568670372a81942f41412c91183877ee34f4d2667f04a8de7608c742e2" [label="https://github.com/progrium/dockerhook/releases/download/v0.1.0/dockerhook_0.1.0_linux_x86_64.tgz" shape="ellipse"];
  "sha256:1f192a4c1ba49960c360dac8610f040b3cd9b10e899d21060ebc3318410d1bcb" [label="https://get.docker.com/builds/Linux/x86_64/docker-17.03.0-ce.tgz" shape="ellipse"];
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" [label="docker-image://docker.io/library/ubuntu:14.04.5" shape="ellipse"];
  "sha256:34f9c95f890c82c328fb20b5c052cb5e8920bcc949deb7655addd5621432da79" [label="/bin/sh -c apt-get update && apt-get install -y curl jq git" shape="box"];
  "sha256:abf09ac10d444d84e6efb4c6188c0bcef37f5b8ada1e100af86a25676ef7a477" [label="copy{src=/docker-17.03.0-ce.tgz, dest=/tmp/docker.tgz}" shape="note"];
  "sha256:c19d795affaf09b883b7febe33c8e052bdb6a854278d7593e4e042f94d94ff2a" [label="copy{src=/dockerhook_0.1.0_linux_x86_64.tgz, dest=/tmp/dockerhook.tgz}" shape="note"];
  "sha256:38562240850a653b8ef42db3241369aa03b29ac8dba85cbb446e43d824503760" [label="copy{src=/plugn_0.3.0_linux_x86_64.tgz, dest=/tmp/plugn.tgz}" shape="note"];
  "sha256:df343b84bb5ed49c942cbb117a900eb3736d04ddadfb9313c74d233c3207447c" [label="/bin/sh -c cd /tmp && tar -zxf /tmp/docker.tgz     && rm /tmp/docker.tgz && mv /tmp/docker/* /bin     && cd /bin && tar -zxf /tmp/dockerhook.tgz && rm /tmp/dockerhook.tgz     && cd /bin && tar -zxf /tmp/plugn.tgz      && rm /tmp/plugn.tgz     && chmod +x /bin/docker* /bin/plugn     && chown root:root /bin/docker* /bin/plugn" shape="box"];
  "sha256:a4a1af64b0f70d990cb9a15f2a8bc0c721434e483c2538848d345a07aadd7497" [label="local://context" shape="ellipse"];
  "sha256:557114709d5653c870d34d27e513cc703d0b28562f096f9b3ca37a567889393a" [label="copy{src=/plugins, dest=/plugins}" shape="note"];
  "sha256:f942b6ec04228a254ea1df6d9c07a9a9cb7b305b71a99d9416450cb96e89d467" [label="copy{src=/start, dest=/start}" shape="note"];
  "sha256:f93b5821b2352e98b84bf1824c330267aee6c25d3815ffc6f578768d8a2939d5" [label="sha256:f93b5821b2352e98b84bf1824c330267aee6c25d3815ffc6f578768d8a2939d5" shape="plaintext"];
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" -> "sha256:34f9c95f890c82c328fb20b5c052cb5e8920bcc949deb7655addd5621432da79" [label=""];
  "sha256:34f9c95f890c82c328fb20b5c052cb5e8920bcc949deb7655addd5621432da79" -> "sha256:abf09ac10d444d84e6efb4c6188c0bcef37f5b8ada1e100af86a25676ef7a477" [label=""];
  "sha256:1f192a4c1ba49960c360dac8610f040b3cd9b10e899d21060ebc3318410d1bcb" -> "sha256:abf09ac10d444d84e6efb4c6188c0bcef37f5b8ada1e100af86a25676ef7a477" [label=""];
  "sha256:abf09ac10d444d84e6efb4c6188c0bcef37f5b8ada1e100af86a25676ef7a477" -> "sha256:c19d795affaf09b883b7febe33c8e052bdb6a854278d7593e4e042f94d94ff2a" [label=""];
  "sha256:735b02568670372a81942f41412c91183877ee34f4d2667f04a8de7608c742e2" -> "sha256:c19d795affaf09b883b7febe33c8e052bdb6a854278d7593e4e042f94d94ff2a" [label=""];
  "sha256:c19d795affaf09b883b7febe33c8e052bdb6a854278d7593e4e042f94d94ff2a" -> "sha256:38562240850a653b8ef42db3241369aa03b29ac8dba85cbb446e43d824503760" [label=""];
  "sha256:73e8195b75b07827024ba431d2fb2228663df3b6f8db4698202314f5976b0d37" -> "sha256:38562240850a653b8ef42db3241369aa03b29ac8dba85cbb446e43d824503760" [label=""];
  "sha256:38562240850a653b8ef42db3241369aa03b29ac8dba85cbb446e43d824503760" -> "sha256:df343b84bb5ed49c942cbb117a900eb3736d04ddadfb9313c74d233c3207447c" [label=""];
  "sha256:df343b84bb5ed49c942cbb117a900eb3736d04ddadfb9313c74d233c3207447c" -> "sha256:557114709d5653c870d34d27e513cc703d0b28562f096f9b3ca37a567889393a" [label=""];
  "sha256:a4a1af64b0f70d990cb9a15f2a8bc0c721434e483c2538848d345a07aadd7497" -> "sha256:557114709d5653c870d34d27e513cc703d0b28562f096f9b3ca37a567889393a" [label=""];
  "sha256:557114709d5653c870d34d27e513cc703d0b28562f096f9b3ca37a567889393a" -> "sha256:f942b6ec04228a254ea1df6d9c07a9a9cb7b305b71a99d9416450cb96e89d467" [label=""];
  "sha256:a4a1af64b0f70d990cb9a15f2a8bc0c721434e483c2538848d345a07aadd7497" -> "sha256:f942b6ec04228a254ea1df6d9c07a9a9cb7b305b71a99d9416450cb96e89d467" [label=""];
  "sha256:f942b6ec04228a254ea1df6d9c07a9a9cb7b305b71a99d9416450cb96e89d467" -> "sha256:f93b5821b2352e98b84bf1824c330267aee6c25d3815ffc6f578768d8a2939d5" [label=""];
}

