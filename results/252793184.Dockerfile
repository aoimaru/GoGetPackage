[app/sources/252793184.Dockerfile]
digraph {
  "sha256:a55789b995db93e509f19c77d141e5e058d4e71e1f327aeafc6365fc76836364" [label="docker-image://docker.io/chihchun/opencl-beignet:latest" shape="ellipse"];
  "sha256:fd2f44ba16ad6c5f39b297a6ebf0a4c2a075d7e131769983fe280e15d2d28765" [label="/bin/sh -c apt-get update && apt-get install -y build-essential git && apt-get build-dep -o APT::Get::Build-Dep-Automatic=true -y hashcat" shape="box"];
  "sha256:986d4e6c7222e8b374de3e88db919ebc69c8ceaa085602011df40ddb84385206" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:531658468daa08cfe56a59743696d86a3e53f54804ab048d457beb6e4781354b" [label="/bin/sh -c git clone \\--depth 1 --branch $OPENHASH_VERSION https://github.com/hashcat/hashcat.git && cd hashcat && make linux64 && make install && ln -s /usr/bin/hashcat64.bin /usr/bin/hashcat64" shape="box"];
  "sha256:9a6c0c3fabf95b8256ad159474eeaa8f53cda4cc495ddfa8b83a45b7aaae2c43" [label="/bin/sh -c apt-get purge -y build-essential git && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:8aee99f97326e0e0a6a25abd24cf34ce83ae0bba35c991ca2078d19db89c88cf" [label="sha256:8aee99f97326e0e0a6a25abd24cf34ce83ae0bba35c991ca2078d19db89c88cf" shape="plaintext"];
  "sha256:a55789b995db93e509f19c77d141e5e058d4e71e1f327aeafc6365fc76836364" -> "sha256:fd2f44ba16ad6c5f39b297a6ebf0a4c2a075d7e131769983fe280e15d2d28765" [label=""];
  "sha256:fd2f44ba16ad6c5f39b297a6ebf0a4c2a075d7e131769983fe280e15d2d28765" -> "sha256:986d4e6c7222e8b374de3e88db919ebc69c8ceaa085602011df40ddb84385206" [label=""];
  "sha256:986d4e6c7222e8b374de3e88db919ebc69c8ceaa085602011df40ddb84385206" -> "sha256:531658468daa08cfe56a59743696d86a3e53f54804ab048d457beb6e4781354b" [label=""];
  "sha256:531658468daa08cfe56a59743696d86a3e53f54804ab048d457beb6e4781354b" -> "sha256:9a6c0c3fabf95b8256ad159474eeaa8f53cda4cc495ddfa8b83a45b7aaae2c43" [label=""];
  "sha256:9a6c0c3fabf95b8256ad159474eeaa8f53cda4cc495ddfa8b83a45b7aaae2c43" -> "sha256:8aee99f97326e0e0a6a25abd24cf34ce83ae0bba35c991ca2078d19db89c88cf" [label=""];
}

