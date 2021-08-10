[app/sources/320557316.Dockerfile]
digraph {
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" [label="local://context" shape="ellipse"];
  "sha256:758ea34adf697e5e3cda5149032da36d7c8d24f09ead8d110b43f071d9a36216" [label="docker-image://docker.io/library/debian:9.5-slim" shape="ellipse"];
  "sha256:23b6c19c4c086c97aa963b594300c6d49bee3f75487cc42570d44d93993f5b87" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     git     software-properties-common     build-essential     ca-certificates     uuid-dev     curl     openssl     libssl-dev     libcurl4-openssl-dev     python     debhelper     dh-systemd     pkg-config" shape="box"];
  "sha256:100c81aff81bda59ed220fd3576ddc5cafc3d341a6d9fa402959938aa31faff9" [label="copy{src=/apt/cmake.sh, dest=/}" shape="note"];
  "sha256:4cb86cd291c89d260304df8b070ec960dbffaaf64d2e9a76fc8ce0b9091a4ef2" [label="/bin/sh -c apt-get purge --auto-remove -y cmake &&     bash /cmake.sh 3.11.4" shape="box"];
  "sha256:6e7a0c7805df42107297d1fe4809e49fa2da00d281af01996b22aee15bb3e89e" [label="copy{src=/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabihf, dest=/toolchain/}" shape="note"];
  "sha256:3083da07d629893ddc5d31a8a6514d073f137edaf4efa47a2f6b65894eaf8ca5" [label="copy{src=/debian9/openssl.sh, dest=/},copy{src=/apt/qemu.sh, dest=/}" shape="note"];
  "sha256:2d5f1ec12b0d1246a7bc679523b978494016a84197be87e7bcc29ffa87407aa8" [label="/bin/sh -c bash /openssl.sh linux-armv4 ${TRIPLE}- ${SYSROOT} &&     bash /qemu.sh arm" shape="box"];
  "sha256:fa72d6da7d90568bd1bb99fea53fda8be99f1cb682d4dc2b1ae010f8174048dd" [label="copy{src=/apt/zlib.sh, dest=/}" shape="note"];
  "sha256:5ce4488da4f0dac285d7c1fcd8fcfcac12769c8ae2ea0c9bdf75446657841a2b" [label="/bin/sh -c bash /zlib.sh 1.2.11 ${TRIPLE} ${SYSROOT}" shape="box"];
  "sha256:3ae0c11849cb24d3523791658158a54ed3d42afbe92ebbf05358a079e4df0589" [label="copy{src=/apt/curl.sh, dest=/}" shape="note"];
  "sha256:e624158b564dbf488b6397627084426088a9becfc0a3ba627596d3781ae633ec" [label="/bin/sh -c bash /curl.sh 7.59.0 ${TRIPLE} ${SYSROOT}" shape="box"];
  "sha256:e24b3e921000f7557f0098bdee221c4db2ad34b0eecd62fa04a46b9da7e231c2" [label="sha256:e24b3e921000f7557f0098bdee221c4db2ad34b0eecd62fa04a46b9da7e231c2" shape="plaintext"];
  "sha256:758ea34adf697e5e3cda5149032da36d7c8d24f09ead8d110b43f071d9a36216" -> "sha256:23b6c19c4c086c97aa963b594300c6d49bee3f75487cc42570d44d93993f5b87" [label=""];
  "sha256:23b6c19c4c086c97aa963b594300c6d49bee3f75487cc42570d44d93993f5b87" -> "sha256:100c81aff81bda59ed220fd3576ddc5cafc3d341a6d9fa402959938aa31faff9" [label=""];
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" -> "sha256:100c81aff81bda59ed220fd3576ddc5cafc3d341a6d9fa402959938aa31faff9" [label=""];
  "sha256:100c81aff81bda59ed220fd3576ddc5cafc3d341a6d9fa402959938aa31faff9" -> "sha256:4cb86cd291c89d260304df8b070ec960dbffaaf64d2e9a76fc8ce0b9091a4ef2" [label=""];
  "sha256:4cb86cd291c89d260304df8b070ec960dbffaaf64d2e9a76fc8ce0b9091a4ef2" -> "sha256:6e7a0c7805df42107297d1fe4809e49fa2da00d281af01996b22aee15bb3e89e" [label=""];
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" -> "sha256:6e7a0c7805df42107297d1fe4809e49fa2da00d281af01996b22aee15bb3e89e" [label=""];
  "sha256:6e7a0c7805df42107297d1fe4809e49fa2da00d281af01996b22aee15bb3e89e" -> "sha256:3083da07d629893ddc5d31a8a6514d073f137edaf4efa47a2f6b65894eaf8ca5" [label=""];
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" -> "sha256:3083da07d629893ddc5d31a8a6514d073f137edaf4efa47a2f6b65894eaf8ca5" [label=""];
  "sha256:3083da07d629893ddc5d31a8a6514d073f137edaf4efa47a2f6b65894eaf8ca5" -> "sha256:2d5f1ec12b0d1246a7bc679523b978494016a84197be87e7bcc29ffa87407aa8" [label=""];
  "sha256:2d5f1ec12b0d1246a7bc679523b978494016a84197be87e7bcc29ffa87407aa8" -> "sha256:fa72d6da7d90568bd1bb99fea53fda8be99f1cb682d4dc2b1ae010f8174048dd" [label=""];
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" -> "sha256:fa72d6da7d90568bd1bb99fea53fda8be99f1cb682d4dc2b1ae010f8174048dd" [label=""];
  "sha256:fa72d6da7d90568bd1bb99fea53fda8be99f1cb682d4dc2b1ae010f8174048dd" -> "sha256:5ce4488da4f0dac285d7c1fcd8fcfcac12769c8ae2ea0c9bdf75446657841a2b" [label=""];
  "sha256:5ce4488da4f0dac285d7c1fcd8fcfcac12769c8ae2ea0c9bdf75446657841a2b" -> "sha256:3ae0c11849cb24d3523791658158a54ed3d42afbe92ebbf05358a079e4df0589" [label=""];
  "sha256:b7a435d2136cd8c2b14972f546bcd79f8450a7e48d3587fdd4504190e4846879" -> "sha256:3ae0c11849cb24d3523791658158a54ed3d42afbe92ebbf05358a079e4df0589" [label=""];
  "sha256:3ae0c11849cb24d3523791658158a54ed3d42afbe92ebbf05358a079e4df0589" -> "sha256:e624158b564dbf488b6397627084426088a9becfc0a3ba627596d3781ae633ec" [label=""];
  "sha256:e624158b564dbf488b6397627084426088a9becfc0a3ba627596d3781ae633ec" -> "sha256:e24b3e921000f7557f0098bdee221c4db2ad34b0eecd62fa04a46b9da7e231c2" [label=""];
}

