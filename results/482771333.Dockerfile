[app/sources/482771333.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ddc86470e0662a8c12abba29872f4187196f8f3c0d20e4ed3ecef04d0683a6e7" [label="/bin/sh -c mkdir -p /opt/project" shape="box"];
  "sha256:f9aa670a86888252a0023c8ce1bf94aa9d6d708d811870e67c2270f91169febe" [label="mkdir{path=/opt/project}" shape="note"];
  "sha256:ea8de3f9d8722688e5c33bb8a936e6a89c2c86a95b35e446511b6ed42b551707" [label="/bin/sh -c apt-get update &&   apt-get install -y apt-transport-https ca-certificates unzip curl libcurl3 wget" shape="box"];
  "sha256:277e56b008cee9d35934e01f2a7513afc6d06a23e3642ccf0640df42e7d43563" [label="/bin/sh -c apt-get -y update &&     apt-get -y install python python-setuptools python-dev build-essential git" shape="box"];
  "sha256:6d052322f908d6065d12211f8b837cc5465809025aa16483cb42ae8fd7801476" [label="/bin/sh -c curl -sSL https://sdk.cloud.google.com | bash &&   /root/google-cloud-sdk/bin/gcloud config set --installation component_manager/disable_update_check true &&   /root/google-cloud-sdk/bin/gcloud components install beta" shape="box"];
  "sha256:a9fbea181288e75dfbf9daaa9130585ca2d4469423ff60f4c87585cc1219a289" [label="/bin/sh -c easy_install pip &&     pip install --upgrade pip" shape="box"];
  "sha256:f0877dc3c2bfe7730ea5968920a10cdb0a801724686172451e8af30216789e71" [label="/bin/sh -c pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.2.0-cp27-none-linux_x86_64.whl &&     pip install google-api-python-client pyyaml pytz newlinejson python-dateutil yattag     ujson pandas-gbq &&     pip install git+https://github.com/GlobalFishingWatch/bqtools.git" shape="box"];
  "sha256:4c9b72a40dbc583b5fa8cf2106306fdb54623c5f2944753936171ee9ab005305" [label="local://context" shape="ellipse"];
  "sha256:d99036c59342fd95a5c9969a02ba2d7f6d6c0ad8b257964209b0c92c62f9ed91" [label="copy{src=/, dest=/opt/project}" shape="note"];
  "sha256:02cb015215db1944c0b3f7a83bdd3d346faac7eb743c00d88ddd9f7d3ee41772" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:ee4676a1225b65581d6ae673a817d1df4372f4c32020c46affe11f99c91d075b" [label="sha256:ee4676a1225b65581d6ae673a817d1df4372f4c32020c46affe11f99c91d075b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:ddc86470e0662a8c12abba29872f4187196f8f3c0d20e4ed3ecef04d0683a6e7" [label=""];
  "sha256:ddc86470e0662a8c12abba29872f4187196f8f3c0d20e4ed3ecef04d0683a6e7" -> "sha256:f9aa670a86888252a0023c8ce1bf94aa9d6d708d811870e67c2270f91169febe" [label=""];
  "sha256:f9aa670a86888252a0023c8ce1bf94aa9d6d708d811870e67c2270f91169febe" -> "sha256:ea8de3f9d8722688e5c33bb8a936e6a89c2c86a95b35e446511b6ed42b551707" [label=""];
  "sha256:ea8de3f9d8722688e5c33bb8a936e6a89c2c86a95b35e446511b6ed42b551707" -> "sha256:277e56b008cee9d35934e01f2a7513afc6d06a23e3642ccf0640df42e7d43563" [label=""];
  "sha256:277e56b008cee9d35934e01f2a7513afc6d06a23e3642ccf0640df42e7d43563" -> "sha256:6d052322f908d6065d12211f8b837cc5465809025aa16483cb42ae8fd7801476" [label=""];
  "sha256:6d052322f908d6065d12211f8b837cc5465809025aa16483cb42ae8fd7801476" -> "sha256:a9fbea181288e75dfbf9daaa9130585ca2d4469423ff60f4c87585cc1219a289" [label=""];
  "sha256:a9fbea181288e75dfbf9daaa9130585ca2d4469423ff60f4c87585cc1219a289" -> "sha256:f0877dc3c2bfe7730ea5968920a10cdb0a801724686172451e8af30216789e71" [label=""];
  "sha256:f0877dc3c2bfe7730ea5968920a10cdb0a801724686172451e8af30216789e71" -> "sha256:d99036c59342fd95a5c9969a02ba2d7f6d6c0ad8b257964209b0c92c62f9ed91" [label=""];
  "sha256:4c9b72a40dbc583b5fa8cf2106306fdb54623c5f2944753936171ee9ab005305" -> "sha256:d99036c59342fd95a5c9969a02ba2d7f6d6c0ad8b257964209b0c92c62f9ed91" [label=""];
  "sha256:d99036c59342fd95a5c9969a02ba2d7f6d6c0ad8b257964209b0c92c62f9ed91" -> "sha256:02cb015215db1944c0b3f7a83bdd3d346faac7eb743c00d88ddd9f7d3ee41772" [label=""];
  "sha256:02cb015215db1944c0b3f7a83bdd3d346faac7eb743c00d88ddd9f7d3ee41772" -> "sha256:ee4676a1225b65581d6ae673a817d1df4372f4c32020c46affe11f99c91d075b" [label=""];
}

