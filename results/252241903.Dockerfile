[app/sources/252241903.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:65166ad8c200d07df13794a67017853664829c96948e00b5e635c5c5a8745526" [label="local://context" shape="ellipse"];
  "sha256:7e5137617a3c18dc820e9242d71cfd30239b5b347cf3665b94a6e803b49bd081" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:99edc70695d51b749ee8f30c503651c446b7c1838cbd02ed46adbd551f21745b" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:6d42298a6c44c8b49000b638807b2121aee52b2062e3e787e75acc5c49b036d8" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:f17a99e61bcf4e9e5a11c87fd8b4b99ba43266c63a3260ab96f2c60b4284bf79" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:c06a4d2a158334d939c2f841979f8db67d8af42a8dc6a1817bb8721c2f8bde60" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:7a409f942f3197f6fab330e5acd091313f7ec19ee33d0e077cc8a2cee63bbb57" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:ea4d014bf7440205d67c329cac05d3910a526b7901b745390239fbdf176690ac" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:9b4d5906f1a1153f0919b1f551038b73a6a9754cfbfb7a3186f5ea78f32ee4de" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:57aa107cf39ab942491c5d7364314f9097c111d9a6e05ecba19ad748cc5853e9" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:b818ee51a850fe8dd1805b281ac24043194fd8b83851a7289aa9869d99cf600f" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:37d70716233474de8b0037aac6c0d390c9b777baf949f61cde3256ef5f94179b" [label="/bin/sh -c /install/install_pi_python3_toolchain.sh" shape="box"];
  "sha256:39cb3252e7787312594d36cb87e18d0965fa814dd9ac211b6e737ad6f50756cc" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:9b1c8b2502dcf98d5766761bb814e1663e59b230e18c2011601eac25b6991db4" [label="sha256:9b1c8b2502dcf98d5766761bb814e1663e59b230e18c2011601eac25b6991db4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7e5137617a3c18dc820e9242d71cfd30239b5b347cf3665b94a6e803b49bd081" [label=""];
  "sha256:65166ad8c200d07df13794a67017853664829c96948e00b5e635c5c5a8745526" -> "sha256:7e5137617a3c18dc820e9242d71cfd30239b5b347cf3665b94a6e803b49bd081" [label=""];
  "sha256:7e5137617a3c18dc820e9242d71cfd30239b5b347cf3665b94a6e803b49bd081" -> "sha256:99edc70695d51b749ee8f30c503651c446b7c1838cbd02ed46adbd551f21745b" [label=""];
  "sha256:99edc70695d51b749ee8f30c503651c446b7c1838cbd02ed46adbd551f21745b" -> "sha256:6d42298a6c44c8b49000b638807b2121aee52b2062e3e787e75acc5c49b036d8" [label=""];
  "sha256:6d42298a6c44c8b49000b638807b2121aee52b2062e3e787e75acc5c49b036d8" -> "sha256:f17a99e61bcf4e9e5a11c87fd8b4b99ba43266c63a3260ab96f2c60b4284bf79" [label=""];
  "sha256:f17a99e61bcf4e9e5a11c87fd8b4b99ba43266c63a3260ab96f2c60b4284bf79" -> "sha256:c06a4d2a158334d939c2f841979f8db67d8af42a8dc6a1817bb8721c2f8bde60" [label=""];
  "sha256:c06a4d2a158334d939c2f841979f8db67d8af42a8dc6a1817bb8721c2f8bde60" -> "sha256:7a409f942f3197f6fab330e5acd091313f7ec19ee33d0e077cc8a2cee63bbb57" [label=""];
  "sha256:7a409f942f3197f6fab330e5acd091313f7ec19ee33d0e077cc8a2cee63bbb57" -> "sha256:ea4d014bf7440205d67c329cac05d3910a526b7901b745390239fbdf176690ac" [label=""];
  "sha256:ea4d014bf7440205d67c329cac05d3910a526b7901b745390239fbdf176690ac" -> "sha256:9b4d5906f1a1153f0919b1f551038b73a6a9754cfbfb7a3186f5ea78f32ee4de" [label=""];
  "sha256:9b4d5906f1a1153f0919b1f551038b73a6a9754cfbfb7a3186f5ea78f32ee4de" -> "sha256:57aa107cf39ab942491c5d7364314f9097c111d9a6e05ecba19ad748cc5853e9" [label=""];
  "sha256:57aa107cf39ab942491c5d7364314f9097c111d9a6e05ecba19ad748cc5853e9" -> "sha256:b818ee51a850fe8dd1805b281ac24043194fd8b83851a7289aa9869d99cf600f" [label=""];
  "sha256:b818ee51a850fe8dd1805b281ac24043194fd8b83851a7289aa9869d99cf600f" -> "sha256:37d70716233474de8b0037aac6c0d390c9b777baf949f61cde3256ef5f94179b" [label=""];
  "sha256:37d70716233474de8b0037aac6c0d390c9b777baf949f61cde3256ef5f94179b" -> "sha256:39cb3252e7787312594d36cb87e18d0965fa814dd9ac211b6e737ad6f50756cc" [label=""];
  "sha256:65166ad8c200d07df13794a67017853664829c96948e00b5e635c5c5a8745526" -> "sha256:39cb3252e7787312594d36cb87e18d0965fa814dd9ac211b6e737ad6f50756cc" [label=""];
  "sha256:39cb3252e7787312594d36cb87e18d0965fa814dd9ac211b6e737ad6f50756cc" -> "sha256:9b1c8b2502dcf98d5766761bb814e1663e59b230e18c2011601eac25b6991db4" [label=""];
}

