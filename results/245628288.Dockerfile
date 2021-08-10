[app/sources/245628288.Dockerfile]
digraph {
  "sha256:78470e0cedace95289a7b8d924b1d3fb35deeaf1e81df9915ff6a7b25954da32" [label="docker-image://docker.io/yandex/rep:0.6.6" shape="ellipse"];
  "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" [label="/bin/sh -c sudo apt-get install -y graphviz" shape="box"];
  "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install pydot-ng" shape="box"];
  "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install keras==1.2.0" shape="box"];
  "sha256:2c196238c60a1e71de8c4f6da0d82892f59379ac16417dfb037ae5b27e57e082" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install cython==0.25.2" shape="box"];
  "sha256:27889a56dc9940e2708be62aa7bf3a8b9d14d24ba7e83bf4d4afc3a5eea6dacd" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install fastFM==0.2.9" shape="box"];
  "sha256:48fd0da19763e81c47134f13922cab6cd281c8c0e32bcf9f3a67e54bd2bd1e81" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install http://download.pytorch.org/whl/cu75/torch-0.1.11.post5-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:c93d0e8ac86ed5281f65c3a3289ae2f367b5c458e8e529b8699ebf07de426926" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install torchvision" shape="box"];
  "sha256:95d25e93ca6aed46ef4b445d0708f4970fe856a81818ed1114a81116af7359b3" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install astropy==1.3.2" shape="box"];
  "sha256:98ad6aa660116df2e298fc9ef5d71ecb12f5995aab4ca9f31dc062a961ecbbe6" [label="/bin/sh -c /root/miniconda/envs/rep_py2/bin/pip install chainer==1.22.0" shape="box"];
  "sha256:325cabd3b5a98479f1ae84bac8ea9dcdfe540a83dcde70cdd076943701b68e4f" [label="sha256:325cabd3b5a98479f1ae84bac8ea9dcdfe540a83dcde70cdd076943701b68e4f" shape="plaintext"];
  "sha256:78470e0cedace95289a7b8d924b1d3fb35deeaf1e81df9915ff6a7b25954da32" -> "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" [label=""];
  "sha256:2b0effe07438b200687520bd79e769f6d2c371a391532a232652aab1a5f984e1" -> "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" [label=""];
  "sha256:09d7eab7d7dcd47eab399f77d8aeae20ffd8de5a2a4772c88b6d0f639c4729a4" -> "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" [label=""];
  "sha256:599dbd2112b7854e9c64f1118af82e2577a796a844c90d14d8dd0c7f6fcb9dd6" -> "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" [label=""];
  "sha256:759c8063a38c7434a5824750c19f7a321f451627040c53182de08949c83e8a74" -> "sha256:2c196238c60a1e71de8c4f6da0d82892f59379ac16417dfb037ae5b27e57e082" [label=""];
  "sha256:2c196238c60a1e71de8c4f6da0d82892f59379ac16417dfb037ae5b27e57e082" -> "sha256:27889a56dc9940e2708be62aa7bf3a8b9d14d24ba7e83bf4d4afc3a5eea6dacd" [label=""];
  "sha256:27889a56dc9940e2708be62aa7bf3a8b9d14d24ba7e83bf4d4afc3a5eea6dacd" -> "sha256:48fd0da19763e81c47134f13922cab6cd281c8c0e32bcf9f3a67e54bd2bd1e81" [label=""];
  "sha256:48fd0da19763e81c47134f13922cab6cd281c8c0e32bcf9f3a67e54bd2bd1e81" -> "sha256:c93d0e8ac86ed5281f65c3a3289ae2f367b5c458e8e529b8699ebf07de426926" [label=""];
  "sha256:c93d0e8ac86ed5281f65c3a3289ae2f367b5c458e8e529b8699ebf07de426926" -> "sha256:95d25e93ca6aed46ef4b445d0708f4970fe856a81818ed1114a81116af7359b3" [label=""];
  "sha256:95d25e93ca6aed46ef4b445d0708f4970fe856a81818ed1114a81116af7359b3" -> "sha256:98ad6aa660116df2e298fc9ef5d71ecb12f5995aab4ca9f31dc062a961ecbbe6" [label=""];
  "sha256:98ad6aa660116df2e298fc9ef5d71ecb12f5995aab4ca9f31dc062a961ecbbe6" -> "sha256:325cabd3b5a98479f1ae84bac8ea9dcdfe540a83dcde70cdd076943701b68e4f" [label=""];
}

