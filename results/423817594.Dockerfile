[app/sources/423817594.Dockerfile]
digraph {
  "sha256:a3a3eedf7242bd7f946288538b426c388a5adae042e1ca6e8a50c84dcbf047ff" [label="docker-image://docker.io/library/base-gpu-centos7:latest" shape="ellipse"];
  "sha256:a4d8f8ece9f717a49a4ace6a8c391806c1f9baa9d56707db442f73a295c2edce" [label="/bin/sh -c yum install -y     build-essential     g++     gcc-c++     cmake" shape="box"];
  "sha256:3a58c036abe54b3b0bdc049a185cdcea3542a20347361098d51b7b8ba9dfa6f6" [label="/bin/sh -c wget -q ftp://ftp.gromacs.org/pub/gromacs/gromacs-2016.4.tar.gz &&     tar xfz gromacs-2016.4.tar.gz &&     cd gromacs-2016.4 &&     mkdir build-normal &&     cd build-normal &&     cmake -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-9.0 .. -DGMX_BUILD_OWN_FFTW=ON -DCMAKE_INSTALL_PREFIX=/home/ -DGMX_GPU=on &&     make -j 4 &&     make install" shape="box"];
  "sha256:b6d392b6a0bbdb528e19f7c441a921dc902a2d776106c6238bc23a27f4e5ef78" [label="/bin/sh -c rm gromacs-2016.4.tar.gz &&     cd gromacs-2016.4 &&     rm -rf src \t   tests \t   docs &&     cd build-normal &&     rm -rf src            tests            docs" shape="box"];
  "sha256:2bdaae40153cd514503d9fd4bcb9e767dafeb36a5bf837de5fd2cd00933e36a8" [label="sha256:2bdaae40153cd514503d9fd4bcb9e767dafeb36a5bf837de5fd2cd00933e36a8" shape="plaintext"];
  "sha256:a3a3eedf7242bd7f946288538b426c388a5adae042e1ca6e8a50c84dcbf047ff" -> "sha256:a4d8f8ece9f717a49a4ace6a8c391806c1f9baa9d56707db442f73a295c2edce" [label=""];
  "sha256:a4d8f8ece9f717a49a4ace6a8c391806c1f9baa9d56707db442f73a295c2edce" -> "sha256:3a58c036abe54b3b0bdc049a185cdcea3542a20347361098d51b7b8ba9dfa6f6" [label=""];
  "sha256:3a58c036abe54b3b0bdc049a185cdcea3542a20347361098d51b7b8ba9dfa6f6" -> "sha256:b6d392b6a0bbdb528e19f7c441a921dc902a2d776106c6238bc23a27f4e5ef78" [label=""];
  "sha256:b6d392b6a0bbdb528e19f7c441a921dc902a2d776106c6238bc23a27f4e5ef78" -> "sha256:2bdaae40153cd514503d9fd4bcb9e767dafeb36a5bf837de5fd2cd00933e36a8" [label=""];
}

