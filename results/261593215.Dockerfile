[app/sources/261593215.Dockerfile]
digraph {
  "sha256:cf30d21f9a523f49fb26c728599d3f1c54d102d317726c4cb0f127f338edf724" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:457454540eab4b1ae96ab22d35a42b50d2ee39a2695405d3074693f6260d55c3" [label="mkdir{path=/godot-dev}" shape="note"];
  "sha256:b2d485ae7596d021fd55eae6cc63de8579ab5a353dfa3892bf5c570c7dbf9be0" [label="copy{src=/scripts/install-android-tools, dest=/godot-dev/}" shape="note"];
  "sha256:c846adc408b85f0cfd5ed83e406f480e5ee2681ecdbdba67b58770597dcc75c5" [label="/bin/sh -c dpkg --add-architecture i386 && \tapt-get update && \tapt-get upgrade -y && \tapt-get install --no-install-recommends -y -q \tbuild-essential gcc-multilib g++-multilib mingw32 mingw-w64 scons pkg-config libx11-dev libxcursor-dev \tlibasound2-dev libfreetype6-dev libgl1-mesa-dev libglu-dev libssl-dev libxinerama-dev libudev-dev \tgit wget openjdk-7-jdk libbcprov-java libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386 lib32z1" shape="box"];
  "sha256:23b709b5d55df66f148f2efcc4d50ef8ce64ae53212ac1e33be0a418a7d0711a" [label="sha256:23b709b5d55df66f148f2efcc4d50ef8ce64ae53212ac1e33be0a418a7d0711a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:457454540eab4b1ae96ab22d35a42b50d2ee39a2695405d3074693f6260d55c3" [label=""];
  "sha256:457454540eab4b1ae96ab22d35a42b50d2ee39a2695405d3074693f6260d55c3" -> "sha256:b2d485ae7596d021fd55eae6cc63de8579ab5a353dfa3892bf5c570c7dbf9be0" [label=""];
  "sha256:cf30d21f9a523f49fb26c728599d3f1c54d102d317726c4cb0f127f338edf724" -> "sha256:b2d485ae7596d021fd55eae6cc63de8579ab5a353dfa3892bf5c570c7dbf9be0" [label=""];
  "sha256:b2d485ae7596d021fd55eae6cc63de8579ab5a353dfa3892bf5c570c7dbf9be0" -> "sha256:c846adc408b85f0cfd5ed83e406f480e5ee2681ecdbdba67b58770597dcc75c5" [label=""];
  "sha256:c846adc408b85f0cfd5ed83e406f480e5ee2681ecdbdba67b58770597dcc75c5" -> "sha256:23b709b5d55df66f148f2efcc4d50ef8ce64ae53212ac1e33be0a418a7d0711a" [label=""];
}

