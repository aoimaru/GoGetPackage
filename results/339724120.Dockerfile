[app/sources/339724120.Dockerfile]
digraph {
  "sha256:8be0c99b14b2b46bc4d1520fd3775846c4f417d944d805f3d65750f9842b86f7" [label="docker-image://nvcr.io/nvidia/tensorflow:18.02-py3@sha256:899f5407ac404eb94c8277d8ff845e2946e1e5e24639aa3b6e75f15de12a7120" shape="ellipse"];
  "sha256:008b4f97673ec864c89017abb9f6251cc21426426b49799c29bd5aa6c3a436dd" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:f23f6653f2f4621bf60d6f9120a6920b9bf57ca3f1898460432dc61e5aa08273" [label="/bin/sh -c apt-get update    && apt-get install -y       build-essential       libssl-dev       libffi-dev    && apt-get clean    && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1985fca4569570c361fd54a1eb560850e18eded6f164f7c6c74e531f6e646605" [label="/bin/sh -c pip install --upgrade pip    && pip install --upgrade       virtualenv       pyxdg       python_speech_features       sox       pandas" shape="box"];
  "sha256:0efce56ef75066e577722dcc3036695059b91217f9173adc3b45ca8c5530dca6" [label="mkdir{path=/work}" shape="note"];
  "sha256:7310c30ccf96e7d1156dc0b7a745a8bc650299fa2c314469da12fa4bf6fb2a85" [label="/bin/sh -c git clone https://github.com/mozilla/DeepSpeech    && cd DeepSpeech    && pip install -r requirements.txt" shape="box"];
  "sha256:04c30ea0118771cb4695db83b569668492b300db60b364e7518a7ea2470dce92" [label="/bin/sh -c wget $NATIVE_CLIENT_URL -P /tmp         && cd /tmp         && tar -xJvf native_client.tar.xz         && cp -r *.so /work/DeepSpeech/native_client/" shape="box"];
  "sha256:8ecd80d679eec5a281bf04660e218da0b98d9aadd392dcbda6e66d0e06bd8a19" [label="/bin/sh -c export LD_LIBRARY_PATH=/work/DeepSpeech/native_client" shape="box"];
  "sha256:543cc079816e1b4db210be800136d78fc5f4f1d6a44c4c002b3fc6b4d9408a8f" [label="/bin/sh -c pip install $DEEPSPEECH_WHL_URL" shape="box"];
  "sha256:32a69c27835c1cb58973747459fe846d0c67c34b4048df8a14d5f6f8bd997eb8" [label="mkdir{path=/work/DeepSpeech}" shape="note"];
  "sha256:89d19a1ba4fc0a2b9e322265ddb33fc572c10865b17f982e9729acb57bd3299f" [label="sha256:89d19a1ba4fc0a2b9e322265ddb33fc572c10865b17f982e9729acb57bd3299f" shape="plaintext"];
  "sha256:8be0c99b14b2b46bc4d1520fd3775846c4f417d944d805f3d65750f9842b86f7" -> "sha256:008b4f97673ec864c89017abb9f6251cc21426426b49799c29bd5aa6c3a436dd" [label=""];
  "sha256:008b4f97673ec864c89017abb9f6251cc21426426b49799c29bd5aa6c3a436dd" -> "sha256:f23f6653f2f4621bf60d6f9120a6920b9bf57ca3f1898460432dc61e5aa08273" [label=""];
  "sha256:f23f6653f2f4621bf60d6f9120a6920b9bf57ca3f1898460432dc61e5aa08273" -> "sha256:1985fca4569570c361fd54a1eb560850e18eded6f164f7c6c74e531f6e646605" [label=""];
  "sha256:1985fca4569570c361fd54a1eb560850e18eded6f164f7c6c74e531f6e646605" -> "sha256:0efce56ef75066e577722dcc3036695059b91217f9173adc3b45ca8c5530dca6" [label=""];
  "sha256:0efce56ef75066e577722dcc3036695059b91217f9173adc3b45ca8c5530dca6" -> "sha256:7310c30ccf96e7d1156dc0b7a745a8bc650299fa2c314469da12fa4bf6fb2a85" [label=""];
  "sha256:7310c30ccf96e7d1156dc0b7a745a8bc650299fa2c314469da12fa4bf6fb2a85" -> "sha256:04c30ea0118771cb4695db83b569668492b300db60b364e7518a7ea2470dce92" [label=""];
  "sha256:04c30ea0118771cb4695db83b569668492b300db60b364e7518a7ea2470dce92" -> "sha256:8ecd80d679eec5a281bf04660e218da0b98d9aadd392dcbda6e66d0e06bd8a19" [label=""];
  "sha256:8ecd80d679eec5a281bf04660e218da0b98d9aadd392dcbda6e66d0e06bd8a19" -> "sha256:543cc079816e1b4db210be800136d78fc5f4f1d6a44c4c002b3fc6b4d9408a8f" [label=""];
  "sha256:543cc079816e1b4db210be800136d78fc5f4f1d6a44c4c002b3fc6b4d9408a8f" -> "sha256:32a69c27835c1cb58973747459fe846d0c67c34b4048df8a14d5f6f8bd997eb8" [label=""];
  "sha256:32a69c27835c1cb58973747459fe846d0c67c34b4048df8a14d5f6f8bd997eb8" -> "sha256:89d19a1ba4fc0a2b9e322265ddb33fc572c10865b17f982e9729acb57bd3299f" [label=""];
}

