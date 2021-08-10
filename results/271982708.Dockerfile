[app/sources/271982708.Dockerfile]
digraph {
  "sha256:5ff8c03cd51d062d2ebc732776229173168d10b015f8445ed696cd282e09ea34" [label="docker-image://docker.io/ucbjey/risecamp2018-base:2b580e66f1f7" shape="ellipse"];
  "sha256:c2a81eb5e58ca2b3d302401c46185d4d018e2e76b9883a757a260ea0a3d3a0c5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7cba8cb09c152f9163c8e34bbbd683960ea49f17930d641761ce19ca8bbeca02" [label="/bin/sh -c apt-get install -y g++" shape="box"];
  "sha256:19024645f077b0681c408327e220595e645f238f43646168671aff28c0fe9f10" [label="/bin/sh -c apt-get -y update &&     apt-get install --no-install-recommends -y       curl       openjdk-8-jdk-headless       ca-certificates-java &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2a47eaffcc7a73392332871418122d8dde4933982b01828e2dc9d43d4bb9aa77" [label="/bin/sh -c curl -L -o /usr/local/bin/coursier https://git.io/vgvpD &&     chmod +x /usr/local/bin/coursier" shape="box"];
  "sha256:9871b8b67f132e2832a51330c44fb0068afb828e374b56ec140fb0c0bea61872" [label="/bin/sh -c apt-get update && apt-get -yq dist-upgrade     && apt-get install -yq --no-install-recommends     build-essential ocaml ocamlbuild automake autoconf libtool wget python libssl-dev cmake gdb" shape="box"];
  "sha256:22c2af0557309bd900ac36b4a94eecd1da2ca9ebf6aa9912881dcb877ab11f82" [label="/bin/sh -c coursier bootstrap       -i user -I user:sh.almond:scala-kernel-api_$SCALA_VERSION:$ALMOND_VERSION       sh.almond:scala-kernel_$SCALA_VERSION:$ALMOND_VERSION       -o almond &&     ./almond --help &&     ./almond --install &&     rm almond" shape="box"];
  "sha256:c2dd312a4e1f7c51ab86e0b55efaa9eaf1a187b61827eec69227e3f18eac4a87" [label="/bin/sh -c git clone https://github.com/intel/linux-sgx.git -b sgx_2.3 &&     cd linux-sgx &&     ./download_prebuilt.sh &&     make --quiet sdk_install_pkg" shape="box"];
  "sha256:9bebbdd8a605897ae8a38d34ebcbb215e5124eb095a23f7b2cbedfabcc67438d" [label="/bin/sh -c echo $'no\\n/usr/local' | ${HOME}/linux-sgx/linux/installer/bin/sgx_linux_x64_sdk_*.bin" shape="box"];
  "sha256:cbe545163841303255013b79f45bce27a5aa4f1b83b3f282b12e443237b1853d" [label="/bin/sh -c rm -r linux-sgx" shape="box"];
  "sha256:4987e8ace7c829df34094880c99c1797f33c80dd10deca84529fd7bd31cc7852" [label="/bin/sh -c find $SGX_SDK/sdk_libs -name '*.so' -exec ln -s {} /usr/lib/ \\; && ldconfig" shape="box"];
  "sha256:288185625f9a44ee4f61604738121469a4cf3e9abf330032a517daf16cdb58d9" [label="/bin/sh -c /bin/bash -c '    git clone https://github.com/ankurdave/opaque.git -b risecamp2018 &&     cd opaque &&     openssl ecparam -name prime256v1 -genkey -noout -out private_key.pem &&     ./build/sbt publish-local'" shape="box"];
  "sha256:1c287c3fd84a1f056349342735898cfc06f7d24325cb481ec285c95c01d1adf6" [label="/bin/sh -c coursier fetch org.apache.spark:spark-sql_2.11:2.0.2" shape="box"];
  "sha256:502c815b90ee871d3feee4d07b3ae34b35d01d50b3e076acbf9cdb81f99d6de7" [label="/bin/sh -c cd opaque && ./build/sbt synthTestData" shape="box"];
  "sha256:f7977d47b853d7b7a1d293d96f936624a2eb989fdf96551f543672411fc713b3" [label="local://context" shape="ellipse"];
  "sha256:5aafa81d3d093068bfcb6dcf969b09a0f1fff9e27b1f96fca5461b18f83d3e20" [label="copy{src=/tutorial, dest=/home/}" shape="note"];
  "sha256:0767a591cd1eae002d727ad58bb7efeed7a094b55bc237daf9ffefd420ef78b7" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:bfee194fa0cd6ee4cab150687632436eba0acf3ffdb9f352579116eef0d0c52e" [label="sha256:bfee194fa0cd6ee4cab150687632436eba0acf3ffdb9f352579116eef0d0c52e" shape="plaintext"];
  "sha256:5ff8c03cd51d062d2ebc732776229173168d10b015f8445ed696cd282e09ea34" -> "sha256:c2a81eb5e58ca2b3d302401c46185d4d018e2e76b9883a757a260ea0a3d3a0c5" [label=""];
  "sha256:c2a81eb5e58ca2b3d302401c46185d4d018e2e76b9883a757a260ea0a3d3a0c5" -> "sha256:7cba8cb09c152f9163c8e34bbbd683960ea49f17930d641761ce19ca8bbeca02" [label=""];
  "sha256:7cba8cb09c152f9163c8e34bbbd683960ea49f17930d641761ce19ca8bbeca02" -> "sha256:19024645f077b0681c408327e220595e645f238f43646168671aff28c0fe9f10" [label=""];
  "sha256:19024645f077b0681c408327e220595e645f238f43646168671aff28c0fe9f10" -> "sha256:2a47eaffcc7a73392332871418122d8dde4933982b01828e2dc9d43d4bb9aa77" [label=""];
  "sha256:2a47eaffcc7a73392332871418122d8dde4933982b01828e2dc9d43d4bb9aa77" -> "sha256:9871b8b67f132e2832a51330c44fb0068afb828e374b56ec140fb0c0bea61872" [label=""];
  "sha256:9871b8b67f132e2832a51330c44fb0068afb828e374b56ec140fb0c0bea61872" -> "sha256:22c2af0557309bd900ac36b4a94eecd1da2ca9ebf6aa9912881dcb877ab11f82" [label=""];
  "sha256:22c2af0557309bd900ac36b4a94eecd1da2ca9ebf6aa9912881dcb877ab11f82" -> "sha256:c2dd312a4e1f7c51ab86e0b55efaa9eaf1a187b61827eec69227e3f18eac4a87" [label=""];
  "sha256:c2dd312a4e1f7c51ab86e0b55efaa9eaf1a187b61827eec69227e3f18eac4a87" -> "sha256:9bebbdd8a605897ae8a38d34ebcbb215e5124eb095a23f7b2cbedfabcc67438d" [label=""];
  "sha256:9bebbdd8a605897ae8a38d34ebcbb215e5124eb095a23f7b2cbedfabcc67438d" -> "sha256:cbe545163841303255013b79f45bce27a5aa4f1b83b3f282b12e443237b1853d" [label=""];
  "sha256:cbe545163841303255013b79f45bce27a5aa4f1b83b3f282b12e443237b1853d" -> "sha256:4987e8ace7c829df34094880c99c1797f33c80dd10deca84529fd7bd31cc7852" [label=""];
  "sha256:4987e8ace7c829df34094880c99c1797f33c80dd10deca84529fd7bd31cc7852" -> "sha256:288185625f9a44ee4f61604738121469a4cf3e9abf330032a517daf16cdb58d9" [label=""];
  "sha256:288185625f9a44ee4f61604738121469a4cf3e9abf330032a517daf16cdb58d9" -> "sha256:1c287c3fd84a1f056349342735898cfc06f7d24325cb481ec285c95c01d1adf6" [label=""];
  "sha256:1c287c3fd84a1f056349342735898cfc06f7d24325cb481ec285c95c01d1adf6" -> "sha256:502c815b90ee871d3feee4d07b3ae34b35d01d50b3e076acbf9cdb81f99d6de7" [label=""];
  "sha256:502c815b90ee871d3feee4d07b3ae34b35d01d50b3e076acbf9cdb81f99d6de7" -> "sha256:5aafa81d3d093068bfcb6dcf969b09a0f1fff9e27b1f96fca5461b18f83d3e20" [label=""];
  "sha256:f7977d47b853d7b7a1d293d96f936624a2eb989fdf96551f543672411fc713b3" -> "sha256:5aafa81d3d093068bfcb6dcf969b09a0f1fff9e27b1f96fca5461b18f83d3e20" [label=""];
  "sha256:5aafa81d3d093068bfcb6dcf969b09a0f1fff9e27b1f96fca5461b18f83d3e20" -> "sha256:0767a591cd1eae002d727ad58bb7efeed7a094b55bc237daf9ffefd420ef78b7" [label=""];
  "sha256:f7977d47b853d7b7a1d293d96f936624a2eb989fdf96551f543672411fc713b3" -> "sha256:0767a591cd1eae002d727ad58bb7efeed7a094b55bc237daf9ffefd420ef78b7" [label=""];
  "sha256:0767a591cd1eae002d727ad58bb7efeed7a094b55bc237daf9ffefd420ef78b7" -> "sha256:bfee194fa0cd6ee4cab150687632436eba0acf3ffdb9f352579116eef0d0c52e" [label=""];
}

