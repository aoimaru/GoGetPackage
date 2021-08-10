[app/sources/320041604.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:7b8ea42489ef8e8179c0e8a83aa6e31f828a29e8500752c96fd1a7762ed0fdb5" [label="/bin/sh -c apt-get update && apt-get install -y     mercurial     libav-tools     libsdl-image1.2-dev     libsdl-mixer1.2-dev     libsdl-ttf2.0-dev     libsmpeg-dev     libsdl1.2-dev     libportmidi-dev     libswscale-dev     libavformat-dev     libavcodec-dev     libplib-dev     libopenal-dev     libalut-dev     libvorbis-dev     libxxf86vm-dev     libxmu-dev     libgl1-mesa-dev     python-dev     python-pip     python-numpy     python-scipy     python-pygame     git" shape="box"];
  "sha256:8f252d4cfbbe98248fe7624b50e53fd87173e9ce194e6da2caf522ec072a4870" [label="/bin/sh -c pip install keras git+https://github.com/ntasfi/PyGame-Learning-Environment.git" shape="box"];
  "sha256:eb1897b47671b1f78c90cf46836b4212f8ba55bebb9c2a52b09fb09ae1f868a4" [label="/bin/sh -c git clone https://github.com/ntasfi/PyGame-Learning-Environment.git ple" shape="box"];
  "sha256:6f1d9645b8bff022f816564e01a2f5eb8874f17328faf6b8f11cc3363a26a00f" [label="sha256:6f1d9645b8bff022f816564e01a2f5eb8874f17328faf6b8f11cc3363a26a00f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:7b8ea42489ef8e8179c0e8a83aa6e31f828a29e8500752c96fd1a7762ed0fdb5" [label=""];
  "sha256:7b8ea42489ef8e8179c0e8a83aa6e31f828a29e8500752c96fd1a7762ed0fdb5" -> "sha256:8f252d4cfbbe98248fe7624b50e53fd87173e9ce194e6da2caf522ec072a4870" [label=""];
  "sha256:8f252d4cfbbe98248fe7624b50e53fd87173e9ce194e6da2caf522ec072a4870" -> "sha256:eb1897b47671b1f78c90cf46836b4212f8ba55bebb9c2a52b09fb09ae1f868a4" [label=""];
  "sha256:eb1897b47671b1f78c90cf46836b4212f8ba55bebb9c2a52b09fb09ae1f868a4" -> "sha256:6f1d9645b8bff022f816564e01a2f5eb8874f17328faf6b8f11cc3363a26a00f" [label=""];
}

