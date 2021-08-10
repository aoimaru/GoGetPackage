[app/sources/274669725.Dockerfile]
digraph {
  "sha256:f76867f819787239be668ae7bff7ff7bb286e1faabfb97e5b91028a1b3475688" [label="docker-image://docker.io/library/openj9:latest" shape="ellipse"];
  "sha256:a4c3ed68f3276d06d09c89fb22966d2ac7ce5624e0d3d6ca0adf1c5924cb74aa" [label="/bin/sh -c apt-get update     && apt-get install -qq -y --no-install-recommends     ant     ant-contrib     build-essential     perl     vim   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7f62526889c061282d9b0a9e09190e1b9d120b7e17a30062f0f85ac3299e0290" [label="/bin/sh -c echo yes | cpan install JSON Text::CSV" shape="box"];
  "sha256:032088e468490e50481bd2dfe2cd141b4786ca5d8fb4417134af15b61e463622" [label="/bin/sh -c ln -sf g++ /usr/bin/c++   && ln -sf g++-4.8 /usr/bin/g++   && ln -sf gcc /usr/bin/cc   && ln -sf gcc-4.8 /usr/bin/gcc" shape="box"];
  "sha256:13ee8c58c211148c14466e23a2593416f71bd16243dfe13277924f0a5180b8a3" [label="sha256:13ee8c58c211148c14466e23a2593416f71bd16243dfe13277924f0a5180b8a3" shape="plaintext"];
  "sha256:f76867f819787239be668ae7bff7ff7bb286e1faabfb97e5b91028a1b3475688" -> "sha256:a4c3ed68f3276d06d09c89fb22966d2ac7ce5624e0d3d6ca0adf1c5924cb74aa" [label=""];
  "sha256:a4c3ed68f3276d06d09c89fb22966d2ac7ce5624e0d3d6ca0adf1c5924cb74aa" -> "sha256:7f62526889c061282d9b0a9e09190e1b9d120b7e17a30062f0f85ac3299e0290" [label=""];
  "sha256:7f62526889c061282d9b0a9e09190e1b9d120b7e17a30062f0f85ac3299e0290" -> "sha256:032088e468490e50481bd2dfe2cd141b4786ca5d8fb4417134af15b61e463622" [label=""];
  "sha256:032088e468490e50481bd2dfe2cd141b4786ca5d8fb4417134af15b61e463622" -> "sha256:13ee8c58c211148c14466e23a2593416f71bd16243dfe13277924f0a5180b8a3" [label=""];
}

