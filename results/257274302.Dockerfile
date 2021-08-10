[app/sources/257274302.Dockerfile]
digraph {
  "sha256:ad65426ddd8d581cbbdd3b5a781bb88abdf866180a4cd3708ae80792f5d46a67" [label="docker-image://docker.io/nvidia/cuda:10.0-base-ubuntu18.04" shape="ellipse"];
  "sha256:fc8474e294f8d43dd9aa0d10876af88c0ee36622862d14b406e9c8578d473cb6" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cuda-command-line-tools-10-0         cuda-cublas-10-0         cuda-cufft-10-0         cuda-curand-10-0         cuda-cusolver-10-0         cuda-cusparse-10-0         libcudnn7=7.4.1.5-1+cuda10.0         libfreetype6-dev         libhdf5-serial-dev         libzmq3-dev         libpng-dev         pkg-config         software-properties-common         unzip         lsb-core         curl" shape="box"];
  "sha256:c8322d29f598431e7e39a091d33c19f71ab1f5a063291f73851c1f6f8ba5cc5e" [label="/bin/sh -c apt-get update &&         apt-get install nvinfer-runtime-trt-repo-ubuntu1804-5.0.2-ga-cuda10.0         && apt-get update         && apt-get install -y --no-install-recommends libnvinfer5=5.0.2-1+cuda10.0         && apt-get clean" shape="box"];
  "sha256:68fb1edfef4decdaf131242106adddfccbecb3f1847047f72f15ab07cf990de9" [label="/bin/sh -c echo \"deb http://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list" shape="box"];
  "sha256:931fccdc68f88a60bf14f8d9845c5cf7d6fdf61774ecfdfbdfdeeeb054eb9bc4" [label="/bin/sh -c curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:5b144e46c3898c175b848459b6ffe5cad504f9a38a9f06894d1159b1803dacef" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends       git       build-essential       ca-certificates       wget       htop       zip       google-cloud-sdk" shape="box"];
  "sha256:4320653855d835a3900cd0723d1d89063ecdeb3cac9af1ecc7ac7a48faaced89" [label="/bin/sh -c apt-get install -y --no-install-recommends       python3       python3-dev       python3-pip       python3-setuptools       python3-venv" shape="box"];
  "sha256:9a571b873d94f4888453e379dd0025bee18b185475d639bf0d9bf02a5a8d5207" [label="/bin/sh -c pip3 install --upgrade pip==9.0.1" shape="box"];
  "sha256:5ca28eb03010b50ef5b3eb31cfa349cdde9239bc5f7568b1143d72bd187606ce" [label="/bin/sh -c pip3 install --upgrade setuptools google-api-python-client pyyaml google-cloud google-cloud-bigquery" shape="box"];
  "sha256:f2f44164256e10a5a1ba908d8fe344449c3edc1d21c5a774284f1f7e6f61054b" [label="/bin/sh -c pip3 install wheel absl-py" shape="box"];
  "sha256:91d392fc39878e477eb779be38c1f981c24d24b2245b2d21b769e0168e2377c1" [label="/bin/sh -c pip3 install --upgrade --force-reinstall ${tensorflow_pip_spec}" shape="box"];
  "sha256:a3faeeda271aee7b335a5a9bdf187aa7160dc47ba4df858df06f66810c970749" [label="/bin/sh -c pip3 install tfds-nightly" shape="box"];
  "sha256:3e3871b6efc65ef1f91773490e8b44eb923f16353990ddd29e7ec41e6db3ee17" [label="/bin/sh -c pip3 install -U scikit-learn" shape="box"];
  "sha256:476e2165909228fa4a9e3881f9704f03fd93eb904631ed9481969d2a468e4d05" [label="/bin/sh -c curl https://raw.githubusercontent.com/tensorflow/models/master/official/requirements.txt > /tmp/requirements.txt" shape="box"];
  "sha256:8f32ad587f6f2be548fb4273ff01f4fb981b48888efe005f64ef02712ac7b18a" [label="/bin/sh -c pip3 install -r /tmp/requirements.txt" shape="box"];
  "sha256:eff197aec234922ff1cd6d92ba51a4c780be2979e0342cea936e0010edfb2b1b" [label="/bin/sh -c pip3 freeze" shape="box"];
  "sha256:8d656a357a7cad59399f4c4a520d066cad36c0b2be9d27266c28764f9884701e" [label="sha256:8d656a357a7cad59399f4c4a520d066cad36c0b2be9d27266c28764f9884701e" shape="plaintext"];
  "sha256:ad65426ddd8d581cbbdd3b5a781bb88abdf866180a4cd3708ae80792f5d46a67" -> "sha256:fc8474e294f8d43dd9aa0d10876af88c0ee36622862d14b406e9c8578d473cb6" [label=""];
  "sha256:fc8474e294f8d43dd9aa0d10876af88c0ee36622862d14b406e9c8578d473cb6" -> "sha256:c8322d29f598431e7e39a091d33c19f71ab1f5a063291f73851c1f6f8ba5cc5e" [label=""];
  "sha256:c8322d29f598431e7e39a091d33c19f71ab1f5a063291f73851c1f6f8ba5cc5e" -> "sha256:68fb1edfef4decdaf131242106adddfccbecb3f1847047f72f15ab07cf990de9" [label=""];
  "sha256:68fb1edfef4decdaf131242106adddfccbecb3f1847047f72f15ab07cf990de9" -> "sha256:931fccdc68f88a60bf14f8d9845c5cf7d6fdf61774ecfdfbdfdeeeb054eb9bc4" [label=""];
  "sha256:931fccdc68f88a60bf14f8d9845c5cf7d6fdf61774ecfdfbdfdeeeb054eb9bc4" -> "sha256:5b144e46c3898c175b848459b6ffe5cad504f9a38a9f06894d1159b1803dacef" [label=""];
  "sha256:5b144e46c3898c175b848459b6ffe5cad504f9a38a9f06894d1159b1803dacef" -> "sha256:4320653855d835a3900cd0723d1d89063ecdeb3cac9af1ecc7ac7a48faaced89" [label=""];
  "sha256:4320653855d835a3900cd0723d1d89063ecdeb3cac9af1ecc7ac7a48faaced89" -> "sha256:9a571b873d94f4888453e379dd0025bee18b185475d639bf0d9bf02a5a8d5207" [label=""];
  "sha256:9a571b873d94f4888453e379dd0025bee18b185475d639bf0d9bf02a5a8d5207" -> "sha256:5ca28eb03010b50ef5b3eb31cfa349cdde9239bc5f7568b1143d72bd187606ce" [label=""];
  "sha256:5ca28eb03010b50ef5b3eb31cfa349cdde9239bc5f7568b1143d72bd187606ce" -> "sha256:f2f44164256e10a5a1ba908d8fe344449c3edc1d21c5a774284f1f7e6f61054b" [label=""];
  "sha256:f2f44164256e10a5a1ba908d8fe344449c3edc1d21c5a774284f1f7e6f61054b" -> "sha256:91d392fc39878e477eb779be38c1f981c24d24b2245b2d21b769e0168e2377c1" [label=""];
  "sha256:91d392fc39878e477eb779be38c1f981c24d24b2245b2d21b769e0168e2377c1" -> "sha256:a3faeeda271aee7b335a5a9bdf187aa7160dc47ba4df858df06f66810c970749" [label=""];
  "sha256:a3faeeda271aee7b335a5a9bdf187aa7160dc47ba4df858df06f66810c970749" -> "sha256:3e3871b6efc65ef1f91773490e8b44eb923f16353990ddd29e7ec41e6db3ee17" [label=""];
  "sha256:3e3871b6efc65ef1f91773490e8b44eb923f16353990ddd29e7ec41e6db3ee17" -> "sha256:476e2165909228fa4a9e3881f9704f03fd93eb904631ed9481969d2a468e4d05" [label=""];
  "sha256:476e2165909228fa4a9e3881f9704f03fd93eb904631ed9481969d2a468e4d05" -> "sha256:8f32ad587f6f2be548fb4273ff01f4fb981b48888efe005f64ef02712ac7b18a" [label=""];
  "sha256:8f32ad587f6f2be548fb4273ff01f4fb981b48888efe005f64ef02712ac7b18a" -> "sha256:eff197aec234922ff1cd6d92ba51a4c780be2979e0342cea936e0010edfb2b1b" [label=""];
  "sha256:eff197aec234922ff1cd6d92ba51a4c780be2979e0342cea936e0010edfb2b1b" -> "sha256:8d656a357a7cad59399f4c4a520d066cad36c0b2be9d27266c28764f9884701e" [label=""];
}

