[app/sources/144206932.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:364f7f9a983904b303e8c82ac9d28f72630600b71ecfaa6b25ebd0b47d9c6ccb" [label="/bin/sh -c apt update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng-dev         libzmq3-dev         pkg-config         rsync         software-properties-common         unzip         zip         zlib1g-dev         python3         python3-dev         python3-pip         python3-wheel         python3-setuptools         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:36158061bd1cf7501a9a931377612bc65cd08bf8e32f438da6bef3f06bee5df2" [label="/bin/sh -c export CLOUD_SDK_REPO=\"cloud-sdk-$(lsb_release -c -s)\" &&     echo \"deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list &&     curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - &&     apt-get update -y && apt-get install google-cloud-sdk -y" shape="box"];
  "sha256:9558cfd958c8c9012e936d5e0a4fe454c1bce36c62bfa9689fe5b6495fb11160" [label="mkdir{path=/app}" shape="note"];
  "sha256:85d27064fe6bb3ae8dcf3f9d9b0bf0fb27d061251d218f3b866f60cdc01b65fb" [label="local://context" shape="ellipse"];
  "sha256:3f09fc92874684d81c235346cda2eb09cf2b5fac551d9b25ab04531ba715bba3" [label="copy{src=/staging/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:5db10c87040837c27c9118ac8bc27bd41788061f5e852dac87c9a23d162aab9f" [label="copy{src=/staging/minigui/requirements.txt, dest=/app/minigui/requirements.txt}" shape="note"];
  "sha256:ea71aee574b945b41aca0a70206e3daa1f4743248017a345fd3e8e11b25d63e8" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:d4c27168a581d75d696e9bfb974648c341d211ade358c538ba1d5d40124b9946" [label="/bin/sh -c pip3 install -r /app/requirements.txt" shape="box"];
  "sha256:70590146f7edc17c84f6d008100a592b987c887ae21302b6e58b471ab44ef012" [label="/bin/sh -c pip3 install -r /app/minigui/requirements.txt" shape="box"];
  "sha256:e750db6af7e6f7ae319355b8f44d13b6507aeca0ad9e4498925c27ab3ad3c58f" [label="/bin/sh -c pip3 install \"tensorflow>=1.7,<1.8\"" shape="box"];
  "sha256:2222312580cf7386b0646fcf96de52dc25f4fb35d282e007d60f25b14bb60a2b" [label="copy{src=/staging, dest=/app}" shape="note"];
  "sha256:f53fa3e320565931a97388a9fbad9e42451a1f444fd4a628a788835525e0cceb" [label="mkdir{path=/app}" shape="note"];
  "sha256:b476dee229e691f712c49f475db04efb9f7cc7474a6e5203f6520a167d8ca109" [label="sha256:b476dee229e691f712c49f475db04efb9f7cc7474a6e5203f6520a167d8ca109" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:364f7f9a983904b303e8c82ac9d28f72630600b71ecfaa6b25ebd0b47d9c6ccb" [label=""];
  "sha256:364f7f9a983904b303e8c82ac9d28f72630600b71ecfaa6b25ebd0b47d9c6ccb" -> "sha256:36158061bd1cf7501a9a931377612bc65cd08bf8e32f438da6bef3f06bee5df2" [label=""];
  "sha256:36158061bd1cf7501a9a931377612bc65cd08bf8e32f438da6bef3f06bee5df2" -> "sha256:9558cfd958c8c9012e936d5e0a4fe454c1bce36c62bfa9689fe5b6495fb11160" [label=""];
  "sha256:9558cfd958c8c9012e936d5e0a4fe454c1bce36c62bfa9689fe5b6495fb11160" -> "sha256:3f09fc92874684d81c235346cda2eb09cf2b5fac551d9b25ab04531ba715bba3" [label=""];
  "sha256:85d27064fe6bb3ae8dcf3f9d9b0bf0fb27d061251d218f3b866f60cdc01b65fb" -> "sha256:3f09fc92874684d81c235346cda2eb09cf2b5fac551d9b25ab04531ba715bba3" [label=""];
  "sha256:3f09fc92874684d81c235346cda2eb09cf2b5fac551d9b25ab04531ba715bba3" -> "sha256:5db10c87040837c27c9118ac8bc27bd41788061f5e852dac87c9a23d162aab9f" [label=""];
  "sha256:85d27064fe6bb3ae8dcf3f9d9b0bf0fb27d061251d218f3b866f60cdc01b65fb" -> "sha256:5db10c87040837c27c9118ac8bc27bd41788061f5e852dac87c9a23d162aab9f" [label=""];
  "sha256:5db10c87040837c27c9118ac8bc27bd41788061f5e852dac87c9a23d162aab9f" -> "sha256:ea71aee574b945b41aca0a70206e3daa1f4743248017a345fd3e8e11b25d63e8" [label=""];
  "sha256:ea71aee574b945b41aca0a70206e3daa1f4743248017a345fd3e8e11b25d63e8" -> "sha256:d4c27168a581d75d696e9bfb974648c341d211ade358c538ba1d5d40124b9946" [label=""];
  "sha256:d4c27168a581d75d696e9bfb974648c341d211ade358c538ba1d5d40124b9946" -> "sha256:70590146f7edc17c84f6d008100a592b987c887ae21302b6e58b471ab44ef012" [label=""];
  "sha256:70590146f7edc17c84f6d008100a592b987c887ae21302b6e58b471ab44ef012" -> "sha256:e750db6af7e6f7ae319355b8f44d13b6507aeca0ad9e4498925c27ab3ad3c58f" [label=""];
  "sha256:e750db6af7e6f7ae319355b8f44d13b6507aeca0ad9e4498925c27ab3ad3c58f" -> "sha256:2222312580cf7386b0646fcf96de52dc25f4fb35d282e007d60f25b14bb60a2b" [label=""];
  "sha256:85d27064fe6bb3ae8dcf3f9d9b0bf0fb27d061251d218f3b866f60cdc01b65fb" -> "sha256:2222312580cf7386b0646fcf96de52dc25f4fb35d282e007d60f25b14bb60a2b" [label=""];
  "sha256:2222312580cf7386b0646fcf96de52dc25f4fb35d282e007d60f25b14bb60a2b" -> "sha256:f53fa3e320565931a97388a9fbad9e42451a1f444fd4a628a788835525e0cceb" [label=""];
  "sha256:f53fa3e320565931a97388a9fbad9e42451a1f444fd4a628a788835525e0cceb" -> "sha256:b476dee229e691f712c49f475db04efb9f7cc7474a6e5203f6520a167d8ca109" [label=""];
}

