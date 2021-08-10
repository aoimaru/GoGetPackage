[app/sources/259548278.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d593040b87d27ae7dfc11c37e51bad5d7e43723ac41255356946b0604de6e0d0" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update" shape="box"];
  "sha256:e8b427d36ba905d666c4a2d945f3aeec8da57a3cd8b781c0beff281bf266262d" [label="/bin/sh -c apt-get install -y --no-install-recommends     vim     git     curl     wget     apt-utils     ca-certificates     python     lbzip2     pkg-config     software-properties-common" shape="box"];
  "sha256:8419145f178a18e1d66eddf6d925f803278cecd136744c08d092bf8fb04f70c5" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa     && apt-get update" shape="box"];
  "sha256:62917b94dbd666bac78454887d6c000b7a579864f08312bc44751b96bfdbf389" [label="/bin/sh -c apt-get install -y --no-install-recommends     build-essential     openjdk-8-jre     openjdk-8-jdk     ant     libc6:i386     libncurses5:i386     libstdc++6:i386     lib32z1     libbz2-1.0:i386" shape="box"];
  "sha256:335a2cafc37d93f278263bd53b5fffec870ae4a2a622ea4551b2d8ad3084a6fa" [label="/bin/sh -c update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java &&     update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac &&     update-alternatives --set jexec /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/jexec &&     update-alternatives --set keytool /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/keytool" shape="box"];
  "sha256:c69fc4d927450452a4fef39120ffa57e6060b521ed814dbb63afe7200e4a91f9" [label="/bin/sh -c git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /opt/depot_tools" shape="box"];
  "sha256:8b8cea1e33b9c894eb1e411cdd573b08b1bed0862ad311204958d09f919e6edf" [label="/bin/sh -c mkdir webrtc && cd webrtc && fetch --nohooks webrtc_android" shape="box"];
  "sha256:17bec47c54d8a282c1778e0893b33ad74520cf04f04a87da9396bbba335d5216" [label="mkdir{path=/webrtc}" shape="note"];
  "sha256:a792d1be9ca24479f9537dd26335d262bc36163c9807ee08b0e6e9fb09dc4079" [label="/bin/sh -c yes | gclient sync" shape="box"];
  "sha256:c1bb7a37d6b89fd2e37df8ed43b352c25d4881153530c69c7ef0a4d70c07f332" [label="sha256:c1bb7a37d6b89fd2e37df8ed43b352c25d4881153530c69c7ef0a4d70c07f332" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d593040b87d27ae7dfc11c37e51bad5d7e43723ac41255356946b0604de6e0d0" [label=""];
  "sha256:d593040b87d27ae7dfc11c37e51bad5d7e43723ac41255356946b0604de6e0d0" -> "sha256:e8b427d36ba905d666c4a2d945f3aeec8da57a3cd8b781c0beff281bf266262d" [label=""];
  "sha256:e8b427d36ba905d666c4a2d945f3aeec8da57a3cd8b781c0beff281bf266262d" -> "sha256:8419145f178a18e1d66eddf6d925f803278cecd136744c08d092bf8fb04f70c5" [label=""];
  "sha256:8419145f178a18e1d66eddf6d925f803278cecd136744c08d092bf8fb04f70c5" -> "sha256:62917b94dbd666bac78454887d6c000b7a579864f08312bc44751b96bfdbf389" [label=""];
  "sha256:62917b94dbd666bac78454887d6c000b7a579864f08312bc44751b96bfdbf389" -> "sha256:335a2cafc37d93f278263bd53b5fffec870ae4a2a622ea4551b2d8ad3084a6fa" [label=""];
  "sha256:335a2cafc37d93f278263bd53b5fffec870ae4a2a622ea4551b2d8ad3084a6fa" -> "sha256:c69fc4d927450452a4fef39120ffa57e6060b521ed814dbb63afe7200e4a91f9" [label=""];
  "sha256:c69fc4d927450452a4fef39120ffa57e6060b521ed814dbb63afe7200e4a91f9" -> "sha256:8b8cea1e33b9c894eb1e411cdd573b08b1bed0862ad311204958d09f919e6edf" [label=""];
  "sha256:8b8cea1e33b9c894eb1e411cdd573b08b1bed0862ad311204958d09f919e6edf" -> "sha256:17bec47c54d8a282c1778e0893b33ad74520cf04f04a87da9396bbba335d5216" [label=""];
  "sha256:17bec47c54d8a282c1778e0893b33ad74520cf04f04a87da9396bbba335d5216" -> "sha256:a792d1be9ca24479f9537dd26335d262bc36163c9807ee08b0e6e9fb09dc4079" [label=""];
  "sha256:a792d1be9ca24479f9537dd26335d262bc36163c9807ee08b0e6e9fb09dc4079" -> "sha256:c1bb7a37d6b89fd2e37df8ed43b352c25d4881153530c69c7ef0a4d70c07f332" [label=""];
}

