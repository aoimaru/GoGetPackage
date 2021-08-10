[app/sources/273939602.Dockerfile]
digraph {
  "sha256:6f4909fe06faf511359f31ae0f1e9b7a88cd9eb52798eb0b377c73b9b0df9a5f" [label="local://context" shape="ellipse"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:0c6feb1c20d0a0cc95d97d2bb6d75fca6b14e18ba0390e359bda7335bfd1f468" [label="/bin/sh -c apt-get update && apt-get install -y make autoconf automake libtool libtool-bin                        flex bison                        libglib2.0-dev libgcrypt20-dev" shape="box"];
  "sha256:6fa17a4834c9dabe692ba8d00a4f8cd1a8001a523b1279cd0a5160b1bafb73b4" [label="/bin/sh -c git clone --depth=1 https://code.wireshark.org/review/wireshark" shape="box"];
  "sha256:0a1aea4fcc19b3e3552ed94bd32e461366c12e9e2d3d943327cd6b0ef26398e3" [label="/bin/sh -c git clone --depth=1 https://bitbucket.org/jwzawadzki/wireshark-fuzzdb.git" shape="box"];
  "sha256:b6d3a55d0d57d37a2019c09625c33e1fb10c6636d5b75406340f51801968d189" [label="mkdir{path=/src/wireshark}" shape="note"];
  "sha256:00f3ff55d3143fd6ee7d74fc0b45f01ac3ac57d6ed81dc5449573cf1af67590b" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:0c7a728c7a8dfa328a5ffc2e36b4c0427a38102139ff768ca68bf57686cd7d29" [label="sha256:0c7a728c7a8dfa328a5ffc2e36b4c0427a38102139ff768ca68bf57686cd7d29" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:0c6feb1c20d0a0cc95d97d2bb6d75fca6b14e18ba0390e359bda7335bfd1f468" [label=""];
  "sha256:0c6feb1c20d0a0cc95d97d2bb6d75fca6b14e18ba0390e359bda7335bfd1f468" -> "sha256:6fa17a4834c9dabe692ba8d00a4f8cd1a8001a523b1279cd0a5160b1bafb73b4" [label=""];
  "sha256:6fa17a4834c9dabe692ba8d00a4f8cd1a8001a523b1279cd0a5160b1bafb73b4" -> "sha256:0a1aea4fcc19b3e3552ed94bd32e461366c12e9e2d3d943327cd6b0ef26398e3" [label=""];
  "sha256:0a1aea4fcc19b3e3552ed94bd32e461366c12e9e2d3d943327cd6b0ef26398e3" -> "sha256:b6d3a55d0d57d37a2019c09625c33e1fb10c6636d5b75406340f51801968d189" [label=""];
  "sha256:b6d3a55d0d57d37a2019c09625c33e1fb10c6636d5b75406340f51801968d189" -> "sha256:00f3ff55d3143fd6ee7d74fc0b45f01ac3ac57d6ed81dc5449573cf1af67590b" [label=""];
  "sha256:6f4909fe06faf511359f31ae0f1e9b7a88cd9eb52798eb0b377c73b9b0df9a5f" -> "sha256:00f3ff55d3143fd6ee7d74fc0b45f01ac3ac57d6ed81dc5449573cf1af67590b" [label=""];
  "sha256:00f3ff55d3143fd6ee7d74fc0b45f01ac3ac57d6ed81dc5449573cf1af67590b" -> "sha256:0c7a728c7a8dfa328a5ffc2e36b4c0427a38102139ff768ca68bf57686cd7d29" [label=""];
}

