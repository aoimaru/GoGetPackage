[app/sources/472737466.Dockerfile]
digraph {
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" [label="docker-image://quay.io/pypa/manylinux1_x86_64@sha256:a18711aa1ffe3e65e489d808d17f68f5c75c9a0275d657aa52aa04bc79cdfddb" shape="ellipse"];
  "sha256:d28333ed61926f22c6d29fb27a04a639668c7ec18249918a7e0745bcbdd9670b" [label="local://context" shape="ellipse"];
  "sha256:0565e01cdaf74de0adbe98592298bcd4e0fe3aa8b98c9d917904ef20849cad08" [label="copy{src=/, dest=/kimimaro}" shape="note"];
  "sha256:43e67e3c93fa41d78c65ddbeaaf309e225d9ddb2c72869bed63d659d77d70298" [label="mkdir{path=/kimimaro}" shape="note"];
  "sha256:ec42c26bf174e5c329a2e1e63961332683b48040e8864bff1fffa8bfbf4dbd1b" [label="/bin/sh -c rm -rf *.so build __pycache__ dist" shape="box"];
  "sha256:f64bd8f48f1685bc94f0ab3c78240ff51c27d36b2f139c50c39b3f14b25a5ed4" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/pip2.7 install pip --upgrade" shape="box"];
  "sha256:9bb903ef97e788e4ba72af45b73cd3573eae25cb19e289d5f79b1a4b79b300bc" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/pip2.7 install numpy" shape="box"];
  "sha256:1f298cedfcd58daaffe81618dd19203e9e6ceffd1e764fad3947b406d1643c73" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/pip2.7 install -r requirements.txt" shape="box"];
  "sha256:c76a3d888737327438dddc3b1c92d4827a8eb0cfaf3310527b121eb9ad0fbab1" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/pip3.5 install pip --upgrade" shape="box"];
  "sha256:540558b2b7f00d8c657243f676bb0643dfbad02d14996e0d9995ee5a1a3382a7" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/pip3.5 install numpy" shape="box"];
  "sha256:70287b3da31cc0907d473b83c5a68575a2d7a0f7a53d35c36c048aec1819ed17" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/pip3.5 install -r requirements.txt" shape="box"];
  "sha256:143ee13ef110292125dd648d246b843e13c195ec4b81f914a4b1960310c6e598" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/pip3.6 install pip --upgrade" shape="box"];
  "sha256:161036c9f1c68679b04860286eb3189fffb2128a75743f19579bde2792d5376f" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/pip3.6 install numpy" shape="box"];
  "sha256:89eec054bc7e59dfa2963581e6df9ec4c557d39c0e225fbf5c23280cbb3685ec" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/pip3.6 install -r requirements.txt" shape="box"];
  "sha256:9bd775516ed7ba492da0c9a3798a3470431700beb315b450d59039b05f5a1301" [label="/bin/sh -c /opt/python/cp37-cp37m/bin/pip3.7 install pip --upgrade" shape="box"];
  "sha256:39bd08d949364bfbbd0e23936395a887e98356fc6b0b2c778124842348709abf" [label="/bin/sh -c /opt/python/cp37-cp37m/bin/pip3.7 install numpy" shape="box"];
  "sha256:21d1f0b803228f5e866cff71fc2be470034cdbe12152c4211818c3235bf7422c" [label="/bin/sh -c /opt/python/cp37-cp37m/bin/pip3.7 install -r requirements.txt" shape="box"];
  "sha256:67e391de82ea8a14a84cf6e17144e5da51718a486193544edb0ab0a0269f8dbc" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/python2.7 setup.py sdist bdist_wheel" shape="box"];
  "sha256:ab387b8bb7ecb7daf9d13c8dc46ab831134e92b88bb934d610a5275c74ef8183" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/python3.5 setup.py sdist bdist_wheel" shape="box"];
  "sha256:88c401bd06f5fc48097f6eff6963bfd6726ac6fdfc28acea9811b226d85c034a" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/python3.6 setup.py sdist bdist_wheel" shape="box"];
  "sha256:8092b52931080bbbefc01ea773f3c862a00bbf817548d9513afd2f8456484c3c" [label="/bin/sh -c /opt/python/cp37-cp37m/bin/python3.7 setup.py sdist bdist_wheel" shape="box"];
  "sha256:882771f36724b40d580cd4aef107d25b00916b10e57e335009806cd47c271a28" [label="/bin/sh -c for whl in `ls dist/*.whl`; do auditwheel repair $whl; done" shape="box"];
  "sha256:77b70dce287d08aebcbd92d57891ea834ce0219b304b3f8736201dbf28e3e4bf" [label="sha256:77b70dce287d08aebcbd92d57891ea834ce0219b304b3f8736201dbf28e3e4bf" shape="plaintext"];
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" -> "sha256:0565e01cdaf74de0adbe98592298bcd4e0fe3aa8b98c9d917904ef20849cad08" [label=""];
  "sha256:d28333ed61926f22c6d29fb27a04a639668c7ec18249918a7e0745bcbdd9670b" -> "sha256:0565e01cdaf74de0adbe98592298bcd4e0fe3aa8b98c9d917904ef20849cad08" [label=""];
  "sha256:0565e01cdaf74de0adbe98592298bcd4e0fe3aa8b98c9d917904ef20849cad08" -> "sha256:43e67e3c93fa41d78c65ddbeaaf309e225d9ddb2c72869bed63d659d77d70298" [label=""];
  "sha256:43e67e3c93fa41d78c65ddbeaaf309e225d9ddb2c72869bed63d659d77d70298" -> "sha256:ec42c26bf174e5c329a2e1e63961332683b48040e8864bff1fffa8bfbf4dbd1b" [label=""];
  "sha256:ec42c26bf174e5c329a2e1e63961332683b48040e8864bff1fffa8bfbf4dbd1b" -> "sha256:f64bd8f48f1685bc94f0ab3c78240ff51c27d36b2f139c50c39b3f14b25a5ed4" [label=""];
  "sha256:f64bd8f48f1685bc94f0ab3c78240ff51c27d36b2f139c50c39b3f14b25a5ed4" -> "sha256:9bb903ef97e788e4ba72af45b73cd3573eae25cb19e289d5f79b1a4b79b300bc" [label=""];
  "sha256:9bb903ef97e788e4ba72af45b73cd3573eae25cb19e289d5f79b1a4b79b300bc" -> "sha256:1f298cedfcd58daaffe81618dd19203e9e6ceffd1e764fad3947b406d1643c73" [label=""];
  "sha256:1f298cedfcd58daaffe81618dd19203e9e6ceffd1e764fad3947b406d1643c73" -> "sha256:c76a3d888737327438dddc3b1c92d4827a8eb0cfaf3310527b121eb9ad0fbab1" [label=""];
  "sha256:c76a3d888737327438dddc3b1c92d4827a8eb0cfaf3310527b121eb9ad0fbab1" -> "sha256:540558b2b7f00d8c657243f676bb0643dfbad02d14996e0d9995ee5a1a3382a7" [label=""];
  "sha256:540558b2b7f00d8c657243f676bb0643dfbad02d14996e0d9995ee5a1a3382a7" -> "sha256:70287b3da31cc0907d473b83c5a68575a2d7a0f7a53d35c36c048aec1819ed17" [label=""];
  "sha256:70287b3da31cc0907d473b83c5a68575a2d7a0f7a53d35c36c048aec1819ed17" -> "sha256:143ee13ef110292125dd648d246b843e13c195ec4b81f914a4b1960310c6e598" [label=""];
  "sha256:143ee13ef110292125dd648d246b843e13c195ec4b81f914a4b1960310c6e598" -> "sha256:161036c9f1c68679b04860286eb3189fffb2128a75743f19579bde2792d5376f" [label=""];
  "sha256:161036c9f1c68679b04860286eb3189fffb2128a75743f19579bde2792d5376f" -> "sha256:89eec054bc7e59dfa2963581e6df9ec4c557d39c0e225fbf5c23280cbb3685ec" [label=""];
  "sha256:89eec054bc7e59dfa2963581e6df9ec4c557d39c0e225fbf5c23280cbb3685ec" -> "sha256:9bd775516ed7ba492da0c9a3798a3470431700beb315b450d59039b05f5a1301" [label=""];
  "sha256:9bd775516ed7ba492da0c9a3798a3470431700beb315b450d59039b05f5a1301" -> "sha256:39bd08d949364bfbbd0e23936395a887e98356fc6b0b2c778124842348709abf" [label=""];
  "sha256:39bd08d949364bfbbd0e23936395a887e98356fc6b0b2c778124842348709abf" -> "sha256:21d1f0b803228f5e866cff71fc2be470034cdbe12152c4211818c3235bf7422c" [label=""];
  "sha256:21d1f0b803228f5e866cff71fc2be470034cdbe12152c4211818c3235bf7422c" -> "sha256:67e391de82ea8a14a84cf6e17144e5da51718a486193544edb0ab0a0269f8dbc" [label=""];
  "sha256:67e391de82ea8a14a84cf6e17144e5da51718a486193544edb0ab0a0269f8dbc" -> "sha256:ab387b8bb7ecb7daf9d13c8dc46ab831134e92b88bb934d610a5275c74ef8183" [label=""];
  "sha256:ab387b8bb7ecb7daf9d13c8dc46ab831134e92b88bb934d610a5275c74ef8183" -> "sha256:88c401bd06f5fc48097f6eff6963bfd6726ac6fdfc28acea9811b226d85c034a" [label=""];
  "sha256:88c401bd06f5fc48097f6eff6963bfd6726ac6fdfc28acea9811b226d85c034a" -> "sha256:8092b52931080bbbefc01ea773f3c862a00bbf817548d9513afd2f8456484c3c" [label=""];
  "sha256:8092b52931080bbbefc01ea773f3c862a00bbf817548d9513afd2f8456484c3c" -> "sha256:882771f36724b40d580cd4aef107d25b00916b10e57e335009806cd47c271a28" [label=""];
  "sha256:882771f36724b40d580cd4aef107d25b00916b10e57e335009806cd47c271a28" -> "sha256:77b70dce287d08aebcbd92d57891ea834ce0219b304b3f8736201dbf28e3e4bf" [label=""];
}

