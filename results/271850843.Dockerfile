[app/sources/271850843.Dockerfile]
digraph {
  "sha256:f742e3d626dbc4dd0508232351abc164fbff255497fc98adb9391d64c4b93ab9" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu" shape="ellipse"];
  "sha256:1a3a78267ab25a9acd13c004218863c9f7276344128d8a9e04754dd803c6ede6" [label="/bin/sh -c apt-get update -y --fix-missing" shape="box"];
  "sha256:a51910cbaf881cbc9842c43ad87074e7dce2ac89569c2aff30a05e5bc4d11b30" [label="/bin/sh -c apt-get install -y ffmpeg" shape="box"];
  "sha256:4efe340917bfac71e55d9121b818e447c3c50f15dc7416143558344d3b603fb9" [label="/bin/sh -c apt-get install -y build-essential cmake pkg-config                     libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev                     libavcodec-dev libavformat-dev libswscale-dev libv4l-dev                     libxvidcore-dev libx264-dev                     libgtk-3-dev                     libatlas-base-dev gfortran                     libboost-all-dev                     python3 python3-dev python3-numpy" shape="box"];
  "sha256:4ba625361c2608fb39cf19338fd3772d3c86e03ddd9c56a00b4e5764915508a7" [label="/bin/sh -c apt-get install -y wget vim python3-tk python3-pip" shape="box"];
  "sha256:a42e062ffe2dd31eb91d77761ba5e7931ff63eebc87d16f8b6d63321efba9a16" [label="/bin/sh -c wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.2.0.zip     && unzip opencv.zip     && wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.2.0.zip     && unzip opencv_contrib.zip" shape="box"];
  "sha256:baf4c76b8587a2d665ded9ad5754dbc187034ec72dd1ba9bde06e5d08b6ceeff" [label="/bin/sh -c cd /opencv-3.2.0/    && mkdir build    && cd build    && cmake -D CMAKE_BUILD_TYPE=RELEASE             -D INSTALL_C_EXAMPLES=OFF             -D INSTALL_PYTHON_EXAMPLES=ON             -D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib-3.2.0/modules             -D BUILD_EXAMPLES=OFF             -D BUILD_opencv_python2=OFF             -D BUILD_NEW_PYTHON_SUPPORT=ON             -D CMAKE_INSTALL_PREFIX=$(python3 -c \"import sys; print(sys.prefix)\")             -D PYTHON_EXECUTABLE=$(which python3)             -D WITH_FFMPEG=1             -D WITH_CUDA=1             ..     && make -j8     && make install     && ldconfig     && rm /opencv.zip     && rm /opencv_contrib.zip" shape="box"];
  "sha256:c007c8949b1d8b406b16a4d51bdfa4cd83f9910f7dec5574502f31bea99e5fdc" [label="/bin/sh -c wget -O dlib-19.4.tar.bz2 http://dlib.net/files/dlib-19.4.tar.bz2     && tar -vxjf dlib-19.4.tar.bz2" shape="box"];
  "sha256:2c81a8d3c05a5086449247257bf19ea36bb47b26c868795f75008f16f4b6aff2" [label="/bin/sh -c cd dlib-19.4     && cd examples     && mkdir build     && cd build     && cmake ..     && cmake --build . --config Release     && cd /dlib-19.4     && pip3 install setuptools     && python3 setup.py install     && cd $WORKDIR     && rm /dlib-19.4.tar.bz2" shape="box"];
  "sha256:4634f7d31313877be7803fa8015a23d18f618cf222969dd973963e5c2327de52" [label="local://context" shape="ellipse"];
  "sha256:660a98a61c138d98d24a03c1d75d7d80e3a5bee5ffb28cc935c06b47980ac3f0" [label="copy{src=/requirements-gpu.txt, dest=/requirements-gpu.txt}" shape="note"];
  "sha256:0a81099b4ef056927e7a8aed37c82187268924f1bbab41cfc2df1ef4ed7a7baa" [label="/bin/sh -c pip3 install -r /requirements-gpu.txt" shape="box"];
  "sha256:3ab60cbc18f8df2e277ab8bfd63605102301c22eb9656a3208621d7f1788d0af" [label="sha256:3ab60cbc18f8df2e277ab8bfd63605102301c22eb9656a3208621d7f1788d0af" shape="plaintext"];
  "sha256:f742e3d626dbc4dd0508232351abc164fbff255497fc98adb9391d64c4b93ab9" -> "sha256:1a3a78267ab25a9acd13c004218863c9f7276344128d8a9e04754dd803c6ede6" [label=""];
  "sha256:1a3a78267ab25a9acd13c004218863c9f7276344128d8a9e04754dd803c6ede6" -> "sha256:a51910cbaf881cbc9842c43ad87074e7dce2ac89569c2aff30a05e5bc4d11b30" [label=""];
  "sha256:a51910cbaf881cbc9842c43ad87074e7dce2ac89569c2aff30a05e5bc4d11b30" -> "sha256:4efe340917bfac71e55d9121b818e447c3c50f15dc7416143558344d3b603fb9" [label=""];
  "sha256:4efe340917bfac71e55d9121b818e447c3c50f15dc7416143558344d3b603fb9" -> "sha256:4ba625361c2608fb39cf19338fd3772d3c86e03ddd9c56a00b4e5764915508a7" [label=""];
  "sha256:4ba625361c2608fb39cf19338fd3772d3c86e03ddd9c56a00b4e5764915508a7" -> "sha256:a42e062ffe2dd31eb91d77761ba5e7931ff63eebc87d16f8b6d63321efba9a16" [label=""];
  "sha256:a42e062ffe2dd31eb91d77761ba5e7931ff63eebc87d16f8b6d63321efba9a16" -> "sha256:baf4c76b8587a2d665ded9ad5754dbc187034ec72dd1ba9bde06e5d08b6ceeff" [label=""];
  "sha256:baf4c76b8587a2d665ded9ad5754dbc187034ec72dd1ba9bde06e5d08b6ceeff" -> "sha256:c007c8949b1d8b406b16a4d51bdfa4cd83f9910f7dec5574502f31bea99e5fdc" [label=""];
  "sha256:c007c8949b1d8b406b16a4d51bdfa4cd83f9910f7dec5574502f31bea99e5fdc" -> "sha256:2c81a8d3c05a5086449247257bf19ea36bb47b26c868795f75008f16f4b6aff2" [label=""];
  "sha256:2c81a8d3c05a5086449247257bf19ea36bb47b26c868795f75008f16f4b6aff2" -> "sha256:660a98a61c138d98d24a03c1d75d7d80e3a5bee5ffb28cc935c06b47980ac3f0" [label=""];
  "sha256:4634f7d31313877be7803fa8015a23d18f618cf222969dd973963e5c2327de52" -> "sha256:660a98a61c138d98d24a03c1d75d7d80e3a5bee5ffb28cc935c06b47980ac3f0" [label=""];
  "sha256:660a98a61c138d98d24a03c1d75d7d80e3a5bee5ffb28cc935c06b47980ac3f0" -> "sha256:0a81099b4ef056927e7a8aed37c82187268924f1bbab41cfc2df1ef4ed7a7baa" [label=""];
  "sha256:0a81099b4ef056927e7a8aed37c82187268924f1bbab41cfc2df1ef4ed7a7baa" -> "sha256:3ab60cbc18f8df2e277ab8bfd63605102301c22eb9656a3208621d7f1788d0af" [label=""];
}

