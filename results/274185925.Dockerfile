[app/sources/274185925.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:0dcd7b4074582ecfd3c81e7387025a2ea3b89186bcc3aef4b5e40db9b7b08282" [label="/bin/sh -c apt-get update -y && apt-get install -y --no-install-recommends   ca-certificates   curl   make   perl   python   unzip   gcc   libc6-dev" shape="box"];
  "sha256:26877b5986a502cdb850cb1fa2de0428b5f509234fb2ef849e6d30f082936bdd" [label="/bin/sh -c curl -O https://dl.google.com/android/repository/android-ndk-r15b-linux-x86_64.zip" shape="box"];
  "sha256:fd77074f1b1d798f56b0919fa3d897154ca2a777a48624d5f828c7d618125992" [label="/bin/sh -c unzip -q android-ndk-r15b-linux-x86_64.zip" shape="box"];
  "sha256:5a33cc96db9a7e5f91f2fbcff94d5d91612c56f0690ab0b620bf1442734f30e5" [label="/bin/sh -c android-ndk-r15b/build/tools/make_standalone_toolchain.py               --unified-headers               --install-dir /android/ndk               --arch x86               --api 24" shape="box"];
  "sha256:8cab26dd1f4ec513533895cda5d1ebc4cddd4761144f437982719979cb045dd9" [label="sha256:8cab26dd1f4ec513533895cda5d1ebc4cddd4761144f437982719979cb045dd9" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:0dcd7b4074582ecfd3c81e7387025a2ea3b89186bcc3aef4b5e40db9b7b08282" [label=""];
  "sha256:0dcd7b4074582ecfd3c81e7387025a2ea3b89186bcc3aef4b5e40db9b7b08282" -> "sha256:26877b5986a502cdb850cb1fa2de0428b5f509234fb2ef849e6d30f082936bdd" [label=""];
  "sha256:26877b5986a502cdb850cb1fa2de0428b5f509234fb2ef849e6d30f082936bdd" -> "sha256:fd77074f1b1d798f56b0919fa3d897154ca2a777a48624d5f828c7d618125992" [label=""];
  "sha256:fd77074f1b1d798f56b0919fa3d897154ca2a777a48624d5f828c7d618125992" -> "sha256:5a33cc96db9a7e5f91f2fbcff94d5d91612c56f0690ab0b620bf1442734f30e5" [label=""];
  "sha256:5a33cc96db9a7e5f91f2fbcff94d5d91612c56f0690ab0b620bf1442734f30e5" -> "sha256:8cab26dd1f4ec513533895cda5d1ebc4cddd4761144f437982719979cb045dd9" [label=""];
}

