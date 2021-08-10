[app/sources/367250585.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c7084f237343529e973d28c5886a1ecb1c3a2b8595029026ed8a4b97fff0c978" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     cmake     curl     gfortran     git     libatlas-dev     libavcodec-dev     libavformat-dev     libboost-all-dev     libgtk2.0-dev     libjpeg-dev     liblapack-dev     libswscale-dev     pkg-config     python-dev     python-pip     wget     zip     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3aa6a976e7228fde4f1813bf35314821ddd6afff8b822646e8e549ad5c04cde1" [label="/bin/sh -c pip2 install numpy scipy pandas" shape="box"];
  "sha256:b1a5eb92b7ed79388067d38f85333f396193b9a1a94b738eb6aa317eeded9697" [label="/bin/sh -c pip2 install scikit-learn scikit-image" shape="box"];
  "sha256:f6dca05f26e37f08fed457605686a36129d3bdfbfcccb6fd2f68b18300a4e4e4" [label="/bin/sh -c cd ~ &&     mkdir -p src &&     cd src &&     curl -L https://github.com/Itseez/opencv/archive/2.4.11.zip -o ocv.zip &&     unzip ocv.zip &&     cd opencv-2.4.11 &&     mkdir release &&     cd release &&     cmake -D CMAKE_BUILD_TYPE=RELEASE           -D CMAKE_INSTALL_PREFIX=/usr/local \t  -D CUDA_GENERATION=Kepler           .. &&     make -j8 &&     make install" shape="box"];
  "sha256:f682f42897a70b2d25ed69aeb75bf5cc0cc36570df9f39c06a6d00dd3590d6bc" [label="/bin/sh -c cd ~ &&     mkdir -p src &&     cd src &&     curl -L          https://github.com/davisking/dlib/releases/download/v18.16/dlib-18.16.tar.bz2          -o dlib.tar.bz2 &&     tar xf dlib.tar.bz2 &&     cd dlib-18.16/python_examples &&     mkdir build &&     cd build &&     cmake ../../tools/python &&     cmake --build . --config Release &&     cp dlib.so .." shape="box"];
  "sha256:b16bc3bd5af078a714d1d9709fcafc2b4ec88fc0628bf16e7b7eb857136c50cd" [label="sha256:b16bc3bd5af078a714d1d9709fcafc2b4ec88fc0628bf16e7b7eb857136c50cd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c7084f237343529e973d28c5886a1ecb1c3a2b8595029026ed8a4b97fff0c978" [label=""];
  "sha256:c7084f237343529e973d28c5886a1ecb1c3a2b8595029026ed8a4b97fff0c978" -> "sha256:3aa6a976e7228fde4f1813bf35314821ddd6afff8b822646e8e549ad5c04cde1" [label=""];
  "sha256:3aa6a976e7228fde4f1813bf35314821ddd6afff8b822646e8e549ad5c04cde1" -> "sha256:b1a5eb92b7ed79388067d38f85333f396193b9a1a94b738eb6aa317eeded9697" [label=""];
  "sha256:b1a5eb92b7ed79388067d38f85333f396193b9a1a94b738eb6aa317eeded9697" -> "sha256:f6dca05f26e37f08fed457605686a36129d3bdfbfcccb6fd2f68b18300a4e4e4" [label=""];
  "sha256:f6dca05f26e37f08fed457605686a36129d3bdfbfcccb6fd2f68b18300a4e4e4" -> "sha256:f682f42897a70b2d25ed69aeb75bf5cc0cc36570df9f39c06a6d00dd3590d6bc" [label=""];
  "sha256:f682f42897a70b2d25ed69aeb75bf5cc0cc36570df9f39c06a6d00dd3590d6bc" -> "sha256:b16bc3bd5af078a714d1d9709fcafc2b4ec88fc0628bf16e7b7eb857136c50cd" [label=""];
}

