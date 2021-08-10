[app/sources/220998531.Dockerfile]
digraph {
  "sha256:30e5972b9f9fb9bb72d43c6ce07555691b37e4bad395ca42e4e6b2cfec6c1b4f" [label="docker-image://docker.io/library/opensuse:42.1" shape="ellipse"];
  "sha256:c4c3e0771a375490575bcacf24e8968751c97814a32993d4f8b8dc53a95071ff" [label="/bin/sh -c zypper -n install binutils               cmake               which               gcc               llvm-clang               tar               ncurses-utils               curl               git               sudo &&     ln -s /usr/bin/clang++ /usr/bin/clang++-3.5 &&     zypper clean -a" shape="box"];
  "sha256:9292597df57620da4cb4dcbfd764066637664abf4c0b67b0b30ea1a0037bf965" [label="/bin/sh -c zypper -n install --force-resolution                       libunwind                       libicu                       lttng-ust                       libuuid1                       libopenssl1_0_0                       libcurl4                       krb5 &&     zypper clean -a" shape="box"];
  "sha256:dc5bd1231641b83368ddfbc5f84816579b434da8c1acefacb68352ab60817add" [label="/bin/sh -c useradd -m code_executor -u ${USER_ID} -g wheel" shape="box"];
  "sha256:e5bc1b5c4b4c8f3922d6a4f721ca32232c00511eefede2d71e7f00ade24471fe" [label="/bin/sh -c echo 'code_executor ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:a673be201554d29bdbc78c368884628f031b43eee0ef2b75943c8d178751bef6" [label="/bin/sh -c chmod -R a+rwx /usr/local" shape="box"];
  "sha256:8c0f32df750ef6182ba4b111e22c12d3ecbc14889a497b4e52fa5104ae1fe4b8" [label="/bin/sh -c chmod -R a+rwx /home" shape="box"];
  "sha256:61e5415a251d2b900e22780c4dabb92ef9a36316fd03d783ab2946add4dead8a" [label="/bin/sh -c chmod -R 755 /usr/lib/sudo" shape="box"];
  "sha256:990dc33c64a32c998a27306f8b31caa038c0a6027373e9987f45071936ef62eb" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:7387a8df709119b4123be62d75e234b41a91d4beafe6457e48d0b1537490f7f7" [label="sha256:7387a8df709119b4123be62d75e234b41a91d4beafe6457e48d0b1537490f7f7" shape="plaintext"];
  "sha256:30e5972b9f9fb9bb72d43c6ce07555691b37e4bad395ca42e4e6b2cfec6c1b4f" -> "sha256:c4c3e0771a375490575bcacf24e8968751c97814a32993d4f8b8dc53a95071ff" [label=""];
  "sha256:c4c3e0771a375490575bcacf24e8968751c97814a32993d4f8b8dc53a95071ff" -> "sha256:9292597df57620da4cb4dcbfd764066637664abf4c0b67b0b30ea1a0037bf965" [label=""];
  "sha256:9292597df57620da4cb4dcbfd764066637664abf4c0b67b0b30ea1a0037bf965" -> "sha256:dc5bd1231641b83368ddfbc5f84816579b434da8c1acefacb68352ab60817add" [label=""];
  "sha256:dc5bd1231641b83368ddfbc5f84816579b434da8c1acefacb68352ab60817add" -> "sha256:e5bc1b5c4b4c8f3922d6a4f721ca32232c00511eefede2d71e7f00ade24471fe" [label=""];
  "sha256:e5bc1b5c4b4c8f3922d6a4f721ca32232c00511eefede2d71e7f00ade24471fe" -> "sha256:a673be201554d29bdbc78c368884628f031b43eee0ef2b75943c8d178751bef6" [label=""];
  "sha256:a673be201554d29bdbc78c368884628f031b43eee0ef2b75943c8d178751bef6" -> "sha256:8c0f32df750ef6182ba4b111e22c12d3ecbc14889a497b4e52fa5104ae1fe4b8" [label=""];
  "sha256:8c0f32df750ef6182ba4b111e22c12d3ecbc14889a497b4e52fa5104ae1fe4b8" -> "sha256:61e5415a251d2b900e22780c4dabb92ef9a36316fd03d783ab2946add4dead8a" [label=""];
  "sha256:61e5415a251d2b900e22780c4dabb92ef9a36316fd03d783ab2946add4dead8a" -> "sha256:990dc33c64a32c998a27306f8b31caa038c0a6027373e9987f45071936ef62eb" [label=""];
  "sha256:990dc33c64a32c998a27306f8b31caa038c0a6027373e9987f45071936ef62eb" -> "sha256:7387a8df709119b4123be62d75e234b41a91d4beafe6457e48d0b1537490f7f7" [label=""];
}

