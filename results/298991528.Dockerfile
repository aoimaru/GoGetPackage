[app/sources/298991528.Dockerfile]
digraph {
  "sha256:b071ec98c6d89a5e734e891c47caf37c1dfb7ccebbfde41df23c6a0284eff434" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04@sha256:40d96bb12177aff1044752e548b5b4cd8ea53fdbea35a3d36056d8c825d38354" shape="ellipse"];
  "sha256:f59e826ab39a6464ae185f2bdb3ac7f3928cb1da36ec3bf9cddb59ce955ab67f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:bcca730787e5a3367b125223591f20e6689ccf025812cd2b54b087c8cb510be2" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:220ec40e282eea533212ee5d788369cbc9547a90a09f9a0aa373c97d9a66e711" [label="/bin/sh -c add-apt-repository -y ppa:kubuntu-ppa/backports" shape="box"];
  "sha256:b783b6f71573ff8f5a4d5f4ad7bd054d1873f8d323f53835db58be144b8de494" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:981e29cd11670ec441b7cec26d70169f699fe91f625757cda5501b4512ebbcef" [label="/bin/sh -c apt-get -y install     git     cmake     wget     libgoogle-glog-dev     protobuf-compiler     libprotobuf-dev     libglew-dev     libeigen3-dev     libopenblas-dev     liblapack-dev     libopencv-dev     libav-tools" shape="box"];
  "sha256:084df91f4dc9830a86bbc535c639a733f8a6141bd2a7c5247b6c898e44e47afc" [label="/bin/sh -c mkdir /opt/pangolin &&     cd /opt/pangolin &&     wget https://codeload.github.com/stevenlovegrove/Pangolin/tar.gz/v0.5 &&     tar -xzf v0.5 &&     mkdir Pangolin-0.5/build &&     cd Pangolin-0.5/build &&     cmake .. &&     make -j4 &&     make install" shape="box"];
  "sha256:02ba6ad57966ebb1e530956993942eb39d2d17da9a5690b93f4ef53218e1e38d" [label="/bin/sh -c cd /usr/include/ && wget https://github.com/nlohmann/json/releases/download/v2.1.1/json.hpp" shape="box"];
  "sha256:0fc474fa78376f684308f3f837223b7aae68e67cde9775463d5d060d02a6e5fc" [label="/bin/sh -c apt-get -y install     libavformat-dev     libavcodec-dev     libavdevice-dev     libavutil-dev     libswscale-dev     libavresample-dev     libavfilter-dev" shape="box"];
  "sha256:a794dd8bc9f28457bfb1f0377df20b7c38b6787a9bf591d30e9b97a854bbe5ba" [label="/bin/sh -c apt-get -y install libcupti-dev" shape="box"];
  "sha256:69c30f922e8cf2393531943a1eb040c21bcf5d09d82f9fef8d9fae3f8f2ed6cb" [label="/bin/sh -c apt-get -y install     gdb     libxss1     xterm     sudo     libgconf-2-4     valgrind     clang-format     curl" shape="box"];
  "sha256:b4f9f37e5f7415fe6cb8ec3fd373bd63383a6d4f4841500d62c65ae9ebb8d937" [label="/bin/sh -c apt-get -y install autoconf libtool psmisc net-tools" shape="box"];
  "sha256:921da7dc903499ea4369ddc026a447b919665a264eb60ca97dab581e485b18bf" [label="/bin/sh -c apt-get -y install qtcreator qtbase5-dev" shape="box"];
  "sha256:323289805fcd8de3817869edf260d3c855786fcd79e64495c2918c79788ce2ca" [label="/bin/sh -c apt-get -y install python3-zmq libzmq3-dev" shape="box"];
  "sha256:56408d91b6c37a33e731931e1ef214856f134886d236e960ea0eec2236f3b34b" [label="/bin/sh -c apt-get -y install python3-pip" shape="box"];
  "sha256:5b61adc23b781ea387dfcdd788b55547b75aede9e33ad08bbfea6ca9de446626" [label="/bin/sh -c pip3 install http://download.pytorch.org/whl/cu90/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl" shape="box"];
  "sha256:dad866e996ee21658a4fdcaf47990fa84e803c6a4dd3878dcda68c2a688e2592" [label="/bin/sh -c pip3 install av torchvision jupyter opencv-python scipy sklearn sk-video tensorflow tensorboard_logger matplotlib gpustat" shape="box"];
  "sha256:ea3970afddcbd584d99b299017adbf33da2bea2a47200feff8d76eff2a65634c" [label="/bin/sh -c pip3 install --upgrade bleach" shape="box"];
  "sha256:06264b36c49a5c02b9487f635d83bc999ffe073d251f05874c3f794b1c7282c9" [label="/bin/sh -c mkdir /opt/install &&     cd /opt/install &&     curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&     mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg" shape="box"];
  "sha256:8309e957af79fe2cdd24e7f67f55c7f73c44a47b9e359962ae9c477ec020fa90" [label="/bin/sh -c echo \"deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main\" > /etc/apt/sources.list.d/vscode.list" shape="box"];
  "sha256:f7beee48eb0582af8ceb00da7fa27564cbb4c470978a1c179189f1638daddf41" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0d91b1cc7e6be71ef7a90667ceb5c56369eaba97190d1a770d4fb56e45b3f084" [label="/bin/sh -c apt-get -y install code" shape="box"];
  "sha256:661ac7d525ad5c83c218dca13f549685bebb36d595825a5ee01cf8e290db2243" [label="sha256:661ac7d525ad5c83c218dca13f549685bebb36d595825a5ee01cf8e290db2243" shape="plaintext"];
  "sha256:b071ec98c6d89a5e734e891c47caf37c1dfb7ccebbfde41df23c6a0284eff434" -> "sha256:f59e826ab39a6464ae185f2bdb3ac7f3928cb1da36ec3bf9cddb59ce955ab67f" [label=""];
  "sha256:f59e826ab39a6464ae185f2bdb3ac7f3928cb1da36ec3bf9cddb59ce955ab67f" -> "sha256:bcca730787e5a3367b125223591f20e6689ccf025812cd2b54b087c8cb510be2" [label=""];
  "sha256:bcca730787e5a3367b125223591f20e6689ccf025812cd2b54b087c8cb510be2" -> "sha256:220ec40e282eea533212ee5d788369cbc9547a90a09f9a0aa373c97d9a66e711" [label=""];
  "sha256:220ec40e282eea533212ee5d788369cbc9547a90a09f9a0aa373c97d9a66e711" -> "sha256:b783b6f71573ff8f5a4d5f4ad7bd054d1873f8d323f53835db58be144b8de494" [label=""];
  "sha256:b783b6f71573ff8f5a4d5f4ad7bd054d1873f8d323f53835db58be144b8de494" -> "sha256:981e29cd11670ec441b7cec26d70169f699fe91f625757cda5501b4512ebbcef" [label=""];
  "sha256:981e29cd11670ec441b7cec26d70169f699fe91f625757cda5501b4512ebbcef" -> "sha256:084df91f4dc9830a86bbc535c639a733f8a6141bd2a7c5247b6c898e44e47afc" [label=""];
  "sha256:084df91f4dc9830a86bbc535c639a733f8a6141bd2a7c5247b6c898e44e47afc" -> "sha256:02ba6ad57966ebb1e530956993942eb39d2d17da9a5690b93f4ef53218e1e38d" [label=""];
  "sha256:02ba6ad57966ebb1e530956993942eb39d2d17da9a5690b93f4ef53218e1e38d" -> "sha256:0fc474fa78376f684308f3f837223b7aae68e67cde9775463d5d060d02a6e5fc" [label=""];
  "sha256:0fc474fa78376f684308f3f837223b7aae68e67cde9775463d5d060d02a6e5fc" -> "sha256:a794dd8bc9f28457bfb1f0377df20b7c38b6787a9bf591d30e9b97a854bbe5ba" [label=""];
  "sha256:a794dd8bc9f28457bfb1f0377df20b7c38b6787a9bf591d30e9b97a854bbe5ba" -> "sha256:69c30f922e8cf2393531943a1eb040c21bcf5d09d82f9fef8d9fae3f8f2ed6cb" [label=""];
  "sha256:69c30f922e8cf2393531943a1eb040c21bcf5d09d82f9fef8d9fae3f8f2ed6cb" -> "sha256:b4f9f37e5f7415fe6cb8ec3fd373bd63383a6d4f4841500d62c65ae9ebb8d937" [label=""];
  "sha256:b4f9f37e5f7415fe6cb8ec3fd373bd63383a6d4f4841500d62c65ae9ebb8d937" -> "sha256:921da7dc903499ea4369ddc026a447b919665a264eb60ca97dab581e485b18bf" [label=""];
  "sha256:921da7dc903499ea4369ddc026a447b919665a264eb60ca97dab581e485b18bf" -> "sha256:323289805fcd8de3817869edf260d3c855786fcd79e64495c2918c79788ce2ca" [label=""];
  "sha256:323289805fcd8de3817869edf260d3c855786fcd79e64495c2918c79788ce2ca" -> "sha256:56408d91b6c37a33e731931e1ef214856f134886d236e960ea0eec2236f3b34b" [label=""];
  "sha256:56408d91b6c37a33e731931e1ef214856f134886d236e960ea0eec2236f3b34b" -> "sha256:5b61adc23b781ea387dfcdd788b55547b75aede9e33ad08bbfea6ca9de446626" [label=""];
  "sha256:5b61adc23b781ea387dfcdd788b55547b75aede9e33ad08bbfea6ca9de446626" -> "sha256:dad866e996ee21658a4fdcaf47990fa84e803c6a4dd3878dcda68c2a688e2592" [label=""];
  "sha256:dad866e996ee21658a4fdcaf47990fa84e803c6a4dd3878dcda68c2a688e2592" -> "sha256:ea3970afddcbd584d99b299017adbf33da2bea2a47200feff8d76eff2a65634c" [label=""];
  "sha256:ea3970afddcbd584d99b299017adbf33da2bea2a47200feff8d76eff2a65634c" -> "sha256:06264b36c49a5c02b9487f635d83bc999ffe073d251f05874c3f794b1c7282c9" [label=""];
  "sha256:06264b36c49a5c02b9487f635d83bc999ffe073d251f05874c3f794b1c7282c9" -> "sha256:8309e957af79fe2cdd24e7f67f55c7f73c44a47b9e359962ae9c477ec020fa90" [label=""];
  "sha256:8309e957af79fe2cdd24e7f67f55c7f73c44a47b9e359962ae9c477ec020fa90" -> "sha256:f7beee48eb0582af8ceb00da7fa27564cbb4c470978a1c179189f1638daddf41" [label=""];
  "sha256:f7beee48eb0582af8ceb00da7fa27564cbb4c470978a1c179189f1638daddf41" -> "sha256:0d91b1cc7e6be71ef7a90667ceb5c56369eaba97190d1a770d4fb56e45b3f084" [label=""];
  "sha256:0d91b1cc7e6be71ef7a90667ceb5c56369eaba97190d1a770d4fb56e45b3f084" -> "sha256:661ac7d525ad5c83c218dca13f549685bebb36d595825a5ee01cf8e290db2243" [label=""];
}

