[app/sources/309807519.Dockerfile]
digraph {
  "sha256:12ca13498ac31dedb455b7235f916e890c99a6de948e4dba8547121bfe3b4157" [label="docker-image://docker.io/linkernetworks/minimal-notebook:master-cuda90" shape="ellipse"];
  "sha256:752d9fa8863e597d8a7e0b1f42d183be39639756f2135fed222839fea0115f3b" [label="/bin/sh -c pip install -U     tensorflow-gpu==1.9.0     keras     && rm -rf ~/.cache/pip" shape="box"];
  "sha256:7315d60f8f204a04a53c4a17c9769d7feac6ec0a17e97f6786ed143563f09e97" [label="/bin/sh -c wget https://raw.githubusercontent.com/linkernetworks/aurora/master/install.sh -O - | bash     && if [ \"$SUBMIT_TOOL_NAME\" != \"aurora\" ]; then mv /usr/local/bin/aurora /usr/local/bin/$SUBMIT_TOOL_NAME; fi" shape="box"];
  "sha256:e31a1639d706f762336178b62d7305b31718a088beeaae31037509bf67f49c12" [label="sha256:e31a1639d706f762336178b62d7305b31718a088beeaae31037509bf67f49c12" shape="plaintext"];
  "sha256:12ca13498ac31dedb455b7235f916e890c99a6de948e4dba8547121bfe3b4157" -> "sha256:752d9fa8863e597d8a7e0b1f42d183be39639756f2135fed222839fea0115f3b" [label=""];
  "sha256:752d9fa8863e597d8a7e0b1f42d183be39639756f2135fed222839fea0115f3b" -> "sha256:7315d60f8f204a04a53c4a17c9769d7feac6ec0a17e97f6786ed143563f09e97" [label=""];
  "sha256:7315d60f8f204a04a53c4a17c9769d7feac6ec0a17e97f6786ed143563f09e97" -> "sha256:e31a1639d706f762336178b62d7305b31718a088beeaae31037509bf67f49c12" [label=""];
}

