[app/sub_sources/128535607.Dockerfile]
digraph {
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:41c30d8b5d1dec7cc16d1b6be946df7937fb72f322496c5c7ea30e71896dd730" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:38a73e30ee9051a661640aca3617c5c10459050231014fcdb4c478b75d69afc6" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:dcf549ce5347c8634fcf895c480fd6a3b902c55bfa2e111999e979e3c175641b" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:08d68d1fffd90fc7b448c5c0f992c7e13ebea83f9d62b2ab8f91cbab80339545" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_and_make_toolchain android-ndk-r15c-linux-x86_64.zip arm 14" shape="box"];
  "sha256:b663136ee33bd6d9a3a95fffd1243f86cc9836bd071ba2d2a781cbbe995812ab" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update &&     apt-get install -y --no-install-recommends   libgl1-mesa-glx   libpulse0   libstdc++6:i386   openjdk-8-jre-headless   tzdata" shape="box"];
  "sha256:236bb7734dbeee62db799bc1e868c0013513d501c9a4428156629748f362ee96" [label="copy{src=/scripts/android-sdk.sh, dest=/scripts/}" shape="note"];
  "sha256:8ecdef64406d0d3c79b25d1fbc64a8878f9ed01bc341f57fddb7a27c2b7d7e42" [label="/bin/sh -c . /scripts/android-sdk.sh &&     download_and_create_avd 4333796 armeabi-v7a 18" shape="box"];
  "sha256:41a36003049904d9e954dfbaa048d6e4e506453e7d9de2373fd1eabd4c6c4d38" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:3d908662fdae5b6a0e3f3a54172a10862882696698fc429a09fa02a94dcaaf96" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:e73bc34d5fa59c7f9751cc701e72d7ad951097eab7d237c70505bacebf75c0ad" [label="copy{src=/scripts/android-start-emulator.sh, dest=/scripts/}" shape="note"];
  "sha256:fc8c07ccbd537d3517e2158ed6c46c38f48ba53ee26a403b2b8232fd192837e8" [label="sha256:fc8c07ccbd537d3517e2158ed6c46c38f48ba53ee26a403b2b8232fd192837e8" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:41c30d8b5d1dec7cc16d1b6be946df7937fb72f322496c5c7ea30e71896dd730" [label=""];
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" -> "sha256:41c30d8b5d1dec7cc16d1b6be946df7937fb72f322496c5c7ea30e71896dd730" [label=""];
  "sha256:41c30d8b5d1dec7cc16d1b6be946df7937fb72f322496c5c7ea30e71896dd730" -> "sha256:38a73e30ee9051a661640aca3617c5c10459050231014fcdb4c478b75d69afc6" [label=""];
  "sha256:38a73e30ee9051a661640aca3617c5c10459050231014fcdb4c478b75d69afc6" -> "sha256:dcf549ce5347c8634fcf895c480fd6a3b902c55bfa2e111999e979e3c175641b" [label=""];
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" -> "sha256:dcf549ce5347c8634fcf895c480fd6a3b902c55bfa2e111999e979e3c175641b" [label=""];
  "sha256:dcf549ce5347c8634fcf895c480fd6a3b902c55bfa2e111999e979e3c175641b" -> "sha256:08d68d1fffd90fc7b448c5c0f992c7e13ebea83f9d62b2ab8f91cbab80339545" [label=""];
  "sha256:08d68d1fffd90fc7b448c5c0f992c7e13ebea83f9d62b2ab8f91cbab80339545" -> "sha256:b663136ee33bd6d9a3a95fffd1243f86cc9836bd071ba2d2a781cbbe995812ab" [label=""];
  "sha256:b663136ee33bd6d9a3a95fffd1243f86cc9836bd071ba2d2a781cbbe995812ab" -> "sha256:236bb7734dbeee62db799bc1e868c0013513d501c9a4428156629748f362ee96" [label=""];
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" -> "sha256:236bb7734dbeee62db799bc1e868c0013513d501c9a4428156629748f362ee96" [label=""];
  "sha256:236bb7734dbeee62db799bc1e868c0013513d501c9a4428156629748f362ee96" -> "sha256:8ecdef64406d0d3c79b25d1fbc64a8878f9ed01bc341f57fddb7a27c2b7d7e42" [label=""];
  "sha256:8ecdef64406d0d3c79b25d1fbc64a8878f9ed01bc341f57fddb7a27c2b7d7e42" -> "sha256:41a36003049904d9e954dfbaa048d6e4e506453e7d9de2373fd1eabd4c6c4d38" [label=""];
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" -> "sha256:41a36003049904d9e954dfbaa048d6e4e506453e7d9de2373fd1eabd4c6c4d38" [label=""];
  "sha256:41a36003049904d9e954dfbaa048d6e4e506453e7d9de2373fd1eabd4c6c4d38" -> "sha256:3d908662fdae5b6a0e3f3a54172a10862882696698fc429a09fa02a94dcaaf96" [label=""];
  "sha256:3d908662fdae5b6a0e3f3a54172a10862882696698fc429a09fa02a94dcaaf96" -> "sha256:e73bc34d5fa59c7f9751cc701e72d7ad951097eab7d237c70505bacebf75c0ad" [label=""];
  "sha256:b794b0d2f48572f26245dc2cc4645377a7e5f48c0a8bbbecf6c15791668d9371" -> "sha256:e73bc34d5fa59c7f9751cc701e72d7ad951097eab7d237c70505bacebf75c0ad" [label=""];
  "sha256:e73bc34d5fa59c7f9751cc701e72d7ad951097eab7d237c70505bacebf75c0ad" -> "sha256:fc8c07ccbd537d3517e2158ed6c46c38f48ba53ee26a403b2b8232fd192837e8" [label=""];
}

