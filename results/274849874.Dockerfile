[app/sources/274849874.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d08bf96d79057c79430b102f3a8a66100621ed889b6981e6cd95eeb71bd6ada8" [label="/bin/sh -c apt-get update && apt-get install -y     mono-devel     ca-certificates-mono     nuget" shape="box"];
  "sha256:169baa3916b4bb42ff3a9a7f4a35566a4a0bed47a168d63200c06f8b95e0336b" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" shape="box"];
  "sha256:6bdce5238f542aa3009646b9a9c75b042c75d7a5f2ab398b457c6651988a87cf" [label="/bin/sh -c echo \"deb http://download.mono-project.com/repo/debian wheezy main\" | tee /etc/apt/sources.list.d/mono-xamarin.list" shape="box"];
  "sha256:44295c45052f9c36200b409472970bbea366d5b03f8a35d513bad5ddfe6ae520" [label="/bin/sh -c apt-get update && apt-get install -y nuget" shape="box"];
  "sha256:b40c92e47ccc10009c48536ae8aa6a674c6cafde9eae3a16c7ec7897dae67868" [label="/bin/sh -c apt-get update && apt-get install -y unzip" shape="box"];
  "sha256:31f226371d1f420d22d5faf2f9524aa6d57202d9614e167f97cb3aab5c90dade" [label="sha256:31f226371d1f420d22d5faf2f9524aa6d57202d9614e167f97cb3aab5c90dade" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d08bf96d79057c79430b102f3a8a66100621ed889b6981e6cd95eeb71bd6ada8" [label=""];
  "sha256:d08bf96d79057c79430b102f3a8a66100621ed889b6981e6cd95eeb71bd6ada8" -> "sha256:169baa3916b4bb42ff3a9a7f4a35566a4a0bed47a168d63200c06f8b95e0336b" [label=""];
  "sha256:169baa3916b4bb42ff3a9a7f4a35566a4a0bed47a168d63200c06f8b95e0336b" -> "sha256:6bdce5238f542aa3009646b9a9c75b042c75d7a5f2ab398b457c6651988a87cf" [label=""];
  "sha256:6bdce5238f542aa3009646b9a9c75b042c75d7a5f2ab398b457c6651988a87cf" -> "sha256:44295c45052f9c36200b409472970bbea366d5b03f8a35d513bad5ddfe6ae520" [label=""];
  "sha256:44295c45052f9c36200b409472970bbea366d5b03f8a35d513bad5ddfe6ae520" -> "sha256:b40c92e47ccc10009c48536ae8aa6a674c6cafde9eae3a16c7ec7897dae67868" [label=""];
  "sha256:b40c92e47ccc10009c48536ae8aa6a674c6cafde9eae3a16c7ec7897dae67868" -> "sha256:31f226371d1f420d22d5faf2f9524aa6d57202d9614e167f97cb3aab5c90dade" [label=""];
}

