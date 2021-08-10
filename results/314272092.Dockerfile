[app/sources/314272092.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:b83fc7334c9044ccd43614603ead2a9323b92bb916ad33a35c55a2011f06d331" [label="local://context" shape="ellipse"];
  "sha256:071d5c51b038e79176c1ff41ba87052c9c7ad2f1f2ee2a18cb2ca4d60f15e481" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:1c66847d28e947ac2a0177c9a5aca50761130d156df1b2aacc1b52b2c4d119b6" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:d6f016a56b77244940186c4ef707a1e76765a0cbd91eddafa5277006123f8841" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:24cd71ea520d7def4b2f3db950c2c8fc991a2d77fbe00311b4621fad0628433a" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:e6f8936a7a78b041ee66d8749b20e9c9f373ef1ac9ae105ce9f9eec79230212a" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:c7c0977e6ca166b4c0cfd3b2203a7aff214694efead840d376a47e966067a763" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:bcbba4b538583685ac9e11ba2bf23bbde2a932f34633248798c7595f4c3ef588" [label="/bin/sh -c apt-get update && apt-get install -y         python-numpy         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a035a5bf1baf21d762ac5d0ef635c9ab9b698369815ef6c647af8713b9ba1107" [label="/bin/sh -c mkdir -p ${ANDROID_DEV_HOME}" shape="box"];
  "sha256:7b9324e0b1408a3f4ce9d6d9a310c4dfa98494593a2e9a0c46999fb314959d83" [label="/bin/sh -c cd ${ANDROID_DEV_HOME} &&     wget -q ${ANDROID_SDK_URL} &&     unzip ${ANDROID_SDK_FILENAME} -d android-sdk-linux &&     rm ${ANDROID_SDK_FILENAME} &&     bash -c \"ln -s ${ANDROID_DEV_HOME}/android-sdk-* ${ANDROID_SDK_HOME}\" &&     echo y | android update sdk --no-ui -a --filter tools,platform-tools,android-${ANDROID_API_LEVEL},build-tools-${ANDROID_BUILD_TOOLS_VERSION}" shape="box"];
  "sha256:28e5303257d14f2c63ecdbbe5f6e576ecb26ec92f2abc0f429d4f424ca6e1626" [label="/bin/sh -c cd ${ANDROID_DEV_HOME} &&     wget -q ${ANDROID_NDK_URL} &&     unzip ${ANDROID_NDK_FILENAME} -d ${ANDROID_DEV_HOME} &&     sed -i 15i\"#include <linux/compiler.h>\" ${ANDROID_DEV_HOME}/android-ndk-r14b/platforms/android-14/arch-arm/usr/include/linux/futex.h &&     sed -i 15i\"#include <linux/compiler.h>\" ${ANDROID_DEV_HOME}/android-ndk-r14b/platforms/android-14/arch-mips/usr/include/linux/futex.h &&     sed -i 15i\"#include <linux/compiler.h>\" ${ANDROID_DEV_HOME}/android-ndk-r14b/platforms/android-14/arch-x86/usr/include/linux/futex.h &&     rm ${ANDROID_NDK_FILENAME} &&     bash -c \"ln -s ${ANDROID_DEV_HOME}/android-ndk-* ${ANDROID_NDK_HOME}\"" shape="box"];
  "sha256:cdb5eeab03bdf88743b83fb4d5ac5313194525f6dd8ee920d985c578933077de" [label="/bin/sh -c chmod -R go=u ${ANDROID_DEV_HOME}" shape="box"];
  "sha256:e907682b35a9140fdfcf42552cfefbb26ff954a339a89b20b96b750e12e6833d" [label="sha256:e907682b35a9140fdfcf42552cfefbb26ff954a339a89b20b96b750e12e6833d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:071d5c51b038e79176c1ff41ba87052c9c7ad2f1f2ee2a18cb2ca4d60f15e481" [label=""];
  "sha256:b83fc7334c9044ccd43614603ead2a9323b92bb916ad33a35c55a2011f06d331" -> "sha256:071d5c51b038e79176c1ff41ba87052c9c7ad2f1f2ee2a18cb2ca4d60f15e481" [label=""];
  "sha256:071d5c51b038e79176c1ff41ba87052c9c7ad2f1f2ee2a18cb2ca4d60f15e481" -> "sha256:1c66847d28e947ac2a0177c9a5aca50761130d156df1b2aacc1b52b2c4d119b6" [label=""];
  "sha256:1c66847d28e947ac2a0177c9a5aca50761130d156df1b2aacc1b52b2c4d119b6" -> "sha256:d6f016a56b77244940186c4ef707a1e76765a0cbd91eddafa5277006123f8841" [label=""];
  "sha256:d6f016a56b77244940186c4ef707a1e76765a0cbd91eddafa5277006123f8841" -> "sha256:24cd71ea520d7def4b2f3db950c2c8fc991a2d77fbe00311b4621fad0628433a" [label=""];
  "sha256:24cd71ea520d7def4b2f3db950c2c8fc991a2d77fbe00311b4621fad0628433a" -> "sha256:e6f8936a7a78b041ee66d8749b20e9c9f373ef1ac9ae105ce9f9eec79230212a" [label=""];
  "sha256:e6f8936a7a78b041ee66d8749b20e9c9f373ef1ac9ae105ce9f9eec79230212a" -> "sha256:c7c0977e6ca166b4c0cfd3b2203a7aff214694efead840d376a47e966067a763" [label=""];
  "sha256:b83fc7334c9044ccd43614603ead2a9323b92bb916ad33a35c55a2011f06d331" -> "sha256:c7c0977e6ca166b4c0cfd3b2203a7aff214694efead840d376a47e966067a763" [label=""];
  "sha256:c7c0977e6ca166b4c0cfd3b2203a7aff214694efead840d376a47e966067a763" -> "sha256:bcbba4b538583685ac9e11ba2bf23bbde2a932f34633248798c7595f4c3ef588" [label=""];
  "sha256:bcbba4b538583685ac9e11ba2bf23bbde2a932f34633248798c7595f4c3ef588" -> "sha256:a035a5bf1baf21d762ac5d0ef635c9ab9b698369815ef6c647af8713b9ba1107" [label=""];
  "sha256:a035a5bf1baf21d762ac5d0ef635c9ab9b698369815ef6c647af8713b9ba1107" -> "sha256:7b9324e0b1408a3f4ce9d6d9a310c4dfa98494593a2e9a0c46999fb314959d83" [label=""];
  "sha256:7b9324e0b1408a3f4ce9d6d9a310c4dfa98494593a2e9a0c46999fb314959d83" -> "sha256:28e5303257d14f2c63ecdbbe5f6e576ecb26ec92f2abc0f429d4f424ca6e1626" [label=""];
  "sha256:28e5303257d14f2c63ecdbbe5f6e576ecb26ec92f2abc0f429d4f424ca6e1626" -> "sha256:cdb5eeab03bdf88743b83fb4d5ac5313194525f6dd8ee920d985c578933077de" [label=""];
  "sha256:cdb5eeab03bdf88743b83fb4d5ac5313194525f6dd8ee920d985c578933077de" -> "sha256:e907682b35a9140fdfcf42552cfefbb26ff954a339a89b20b96b750e12e6833d" [label=""];
}

