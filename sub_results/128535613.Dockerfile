[app/sub_sources/128535613.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:a5a93a937c25daaa8ae6306549dada0e4766f68472017604ab219467eebe6821" [label="local://context" shape="ellipse"];
  "sha256:32331f394b5b984953001048127682ed5c011f2bf21024cad542734c02a9ca0d" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:540dc15f46d1016cb3f8d0bc4ae185d52abcb2366bde8585a62cd86935ceae41" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:f4d42c83e34969e8f631261af8cdd6c5f55672b4266f3dd3d9f0caa902e65b20" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:bf3ff20ccad088bd8fc8f8df18fbab6cdee6acc552789090b753d80912216851" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_and_make_toolchain android-ndk-r15c-linux-x86_64.zip arm64 21" shape="box"];
  "sha256:0d7ae9c21dc63950cc760850fb10ade756cc9ef582ab0234061efa6a669e53f9" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:3f913661dd2f54d08fdb5dbf532e9f261a715bc1655064885918adb08c323fc5" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:b77d3288bcf9208b5882b7707e6150ffc1441639744416050b7db5464415e11a" [label="sha256:b77d3288bcf9208b5882b7707e6150ffc1441639744416050b7db5464415e11a" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:32331f394b5b984953001048127682ed5c011f2bf21024cad542734c02a9ca0d" [label=""];
  "sha256:a5a93a937c25daaa8ae6306549dada0e4766f68472017604ab219467eebe6821" -> "sha256:32331f394b5b984953001048127682ed5c011f2bf21024cad542734c02a9ca0d" [label=""];
  "sha256:32331f394b5b984953001048127682ed5c011f2bf21024cad542734c02a9ca0d" -> "sha256:540dc15f46d1016cb3f8d0bc4ae185d52abcb2366bde8585a62cd86935ceae41" [label=""];
  "sha256:540dc15f46d1016cb3f8d0bc4ae185d52abcb2366bde8585a62cd86935ceae41" -> "sha256:f4d42c83e34969e8f631261af8cdd6c5f55672b4266f3dd3d9f0caa902e65b20" [label=""];
  "sha256:a5a93a937c25daaa8ae6306549dada0e4766f68472017604ab219467eebe6821" -> "sha256:f4d42c83e34969e8f631261af8cdd6c5f55672b4266f3dd3d9f0caa902e65b20" [label=""];
  "sha256:f4d42c83e34969e8f631261af8cdd6c5f55672b4266f3dd3d9f0caa902e65b20" -> "sha256:bf3ff20ccad088bd8fc8f8df18fbab6cdee6acc552789090b753d80912216851" [label=""];
  "sha256:bf3ff20ccad088bd8fc8f8df18fbab6cdee6acc552789090b753d80912216851" -> "sha256:0d7ae9c21dc63950cc760850fb10ade756cc9ef582ab0234061efa6a669e53f9" [label=""];
  "sha256:a5a93a937c25daaa8ae6306549dada0e4766f68472017604ab219467eebe6821" -> "sha256:0d7ae9c21dc63950cc760850fb10ade756cc9ef582ab0234061efa6a669e53f9" [label=""];
  "sha256:0d7ae9c21dc63950cc760850fb10ade756cc9ef582ab0234061efa6a669e53f9" -> "sha256:3f913661dd2f54d08fdb5dbf532e9f261a715bc1655064885918adb08c323fc5" [label=""];
  "sha256:3f913661dd2f54d08fdb5dbf532e9f261a715bc1655064885918adb08c323fc5" -> "sha256:b77d3288bcf9208b5882b7707e6150ffc1441639744416050b7db5464415e11a" [label=""];
}

