[app/sources/392104580.Dockerfile]
digraph {
  "sha256:ee6763bd0fd189ad9a930ebd9feae6635f577c8015c3a1b98b92ed94a49c392e" [label="docker-image://mcr.microsoft.com/windows/servercore:1803" shape="ellipse"];
  "sha256:3cc56eb32b6a2180ca31fbb4da7eb118a80d7620ed9ba37520477bad9c9d3b4f" [label="mkdir{path=/servicecontrol}" shape="note"];
  "sha256:5dc090948b8fae9cd948241488a401376b3007b783edd44ae89c6295c3c0d8dc" [label="local://context" shape="ellipse"];
  "sha256:3e044fd348e0abcf80b525feeb23ca432e886a820d45cc270110a743624f7a8b" [label="copy{src=/ServiceControl.Transports.ASQ/bin/Release/net461, dest=/servicecontrol/}" shape="note"];
  "sha256:e3780f9c2de017eea7920fff81e0918278c1103a1ce82820b8f80ebf31411ac5" [label="copy{src=/ServiceControl/bin/Release/net461, dest=/servicecontrol/}" shape="note"];
  "sha256:0268729b7ca4e15cda86028afb74ffc876357429fcaf11b9864d7ee006a1fd5b" [label="copy{src=/runcontainer.ps1, dest=/servicecontrol/}" shape="note"];
  "sha256:a05d06887f05371f6aeef6b3be9a92fed85a70a6d5924e104ded9dfc8ac4e8c0" [label="sha256:a05d06887f05371f6aeef6b3be9a92fed85a70a6d5924e104ded9dfc8ac4e8c0" shape="plaintext"];
  "sha256:ee6763bd0fd189ad9a930ebd9feae6635f577c8015c3a1b98b92ed94a49c392e" -> "sha256:3cc56eb32b6a2180ca31fbb4da7eb118a80d7620ed9ba37520477bad9c9d3b4f" [label=""];
  "sha256:3cc56eb32b6a2180ca31fbb4da7eb118a80d7620ed9ba37520477bad9c9d3b4f" -> "sha256:3e044fd348e0abcf80b525feeb23ca432e886a820d45cc270110a743624f7a8b" [label=""];
  "sha256:5dc090948b8fae9cd948241488a401376b3007b783edd44ae89c6295c3c0d8dc" -> "sha256:3e044fd348e0abcf80b525feeb23ca432e886a820d45cc270110a743624f7a8b" [label=""];
  "sha256:3e044fd348e0abcf80b525feeb23ca432e886a820d45cc270110a743624f7a8b" -> "sha256:e3780f9c2de017eea7920fff81e0918278c1103a1ce82820b8f80ebf31411ac5" [label=""];
  "sha256:5dc090948b8fae9cd948241488a401376b3007b783edd44ae89c6295c3c0d8dc" -> "sha256:e3780f9c2de017eea7920fff81e0918278c1103a1ce82820b8f80ebf31411ac5" [label=""];
  "sha256:e3780f9c2de017eea7920fff81e0918278c1103a1ce82820b8f80ebf31411ac5" -> "sha256:0268729b7ca4e15cda86028afb74ffc876357429fcaf11b9864d7ee006a1fd5b" [label=""];
  "sha256:5dc090948b8fae9cd948241488a401376b3007b783edd44ae89c6295c3c0d8dc" -> "sha256:0268729b7ca4e15cda86028afb74ffc876357429fcaf11b9864d7ee006a1fd5b" [label=""];
  "sha256:0268729b7ca4e15cda86028afb74ffc876357429fcaf11b9864d7ee006a1fd5b" -> "sha256:a05d06887f05371f6aeef6b3be9a92fed85a70a6d5924e104ded9dfc8ac4e8c0" [label=""];
}

