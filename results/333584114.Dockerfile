[app/sources/333584114.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a2566100ad2d04b78766eb9ebe0f934698534a0a0abc3c2df3d50a435ec54bbb" [label="/bin/sh -c apt-get -y upgrade &&     apt-get -y dist-upgrade &&     apt-get update" shape="box"];
  "sha256:e458a14aa4eb829c98fb9d1f2946b09ec68da807cae488882f3b999314d20118" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install     wget unzip" shape="box"];
  "sha256:edbf2418d8ca030e9a8cbf9cc35f0726412eb7f8c5b713c0f96089079081a38d" [label="/bin/sh -c mkdir -p /vialer/ &&     cd /vialer/ &&     wget https://github.com/VoIPGRID/Vialer-pjsip-iOS/archive/3.2.0.zip &&     wget https://github.com/VoIPGRID/Vialer-pjsip-iOS/blob/3.2.0/VialerPJSIP.framework/Versions/A/VialerPJSIP?raw=true &&     unzip 3.2.0.zip" shape="box"];
  "sha256:8bfd1358d5e558e76a2cb0c7c9c5c54601b6ca5acd53eb4b6d4d1ecab8ab4040" [label="/bin/sh -c mkdir -p /dist/ios/VialerPJSIP.framework &&     mv /vialer/Vialer-pjsip-iOS-3.2.0/VialerPJSIP.framework/Versions/Current/* /dist/ios/VialerPJSIP.framework &&     mv /vialer/VialerPJSIP?raw=true /dist/ios/VialerPJSIP.framework/VialerPJSIP" shape="box"];
  "sha256:a37e1ad3dff86ed4d7127591a6954bdaeaaf0e47370cc3afbbb8b0f862894c81" [label="sha256:a37e1ad3dff86ed4d7127591a6954bdaeaaf0e47370cc3afbbb8b0f862894c81" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a2566100ad2d04b78766eb9ebe0f934698534a0a0abc3c2df3d50a435ec54bbb" [label=""];
  "sha256:a2566100ad2d04b78766eb9ebe0f934698534a0a0abc3c2df3d50a435ec54bbb" -> "sha256:e458a14aa4eb829c98fb9d1f2946b09ec68da807cae488882f3b999314d20118" [label=""];
  "sha256:e458a14aa4eb829c98fb9d1f2946b09ec68da807cae488882f3b999314d20118" -> "sha256:edbf2418d8ca030e9a8cbf9cc35f0726412eb7f8c5b713c0f96089079081a38d" [label=""];
  "sha256:edbf2418d8ca030e9a8cbf9cc35f0726412eb7f8c5b713c0f96089079081a38d" -> "sha256:8bfd1358d5e558e76a2cb0c7c9c5c54601b6ca5acd53eb4b6d4d1ecab8ab4040" [label=""];
  "sha256:8bfd1358d5e558e76a2cb0c7c9c5c54601b6ca5acd53eb4b6d4d1ecab8ab4040" -> "sha256:a37e1ad3dff86ed4d7127591a6954bdaeaaf0e47370cc3afbbb8b0f862894c81" [label=""];
}

