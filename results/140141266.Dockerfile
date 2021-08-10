[app/sources/140141266.Dockerfile]
digraph {
  "sha256:b4fffa7146252aae24a43588b0776f292567d4add0ed0090b5611a129c090124" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e38a3e6a861b50b60b301fcff9ef13d5653d50a352ca146ee1040cd2b8ddb073" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:16a5104a46ed1e8a825a63200d719c64b86047baa0b179ce722bc2e921a8fd1d" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:f3e46a63efc0bc305aa9762df2ebddb1532c8b36b6bc9e800053f1a735d62ed5" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:ca44114401b600d2f39fcb82c37843266ceafe1a32f95760499a8b8b337929ca" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_and_make_toolchain android-ndk-r15c-linux-x86_64.zip x86_64 21" shape="box"];
  "sha256:6e030348c8ed81fce212c9977e919bbe72e0efdaddc128d95055396dbaa27e3f" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:d9b3246bc945d6403afb29560e02eb107f5646d3c6259052c5e319eeee380099" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:e481ca87170bbe98e78e59b4807d351c529c369b5fe7542215ba9434df0e968a" [label="sha256:e481ca87170bbe98e78e59b4807d351c529c369b5fe7542215ba9434df0e968a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e38a3e6a861b50b60b301fcff9ef13d5653d50a352ca146ee1040cd2b8ddb073" [label=""];
  "sha256:b4fffa7146252aae24a43588b0776f292567d4add0ed0090b5611a129c090124" -> "sha256:e38a3e6a861b50b60b301fcff9ef13d5653d50a352ca146ee1040cd2b8ddb073" [label=""];
  "sha256:e38a3e6a861b50b60b301fcff9ef13d5653d50a352ca146ee1040cd2b8ddb073" -> "sha256:16a5104a46ed1e8a825a63200d719c64b86047baa0b179ce722bc2e921a8fd1d" [label=""];
  "sha256:16a5104a46ed1e8a825a63200d719c64b86047baa0b179ce722bc2e921a8fd1d" -> "sha256:f3e46a63efc0bc305aa9762df2ebddb1532c8b36b6bc9e800053f1a735d62ed5" [label=""];
  "sha256:b4fffa7146252aae24a43588b0776f292567d4add0ed0090b5611a129c090124" -> "sha256:f3e46a63efc0bc305aa9762df2ebddb1532c8b36b6bc9e800053f1a735d62ed5" [label=""];
  "sha256:f3e46a63efc0bc305aa9762df2ebddb1532c8b36b6bc9e800053f1a735d62ed5" -> "sha256:ca44114401b600d2f39fcb82c37843266ceafe1a32f95760499a8b8b337929ca" [label=""];
  "sha256:ca44114401b600d2f39fcb82c37843266ceafe1a32f95760499a8b8b337929ca" -> "sha256:6e030348c8ed81fce212c9977e919bbe72e0efdaddc128d95055396dbaa27e3f" [label=""];
  "sha256:b4fffa7146252aae24a43588b0776f292567d4add0ed0090b5611a129c090124" -> "sha256:6e030348c8ed81fce212c9977e919bbe72e0efdaddc128d95055396dbaa27e3f" [label=""];
  "sha256:6e030348c8ed81fce212c9977e919bbe72e0efdaddc128d95055396dbaa27e3f" -> "sha256:d9b3246bc945d6403afb29560e02eb107f5646d3c6259052c5e319eeee380099" [label=""];
  "sha256:d9b3246bc945d6403afb29560e02eb107f5646d3c6259052c5e319eeee380099" -> "sha256:e481ca87170bbe98e78e59b4807d351c529c369b5fe7542215ba9434df0e968a" [label=""];
}

