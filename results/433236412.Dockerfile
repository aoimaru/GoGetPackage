[app/sources/433236412.Dockerfile]
digraph {
  "sha256:51f0b33e6f78f984c9ff08cea1d9d80061894d66fe5a3cbf1900204eff09d6ac" [label="docker-image://docker.io/armhf/python:3.6-alpine" shape="ellipse"];
  "sha256:a33e609b160e631c935b9e57a09c88fce19aef4df690beec32d60fa0652efd77" [label="local://context" shape="ellipse"];
  "sha256:cc3aeec103e76bd3c8e893cf60680ab51d1444f6d6b21550c3a4908218fa3349" [label="copy{src=/.qemu/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:16d79223215ff603a4d5f1141af3cf05fc9796dfe0006e94dec3d0c3246b7db0" [label="/bin/sh -c apk add --update build-base libffi-dev openssl-dev python-dev py-pip     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:37bf552a0a3c614f1ce624664f21b0fafbe6913795df07fc875210b214aebe08" [label="/bin/sh -c pip install -U pip     && pip install autobahn[twisted,asyncio,accelerate,serialization,encryption]==${AUTOBAHN_PYTHON_VERSION}" shape="box"];
  "sha256:fa43518c70777f1f8c67cae67e2d79cc053edd5f0591f807ee4adb87ac615c41" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:40b4c55160b812ee39cb8144375d8a3167d5251d02f4dbeb362ef7ba4b0905f9" [label="/bin/sh -c ln -s /app/client_tx.py /app/client.py" shape="box"];
  "sha256:79aca6a5e87728d819ebb461c131a7c3d6c26021336e36ac0d057d27f73396b4" [label="mkdir{path=/app}" shape="note"];
  "sha256:68c2b2f9d807b7008f173590019452195a8987beb12f1d0b3ced3d1001983666" [label="sha256:68c2b2f9d807b7008f173590019452195a8987beb12f1d0b3ced3d1001983666" shape="plaintext"];
  "sha256:51f0b33e6f78f984c9ff08cea1d9d80061894d66fe5a3cbf1900204eff09d6ac" -> "sha256:cc3aeec103e76bd3c8e893cf60680ab51d1444f6d6b21550c3a4908218fa3349" [label=""];
  "sha256:a33e609b160e631c935b9e57a09c88fce19aef4df690beec32d60fa0652efd77" -> "sha256:cc3aeec103e76bd3c8e893cf60680ab51d1444f6d6b21550c3a4908218fa3349" [label=""];
  "sha256:cc3aeec103e76bd3c8e893cf60680ab51d1444f6d6b21550c3a4908218fa3349" -> "sha256:16d79223215ff603a4d5f1141af3cf05fc9796dfe0006e94dec3d0c3246b7db0" [label=""];
  "sha256:16d79223215ff603a4d5f1141af3cf05fc9796dfe0006e94dec3d0c3246b7db0" -> "sha256:37bf552a0a3c614f1ce624664f21b0fafbe6913795df07fc875210b214aebe08" [label=""];
  "sha256:37bf552a0a3c614f1ce624664f21b0fafbe6913795df07fc875210b214aebe08" -> "sha256:fa43518c70777f1f8c67cae67e2d79cc053edd5f0591f807ee4adb87ac615c41" [label=""];
  "sha256:a33e609b160e631c935b9e57a09c88fce19aef4df690beec32d60fa0652efd77" -> "sha256:fa43518c70777f1f8c67cae67e2d79cc053edd5f0591f807ee4adb87ac615c41" [label=""];
  "sha256:fa43518c70777f1f8c67cae67e2d79cc053edd5f0591f807ee4adb87ac615c41" -> "sha256:40b4c55160b812ee39cb8144375d8a3167d5251d02f4dbeb362ef7ba4b0905f9" [label=""];
  "sha256:40b4c55160b812ee39cb8144375d8a3167d5251d02f4dbeb362ef7ba4b0905f9" -> "sha256:79aca6a5e87728d819ebb461c131a7c3d6c26021336e36ac0d057d27f73396b4" [label=""];
  "sha256:79aca6a5e87728d819ebb461c131a7c3d6c26021336e36ac0d057d27f73396b4" -> "sha256:68c2b2f9d807b7008f173590019452195a8987beb12f1d0b3ced3d1001983666" [label=""];
}

