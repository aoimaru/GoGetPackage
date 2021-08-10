[app/sources/163386168.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9da6da1fb84d163d27f5fcda6da16b3ecf15ca058859cb1794d2c87b9ba69d0c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     bash     make     rsync     curl     unzip     imagemagick     software-properties-common" shape="box"];
  "sha256:4a5c549adb140d5d067e6f8fa28d4e25ad6577db723ed06028ebbbe10be33c1b" [label="/bin/sh -c add-apt-repository ppa:jonathonf/texlive-2015 &&     add-apt-repository ppa:lyx-devel/release &&     apt-get update &&     apt-get install -y --no-install-recommends texlive-full lyx" shape="box"];
  "sha256:0ec475361c04c448ab7360e0547635049d5a4a25774e089777561a88e8feb3dd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     python-pip" shape="box"];
  "sha256:dbef6aefe0cf54c8da7a14a82b7f6fcf1d9e1c2f13e4a4219e5d774385a42b97" [label="/bin/sh -c pip install --upgrade --force-reinstall setuptools" shape="box"];
  "sha256:932aa9438a88c798acad88881ef7695630c25accfc4eaf7fbbb7bf5f12f1d43e" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:04540d06f143f27d3a67141d0270586e33544118dd99688c1e0153b973e10458" [label="/bin/sh -c rm -rf /usr/src/python ~/.cache" shape="box"];
  "sha256:205254ca197d1474962d3a21e96b78df6689f838354f764f00c75830a3c23278" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:45deef9f423abdaa9dfd7980ab4af693f4f3d0a9fbeb9fe8018fa6feac401a60" [label="sha256:45deef9f423abdaa9dfd7980ab4af693f4f3d0a9fbeb9fe8018fa6feac401a60" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9da6da1fb84d163d27f5fcda6da16b3ecf15ca058859cb1794d2c87b9ba69d0c" [label=""];
  "sha256:9da6da1fb84d163d27f5fcda6da16b3ecf15ca058859cb1794d2c87b9ba69d0c" -> "sha256:4a5c549adb140d5d067e6f8fa28d4e25ad6577db723ed06028ebbbe10be33c1b" [label=""];
  "sha256:4a5c549adb140d5d067e6f8fa28d4e25ad6577db723ed06028ebbbe10be33c1b" -> "sha256:0ec475361c04c448ab7360e0547635049d5a4a25774e089777561a88e8feb3dd" [label=""];
  "sha256:0ec475361c04c448ab7360e0547635049d5a4a25774e089777561a88e8feb3dd" -> "sha256:dbef6aefe0cf54c8da7a14a82b7f6fcf1d9e1c2f13e4a4219e5d774385a42b97" [label=""];
  "sha256:dbef6aefe0cf54c8da7a14a82b7f6fcf1d9e1c2f13e4a4219e5d774385a42b97" -> "sha256:932aa9438a88c798acad88881ef7695630c25accfc4eaf7fbbb7bf5f12f1d43e" [label=""];
  "sha256:932aa9438a88c798acad88881ef7695630c25accfc4eaf7fbbb7bf5f12f1d43e" -> "sha256:04540d06f143f27d3a67141d0270586e33544118dd99688c1e0153b973e10458" [label=""];
  "sha256:04540d06f143f27d3a67141d0270586e33544118dd99688c1e0153b973e10458" -> "sha256:205254ca197d1474962d3a21e96b78df6689f838354f764f00c75830a3c23278" [label=""];
  "sha256:205254ca197d1474962d3a21e96b78df6689f838354f764f00c75830a3c23278" -> "sha256:45deef9f423abdaa9dfd7980ab4af693f4f3d0a9fbeb9fe8018fa6feac401a60" [label=""];
}

