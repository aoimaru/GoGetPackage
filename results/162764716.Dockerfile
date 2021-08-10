[app/sources/162764716.Dockerfile]
digraph {
  "sha256:621c41f3294b7cade90993e29e3c83bd88a9369b371dd2f390fbc943b5ff9c34" [label="docker-image://registry.centos.org/centos/centos:latest" shape="ellipse"];
  "sha256:170655359e99259e0b3eea1f42878b450582669ea63f62488b392c68111deab7" [label="/bin/sh -c yum -y install centos-release-gluster &&     yum -y install heketi heketi-client &&     yum -y clean all" shape="box"];
  "sha256:f9108b4fc08648b6d90f8c558030465bd9370d77a079d3582af1fadacab34a14" [label="local://context" shape="ellipse"];
  "sha256:6e084957b5d0e0b525b7cad90365bf5bff824fa767f87d8c95e3fa0af6c210df" [label="copy{src=/heketi.json, dest=/etc/heketi/heketi.json}" shape="note"];
  "sha256:f6f3229de1f4a66badef39ce54b51635da97655b6d1b2930a6b79671adafffa2" [label="copy{src=/heketi-start.sh, dest=/usr/bin/heketi-start.sh}" shape="note"];
  "sha256:cd1cadd3149b131d0632ba3cc97038a7d023c2c71de7149c6eb67f0de13eee83" [label="sha256:cd1cadd3149b131d0632ba3cc97038a7d023c2c71de7149c6eb67f0de13eee83" shape="plaintext"];
  "sha256:621c41f3294b7cade90993e29e3c83bd88a9369b371dd2f390fbc943b5ff9c34" -> "sha256:170655359e99259e0b3eea1f42878b450582669ea63f62488b392c68111deab7" [label=""];
  "sha256:170655359e99259e0b3eea1f42878b450582669ea63f62488b392c68111deab7" -> "sha256:6e084957b5d0e0b525b7cad90365bf5bff824fa767f87d8c95e3fa0af6c210df" [label=""];
  "sha256:f9108b4fc08648b6d90f8c558030465bd9370d77a079d3582af1fadacab34a14" -> "sha256:6e084957b5d0e0b525b7cad90365bf5bff824fa767f87d8c95e3fa0af6c210df" [label=""];
  "sha256:6e084957b5d0e0b525b7cad90365bf5bff824fa767f87d8c95e3fa0af6c210df" -> "sha256:f6f3229de1f4a66badef39ce54b51635da97655b6d1b2930a6b79671adafffa2" [label=""];
  "sha256:f9108b4fc08648b6d90f8c558030465bd9370d77a079d3582af1fadacab34a14" -> "sha256:f6f3229de1f4a66badef39ce54b51635da97655b6d1b2930a6b79671adafffa2" [label=""];
  "sha256:f6f3229de1f4a66badef39ce54b51635da97655b6d1b2930a6b79671adafffa2" -> "sha256:cd1cadd3149b131d0632ba3cc97038a7d023c2c71de7149c6eb67f0de13eee83" [label=""];
}

