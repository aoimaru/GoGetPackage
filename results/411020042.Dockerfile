[app/sources/411020042.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0527c36e5ba943594b8de779fe8fdab664d0b8b1ab24ba50d6b3d0bc25ca177c" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y" shape="box"];
  "sha256:2235b73cab443caf4d33069473af0018ce38b773d832eced842c31fd4e8f3962" [label="/bin/sh -c apt-get -f install" shape="box"];
  "sha256:633cc025936530da96eab3ff7a5c6cb24d4cd74d4119282d532a3d0271b0140b" [label="/bin/sh -c apt-get install -y wget &&     apt-get install -y git &&     apt-get install -y g++ &&     apt-get install -y xorg &&     apt-get install -y zlib1g-dev" shape="box"];
  "sha256:4eda9894e085eb685c90d45938adbc53de044d837e2f1f3b3013091ce61cdf0b" [label="/bin/sh -c mkdir /oasis" shape="box"];
  "sha256:4871dae868011d733a7f6ee38a3159d2c50a934c01494a1ee3b247f6ef221364" [label="/bin/sh -c mkdir /projects" shape="box"];
  "sha256:122ff0e041ad3452882249faefba96ef1cb513ebc75f70093b881a8cc220953c" [label="/bin/sh -c mkdir /scratch" shape="box"];
  "sha256:1f9e7efa16224ffc3f7c3e0ee082743c77af4542bff78dfa836df217a829a651" [label="/bin/sh -c mkdir /local-scratch" shape="box"];
  "sha256:c760f70e6de9d46524c87f290f360f7ff2f1fb174369a43c8104addacca80999" [label="/bin/sh -c mkdir Downloads &&     cd Downloads &&     wget https://dl.dropboxusercontent.com/u/4494604/intel_sdk_for_opencl_2016_ubuntu_6.2.0.1760_x64.tar &&     tar -xf intel_sdk_for_opencl_2016_ubuntu_6.2.0.1760_x64.tar &&     cd intel_sdk_for_opencl_2016_ubuntu_6.2.0.1760_x64 &&     chmod +x install.sh &&     sed -i 's/decline/accept/g' silent.cfg &&     sed -i 's/RPM/NONRPM/g' silent.cfg &&     ./install.sh -s silent.cfg &&     cd .. &&     rm intel_sdk_for_opencl_2016_ubuntu_6.2.0.1760_x64.tar &&     mv /opt/intel/intel-opencl-1.2-6.2.0.1760/opencl-sdk /opt/intel/ &&     rm -rf intel_sdk_for_opencl_2016_ubuntu_6.2.0.1760_x64" shape="box"];
  "sha256:bcae20d99d2f182046fe48c7e2ef6fc222b99f55937a7a17c3c8f13fac634107" [label="/bin/sh -c cd /Downloads &&     wget https://dl.dropboxusercontent.com/u/4494604/opencl_runtime_16.1.1_x64_ubuntu_6.4.0.25.tgz  &&     tar -xf opencl_runtime_16.1.1_x64_ubuntu_6.4.0.25.tgz &&     cd opencl_runtime_16.1.1_x64_ubuntu_6.4.0.25 &&     chmod +x install.sh &&     sed -i 's/decline/accept/g' silent.cfg &&     sed -i 's/RPM/NONRPM/g' silent.cfg &&     ./install.sh -s silent.cfg &&     cd .. &&     rm opencl_runtime_16.1.1_x64_ubuntu_6.4.0.25.tgz &&     rm -rf opencl_runtime_16.1.1_x64_ubuntu_6.4.0.25" shape="box"];
  "sha256:8d04ed712a977cbcf3dd839c29b1c3b23b660a719cba41bd2b0852f69e592655" [label="/bin/sh -c cd /Downloads &&     mkdir BROCCOLI &&     cd BROCCOLI &&     git clone --depth 1 https://github.com/wanderine/BROCCOLI.git . &&     cd code &&     cd BROCCOLI_LIB &&     ./compile_broccoli_library.sh &&     cd .. &&     cd Bash_Wrapper &&     ./compile_wrappers.sh &&     cd .. &&     cd .. &&     cd compiled/Bash/Linux/Release/ &&     ./GetOpenCLInfo &&     cp /Downloads/BROCCOLI/test_data/fcon1000/classic/Beijing/sub00440/func/rest.nii.gz . &&     ./Smoothing rest.nii.gz -verbose &&     rm rest.nii.gz &&     rm rest_sm.nii.gz" shape="box"];
  "sha256:ce62e2a73d732c6da4ff4b9549cccc417475c3510c25b203f55f8e169388ad6d" [label="sha256:ce62e2a73d732c6da4ff4b9549cccc417475c3510c25b203f55f8e169388ad6d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0527c36e5ba943594b8de779fe8fdab664d0b8b1ab24ba50d6b3d0bc25ca177c" [label=""];
  "sha256:0527c36e5ba943594b8de779fe8fdab664d0b8b1ab24ba50d6b3d0bc25ca177c" -> "sha256:2235b73cab443caf4d33069473af0018ce38b773d832eced842c31fd4e8f3962" [label=""];
  "sha256:2235b73cab443caf4d33069473af0018ce38b773d832eced842c31fd4e8f3962" -> "sha256:633cc025936530da96eab3ff7a5c6cb24d4cd74d4119282d532a3d0271b0140b" [label=""];
  "sha256:633cc025936530da96eab3ff7a5c6cb24d4cd74d4119282d532a3d0271b0140b" -> "sha256:4eda9894e085eb685c90d45938adbc53de044d837e2f1f3b3013091ce61cdf0b" [label=""];
  "sha256:4eda9894e085eb685c90d45938adbc53de044d837e2f1f3b3013091ce61cdf0b" -> "sha256:4871dae868011d733a7f6ee38a3159d2c50a934c01494a1ee3b247f6ef221364" [label=""];
  "sha256:4871dae868011d733a7f6ee38a3159d2c50a934c01494a1ee3b247f6ef221364" -> "sha256:122ff0e041ad3452882249faefba96ef1cb513ebc75f70093b881a8cc220953c" [label=""];
  "sha256:122ff0e041ad3452882249faefba96ef1cb513ebc75f70093b881a8cc220953c" -> "sha256:1f9e7efa16224ffc3f7c3e0ee082743c77af4542bff78dfa836df217a829a651" [label=""];
  "sha256:1f9e7efa16224ffc3f7c3e0ee082743c77af4542bff78dfa836df217a829a651" -> "sha256:c760f70e6de9d46524c87f290f360f7ff2f1fb174369a43c8104addacca80999" [label=""];
  "sha256:c760f70e6de9d46524c87f290f360f7ff2f1fb174369a43c8104addacca80999" -> "sha256:bcae20d99d2f182046fe48c7e2ef6fc222b99f55937a7a17c3c8f13fac634107" [label=""];
  "sha256:bcae20d99d2f182046fe48c7e2ef6fc222b99f55937a7a17c3c8f13fac634107" -> "sha256:8d04ed712a977cbcf3dd839c29b1c3b23b660a719cba41bd2b0852f69e592655" [label=""];
  "sha256:8d04ed712a977cbcf3dd839c29b1c3b23b660a719cba41bd2b0852f69e592655" -> "sha256:ce62e2a73d732c6da4ff4b9549cccc417475c3510c25b203f55f8e169388ad6d" [label=""];
}

