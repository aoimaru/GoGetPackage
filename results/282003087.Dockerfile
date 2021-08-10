[app/sources/282003087.Dockerfile]
digraph {
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" [label="docker-image://docker.io/library/jetty:9-jre8" shape="ellipse"];
  "sha256:da66e0a02cdb0bff4e754882511e2cdc652421218abe0fcc6db4cba41c24cad4" [label="/bin/sh -c apt-get update && apt-get -y upgrade" shape="box"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:1bfbbee57c2d9f0afc7e88cb9215eef0bb2f4d5e28e6088e77f0944e3625002e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends  unzip         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6428d4cd8ba60ed981e40c82db6b3fee3929cce6150cee38f7e1cd63d444adb5" [label="local://context" shape="ellipse"];
  "sha256:2a18cff02d78b9241dd274cc296554f3db92fe4609b512e9cfab2262a2df3c6c" [label="copy{src=/AppServerAgent-.zip, dest=/}" shape="note"];
  "sha256:3db268769772b410ca5630420d4094be392a7a0e0329dd719bff12b4249894fa" [label="/bin/sh -c echo \"${APPD_AGENT_SHA256} *AppServerAgent-${APPD_AGENT_VERSION}.zip\" >> appd_checksum     && sha256sum -c appd_checksum     && rm appd_checksum     && unzip -oq AppServerAgent-${APPD_AGENT_VERSION}.zip -d /tmp" shape="box"];
  "sha256:37d654240559da61da0913268fca58e1a9592d35d6c97db23395f0ce0b8b8301" [label="copy{src=/tmp, dest=/opt/appdynamics}" shape="note"];
  "sha256:534244305d184697255a0f2a6f956bc555f04ea9bfa56b0bd9e9b81cc7a421b7" [label="sha256:534244305d184697255a0f2a6f956bc555f04ea9bfa56b0bd9e9b81cc7a421b7" shape="plaintext"];
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" -> "sha256:da66e0a02cdb0bff4e754882511e2cdc652421218abe0fcc6db4cba41c24cad4" [label=""];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:1bfbbee57c2d9f0afc7e88cb9215eef0bb2f4d5e28e6088e77f0944e3625002e" [label=""];
  "sha256:1bfbbee57c2d9f0afc7e88cb9215eef0bb2f4d5e28e6088e77f0944e3625002e" -> "sha256:2a18cff02d78b9241dd274cc296554f3db92fe4609b512e9cfab2262a2df3c6c" [label=""];
  "sha256:6428d4cd8ba60ed981e40c82db6b3fee3929cce6150cee38f7e1cd63d444adb5" -> "sha256:2a18cff02d78b9241dd274cc296554f3db92fe4609b512e9cfab2262a2df3c6c" [label=""];
  "sha256:2a18cff02d78b9241dd274cc296554f3db92fe4609b512e9cfab2262a2df3c6c" -> "sha256:3db268769772b410ca5630420d4094be392a7a0e0329dd719bff12b4249894fa" [label=""];
  "sha256:da66e0a02cdb0bff4e754882511e2cdc652421218abe0fcc6db4cba41c24cad4" -> "sha256:37d654240559da61da0913268fca58e1a9592d35d6c97db23395f0ce0b8b8301" [label=""];
  "sha256:3db268769772b410ca5630420d4094be392a7a0e0329dd719bff12b4249894fa" -> "sha256:37d654240559da61da0913268fca58e1a9592d35d6c97db23395f0ce0b8b8301" [label=""];
  "sha256:37d654240559da61da0913268fca58e1a9592d35d6c97db23395f0ce0b8b8301" -> "sha256:534244305d184697255a0f2a6f956bc555f04ea9bfa56b0bd9e9b81cc7a421b7" [label=""];
}

