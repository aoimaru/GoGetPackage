[app/sources/150970298.Dockerfile]
digraph {
  "sha256:226d27dae583e7ac5f12a6466353158af2cb92472608ed47c03d056991269d0a" [label="docker-image://docker.io/library/puppet:latest" shape="ellipse"];
  "sha256:bd2462244e0ca55ca8087b338c0c17f2ad133a625f2e7c6e06aa721e04619dea" [label="/bin/sh -c yum -y install wget tar" shape="box"];
  "sha256:06aeaa0994807d7be86761a0961ec356110bb8c1b237c53a4de88ee32e8e6f57" [label="/bin/sh -c git clone https://github.com/ddrown/puppet-android-cross-compile.git /var/lib/puppet" shape="box"];
  "sha256:62ce27551089a1df1e3c5ad7d7daa4f8536036e24caaa63bf3a1250dcb94603b" [label="/bin/sh -c /var/lib/puppet/run" shape="box"];
  "sha256:84c47bd54adebe74875ecdde23161082ca74c47b7f50aa164816359d8f3110fe" [label="sha256:84c47bd54adebe74875ecdde23161082ca74c47b7f50aa164816359d8f3110fe" shape="plaintext"];
  "sha256:226d27dae583e7ac5f12a6466353158af2cb92472608ed47c03d056991269d0a" -> "sha256:bd2462244e0ca55ca8087b338c0c17f2ad133a625f2e7c6e06aa721e04619dea" [label=""];
  "sha256:bd2462244e0ca55ca8087b338c0c17f2ad133a625f2e7c6e06aa721e04619dea" -> "sha256:06aeaa0994807d7be86761a0961ec356110bb8c1b237c53a4de88ee32e8e6f57" [label=""];
  "sha256:06aeaa0994807d7be86761a0961ec356110bb8c1b237c53a4de88ee32e8e6f57" -> "sha256:62ce27551089a1df1e3c5ad7d7daa4f8536036e24caaa63bf3a1250dcb94603b" [label=""];
  "sha256:62ce27551089a1df1e3c5ad7d7daa4f8536036e24caaa63bf3a1250dcb94603b" -> "sha256:84c47bd54adebe74875ecdde23161082ca74c47b7f50aa164816359d8f3110fe" [label=""];
}

