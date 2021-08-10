[app/sources/323799530.Dockerfile]
digraph {
  "sha256:5f73206473d7fc08460a8a5cc6ee73735256a3a4981c7c1fa29cb36f44bf68a0" [label="docker-image://docker.io/library/ubuntu:xenial-20180228" shape="ellipse"];
  "sha256:18b661789a573da7aec62e6e20c2f7faa0eea68e023186c7caee0903f641c012" [label="/bin/sh -c apt-get update && apt-get install -y   git   gcc   g++   cmake   cmake-data   libopencv-dev   protobuf-compiler   libprotobuf-dev   ruby-dev   ruby-rmagick   ruby-bundler &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ebacefb5445198d7bceb15daedf68b778ddfcf0bf434073fd0ffcd52c7130060" [label="/bin/sh -c mkdir /opt/mkl-dnn" shape="box"];
  "sha256:d8392c8bbf6974c209b44e18a4fdc78b7c79323a1cc33ce47601390aa9041d18" [label="mkdir{path=/opt/mkl-dnn}" shape="note"];
  "sha256:bd887c7cd5657e43b34c0f1a9567d5a6959d31ed8aabacc1f940d5998c3ce4a9" [label="/bin/sh -c git clone https://github.com/01org/mkl-dnn.git &&     cd mkl-dnn/scripts && bash ./prepare_mkl.sh && cd .. &&     sed -i 's/add_subdirectory(examples)//g' CMakeLists.txt &&     sed -i 's/add_subdirectory(tests)//g' CMakeLists.txt &&     mkdir -p build && cd build && cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX .. && make &&     make install" shape="box"];
  "sha256:fd80c197130c1d1878600fb25cbd6e16f8b68033c36eba56d0edd7997cacf91e" [label="mkdir{path=/opt}" shape="note"];
  "sha256:42379d2497878fa57762f51903038413548afdd915abfb9a6c704fd15fc1c40f" [label="/bin/sh -c git clone https://github.com/pfnet-research/menoh.git &&     cd menoh &&     sed -i 's/add_subdirectory(example)//g' CMakeLists.txt &&     sed -i 's/add_subdirectory(test)//g' CMakeLists.txt &&     mkdir build &&     cd build &&     cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX .. &&     make install" shape="box"];
  "sha256:ee904e8b8cf224081caabfc6310411d22a17c172a027afe0f832051fcdc2ef7b" [label="/bin/sh -c gem install rake-compiler" shape="box"];
  "sha256:e449654dfee57d800f65eb95b85dc36e3000ae2fca12fefc0bfc9e3a31a3e8ea" [label="/bin/sh -c mkdir /opt/menoh-ruby" shape="box"];
  "sha256:fa3e9c287b8160445825d7334f1f408cdffd06cac19226a383bb5ce23041833c" [label="local://context" shape="ellipse"];
  "sha256:48c816fa2373f1d41f9731ec4a929fb872f425d7071a932cc8029eec97878174" [label="copy{src=/, dest=/opt/menoh-ruby}" shape="note"];
  "sha256:f819185d2763abea71e29a788145b559100fe29adee8237435b4aa2eb0ca17c7" [label="mkdir{path=/opt/menoh-ruby}" shape="note"];
  "sha256:b4fce66c698892b3ba78136d853be2882a617c937f1883fafb2e79409e0cb6d3" [label="/bin/sh -c rake && rake install" shape="box"];
  "sha256:79f5b0e8f02e37a5a34095556f9955e7c17adc474e49bee52ca67d2cb749ce32" [label="sha256:79f5b0e8f02e37a5a34095556f9955e7c17adc474e49bee52ca67d2cb749ce32" shape="plaintext"];
  "sha256:5f73206473d7fc08460a8a5cc6ee73735256a3a4981c7c1fa29cb36f44bf68a0" -> "sha256:18b661789a573da7aec62e6e20c2f7faa0eea68e023186c7caee0903f641c012" [label=""];
  "sha256:18b661789a573da7aec62e6e20c2f7faa0eea68e023186c7caee0903f641c012" -> "sha256:ebacefb5445198d7bceb15daedf68b778ddfcf0bf434073fd0ffcd52c7130060" [label=""];
  "sha256:ebacefb5445198d7bceb15daedf68b778ddfcf0bf434073fd0ffcd52c7130060" -> "sha256:d8392c8bbf6974c209b44e18a4fdc78b7c79323a1cc33ce47601390aa9041d18" [label=""];
  "sha256:d8392c8bbf6974c209b44e18a4fdc78b7c79323a1cc33ce47601390aa9041d18" -> "sha256:bd887c7cd5657e43b34c0f1a9567d5a6959d31ed8aabacc1f940d5998c3ce4a9" [label=""];
  "sha256:bd887c7cd5657e43b34c0f1a9567d5a6959d31ed8aabacc1f940d5998c3ce4a9" -> "sha256:fd80c197130c1d1878600fb25cbd6e16f8b68033c36eba56d0edd7997cacf91e" [label=""];
  "sha256:fd80c197130c1d1878600fb25cbd6e16f8b68033c36eba56d0edd7997cacf91e" -> "sha256:42379d2497878fa57762f51903038413548afdd915abfb9a6c704fd15fc1c40f" [label=""];
  "sha256:42379d2497878fa57762f51903038413548afdd915abfb9a6c704fd15fc1c40f" -> "sha256:ee904e8b8cf224081caabfc6310411d22a17c172a027afe0f832051fcdc2ef7b" [label=""];
  "sha256:ee904e8b8cf224081caabfc6310411d22a17c172a027afe0f832051fcdc2ef7b" -> "sha256:e449654dfee57d800f65eb95b85dc36e3000ae2fca12fefc0bfc9e3a31a3e8ea" [label=""];
  "sha256:e449654dfee57d800f65eb95b85dc36e3000ae2fca12fefc0bfc9e3a31a3e8ea" -> "sha256:48c816fa2373f1d41f9731ec4a929fb872f425d7071a932cc8029eec97878174" [label=""];
  "sha256:fa3e9c287b8160445825d7334f1f408cdffd06cac19226a383bb5ce23041833c" -> "sha256:48c816fa2373f1d41f9731ec4a929fb872f425d7071a932cc8029eec97878174" [label=""];
  "sha256:48c816fa2373f1d41f9731ec4a929fb872f425d7071a932cc8029eec97878174" -> "sha256:f819185d2763abea71e29a788145b559100fe29adee8237435b4aa2eb0ca17c7" [label=""];
  "sha256:f819185d2763abea71e29a788145b559100fe29adee8237435b4aa2eb0ca17c7" -> "sha256:b4fce66c698892b3ba78136d853be2882a617c937f1883fafb2e79409e0cb6d3" [label=""];
  "sha256:b4fce66c698892b3ba78136d853be2882a617c937f1883fafb2e79409e0cb6d3" -> "sha256:79f5b0e8f02e37a5a34095556f9955e7c17adc474e49bee52ca67d2cb749ce32" [label=""];
}

