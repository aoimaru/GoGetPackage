[app/sources/226831241.Dockerfile]
digraph {
  "sha256:98d61522448b76379648bc2b540d23ee5b74882781eddf330416ea0ad484f92f" [label="local://context" shape="ellipse"];
  "sha256:5b18229a88a2028c6c143357dba5a724aee3fb340c4133c0c3133f04a8a98177" [label="docker-image://docker.io/library/mongo:latest" shape="ellipse"];
  "sha256:6880fdbfd535308322811c8ee01c23308879eb33db16689abd2f6c05596f4276" [label="/bin/sh -c mkdir /data/localdb && chown mongodb /data/localdb" shape="box"];
  "sha256:cfc3b47c94b1954391fa2c69597ce0391fe0cb41f0506ccde027b9b980a62d24" [label="/bin/sh -c apt-get update -qqy && apt-get install -qqy psmisc" shape="box"];
  "sha256:c78eb2a0c56dd9f9dfac53b5319be3b1617e5dac6b27b659bf9fa599f06b4bca" [label="copy{src=/*.js, dest=/},copy{src=/populate.sh, dest=/}" shape="note"];
  "sha256:4c64e1e77c925eced70ef3fd7d4ed81e47d9d16cfdb94806c517ef5c71ff95e4" [label="copy{src=/fixtures, dest=/fixtures}" shape="note"];
  "sha256:07bb7862bafbc2db8e00db5d7841c53262d29677eaa09a58008755080716db5e" [label="/bin/sh -c gosu mongodb /bin/bash ./populate.sh --dbpath=/data/localdb" shape="box"];
  "sha256:1cd1ecb2bdbcc3bd0566456739bfbfcf7169d921663c178ca33377c2fca0ac9f" [label="/bin/sh -c rm -r populate.sh *.js fixtures" shape="box"];
  "sha256:ed8c12fa61bac5a7430d0173af978632803f85441a1ca47eb14ce0eb5340083f" [label="sha256:ed8c12fa61bac5a7430d0173af978632803f85441a1ca47eb14ce0eb5340083f" shape="plaintext"];
  "sha256:5b18229a88a2028c6c143357dba5a724aee3fb340c4133c0c3133f04a8a98177" -> "sha256:6880fdbfd535308322811c8ee01c23308879eb33db16689abd2f6c05596f4276" [label=""];
  "sha256:6880fdbfd535308322811c8ee01c23308879eb33db16689abd2f6c05596f4276" -> "sha256:cfc3b47c94b1954391fa2c69597ce0391fe0cb41f0506ccde027b9b980a62d24" [label=""];
  "sha256:cfc3b47c94b1954391fa2c69597ce0391fe0cb41f0506ccde027b9b980a62d24" -> "sha256:c78eb2a0c56dd9f9dfac53b5319be3b1617e5dac6b27b659bf9fa599f06b4bca" [label=""];
  "sha256:98d61522448b76379648bc2b540d23ee5b74882781eddf330416ea0ad484f92f" -> "sha256:c78eb2a0c56dd9f9dfac53b5319be3b1617e5dac6b27b659bf9fa599f06b4bca" [label=""];
  "sha256:c78eb2a0c56dd9f9dfac53b5319be3b1617e5dac6b27b659bf9fa599f06b4bca" -> "sha256:4c64e1e77c925eced70ef3fd7d4ed81e47d9d16cfdb94806c517ef5c71ff95e4" [label=""];
  "sha256:98d61522448b76379648bc2b540d23ee5b74882781eddf330416ea0ad484f92f" -> "sha256:4c64e1e77c925eced70ef3fd7d4ed81e47d9d16cfdb94806c517ef5c71ff95e4" [label=""];
  "sha256:4c64e1e77c925eced70ef3fd7d4ed81e47d9d16cfdb94806c517ef5c71ff95e4" -> "sha256:07bb7862bafbc2db8e00db5d7841c53262d29677eaa09a58008755080716db5e" [label=""];
  "sha256:07bb7862bafbc2db8e00db5d7841c53262d29677eaa09a58008755080716db5e" -> "sha256:1cd1ecb2bdbcc3bd0566456739bfbfcf7169d921663c178ca33377c2fca0ac9f" [label=""];
  "sha256:1cd1ecb2bdbcc3bd0566456739bfbfcf7169d921663c178ca33377c2fca0ac9f" -> "sha256:ed8c12fa61bac5a7430d0173af978632803f85441a1ca47eb14ce0eb5340083f" [label=""];
}

