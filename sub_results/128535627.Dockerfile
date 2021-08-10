[app/sub_sources/128535627.Dockerfile]
digraph {
  "sha256:a431a16b8938e31f1e10ea472501c065e5f4d74852ec7a747687ade6bc7c0bd6" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:87f6dd822780fa51abf195fe578a80e59d1cbdf03e0b181eff7c057fce3bc5eb" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python   git   cmake   sudo   gdb   xz-utils   jq   bzip2" shape="box"];
  "sha256:0ee96d70da8c29fa9a77636174eedb5d2269908f890d6b84d657918b424a8be9" [label="copy{src=/scripts/emscripten-wasm.sh, dest=/scripts/}" shape="note"];
  "sha256:7cb94ca7fc62cdf85837f8675d283472b414d09b331fced9f35b057c1f51bfd3" [label="copy{src=/wasm32-exp/node.sh, dest=/usr/local/bin/node}" shape="note"];
  "sha256:a8370aaa0ede865d1897ebcbd5fe6a95fcee1935c1f05afe325b9c727c1b9fca" [label="/bin/sh -c bash /scripts/emscripten-wasm.sh" shape="box"];
  "sha256:24feb7ca9a82c298f2b50d22ddc7673e027f7848541d2cacbe1b3475cc8a729a" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:97ef3d9c0851684860373cf7b090d1eb413e15e0ea06ba219f67c98908795feb" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:de125ecf1bb0190c9656c120fc8b1e1640993aef647d5d060690499030211e2a" [label="sha256:de125ecf1bb0190c9656c120fc8b1e1640993aef647d5d060690499030211e2a" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:87f6dd822780fa51abf195fe578a80e59d1cbdf03e0b181eff7c057fce3bc5eb" [label=""];
  "sha256:87f6dd822780fa51abf195fe578a80e59d1cbdf03e0b181eff7c057fce3bc5eb" -> "sha256:0ee96d70da8c29fa9a77636174eedb5d2269908f890d6b84d657918b424a8be9" [label=""];
  "sha256:a431a16b8938e31f1e10ea472501c065e5f4d74852ec7a747687ade6bc7c0bd6" -> "sha256:0ee96d70da8c29fa9a77636174eedb5d2269908f890d6b84d657918b424a8be9" [label=""];
  "sha256:0ee96d70da8c29fa9a77636174eedb5d2269908f890d6b84d657918b424a8be9" -> "sha256:7cb94ca7fc62cdf85837f8675d283472b414d09b331fced9f35b057c1f51bfd3" [label=""];
  "sha256:a431a16b8938e31f1e10ea472501c065e5f4d74852ec7a747687ade6bc7c0bd6" -> "sha256:7cb94ca7fc62cdf85837f8675d283472b414d09b331fced9f35b057c1f51bfd3" [label=""];
  "sha256:7cb94ca7fc62cdf85837f8675d283472b414d09b331fced9f35b057c1f51bfd3" -> "sha256:a8370aaa0ede865d1897ebcbd5fe6a95fcee1935c1f05afe325b9c727c1b9fca" [label=""];
  "sha256:a8370aaa0ede865d1897ebcbd5fe6a95fcee1935c1f05afe325b9c727c1b9fca" -> "sha256:24feb7ca9a82c298f2b50d22ddc7673e027f7848541d2cacbe1b3475cc8a729a" [label=""];
  "sha256:a431a16b8938e31f1e10ea472501c065e5f4d74852ec7a747687ade6bc7c0bd6" -> "sha256:24feb7ca9a82c298f2b50d22ddc7673e027f7848541d2cacbe1b3475cc8a729a" [label=""];
  "sha256:24feb7ca9a82c298f2b50d22ddc7673e027f7848541d2cacbe1b3475cc8a729a" -> "sha256:97ef3d9c0851684860373cf7b090d1eb413e15e0ea06ba219f67c98908795feb" [label=""];
  "sha256:97ef3d9c0851684860373cf7b090d1eb413e15e0ea06ba219f67c98908795feb" -> "sha256:de125ecf1bb0190c9656c120fc8b1e1640993aef647d5d060690499030211e2a" [label=""];
}

