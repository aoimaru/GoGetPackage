[app/sources/168194310.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:7baa5bd8fd2e3280cfdf13f4554c8fae3de2aff2754f26dfcf1e06384e531554" [label="/bin/sh -c apt-get install -qqy iptables ca-certificates lxc" shape="box"];
  "sha256:b425c3ea8d15ec741d5dfdc6c61270f96ab4be1fffe8cc77af639a18763f34ee" [label="/bin/sh -c apt-get install -qqy apt-transport-https" shape="box"];
  "sha256:c0549f61bbafdaaacfb07f13ce845ce5d2eda9df1c3cc959310cd8ca2a9385f9" [label="/bin/sh -c echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list" shape="box"];
  "sha256:2fe9b5920db2e3193f1d270af5308944fa9a6c3cb13de49ffa431365555ce725" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9" shape="box"];
  "sha256:36d390660230e94d497a8388788bc6d1ba77bdbee906fbfee3eb54d521e14a0f" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:81f0b59e7e12bf11bf757e2330bcda7e7fed5033ee90406bece040dd1b2904a2" [label="/bin/sh -c apt-get install -qqy lxc-docker" shape="box"];
  "sha256:21e77b64199fe6ea99b0dc814258caa9c899d4ce622c0311abcd5486c8e4d764" [label="local://context" shape="ellipse"];
  "sha256:905ee4e1192c656ec34b8bfc2e80aafad0d612fb8fc2fc6def43581ca4586081" [label="copy{src=/wrapdocker, dest=/usr/local/bin/wrapdocker}" shape="note"];
  "sha256:700ebbe8a4e1b517c7850b775eb0a243a38a21fc0c7b09e0988f8dc2c9d3fa84" [label="/bin/sh -c chmod +x /usr/local/bin/wrapdocker" shape="box"];
  "sha256:03b266de4a6152bd38949a5c71c2961bed8493879ceec1fc9e7a2d67d2e671f1" [label="copy{src=/dkbuild, dest=/usr/local/bin/dkbuild}" shape="note"];
  "sha256:dbf32be21751709bafe97299696538abd925d67f703edbb7c60c5f9df8f31774" [label="/bin/sh -c chmod +x /usr/local/bin/dkbuild" shape="box"];
  "sha256:b2b15e4f17356072adc27e4c9c747296078f0a67bb2945ea53344539d56b353f" [label="sha256:b2b15e4f17356072adc27e4c9c747296078f0a67bb2945ea53344539d56b353f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" [label=""];
  "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" -> "sha256:7baa5bd8fd2e3280cfdf13f4554c8fae3de2aff2754f26dfcf1e06384e531554" [label=""];
  "sha256:7baa5bd8fd2e3280cfdf13f4554c8fae3de2aff2754f26dfcf1e06384e531554" -> "sha256:b425c3ea8d15ec741d5dfdc6c61270f96ab4be1fffe8cc77af639a18763f34ee" [label=""];
  "sha256:b425c3ea8d15ec741d5dfdc6c61270f96ab4be1fffe8cc77af639a18763f34ee" -> "sha256:c0549f61bbafdaaacfb07f13ce845ce5d2eda9df1c3cc959310cd8ca2a9385f9" [label=""];
  "sha256:c0549f61bbafdaaacfb07f13ce845ce5d2eda9df1c3cc959310cd8ca2a9385f9" -> "sha256:2fe9b5920db2e3193f1d270af5308944fa9a6c3cb13de49ffa431365555ce725" [label=""];
  "sha256:2fe9b5920db2e3193f1d270af5308944fa9a6c3cb13de49ffa431365555ce725" -> "sha256:36d390660230e94d497a8388788bc6d1ba77bdbee906fbfee3eb54d521e14a0f" [label=""];
  "sha256:36d390660230e94d497a8388788bc6d1ba77bdbee906fbfee3eb54d521e14a0f" -> "sha256:81f0b59e7e12bf11bf757e2330bcda7e7fed5033ee90406bece040dd1b2904a2" [label=""];
  "sha256:81f0b59e7e12bf11bf757e2330bcda7e7fed5033ee90406bece040dd1b2904a2" -> "sha256:905ee4e1192c656ec34b8bfc2e80aafad0d612fb8fc2fc6def43581ca4586081" [label=""];
  "sha256:21e77b64199fe6ea99b0dc814258caa9c899d4ce622c0311abcd5486c8e4d764" -> "sha256:905ee4e1192c656ec34b8bfc2e80aafad0d612fb8fc2fc6def43581ca4586081" [label=""];
  "sha256:905ee4e1192c656ec34b8bfc2e80aafad0d612fb8fc2fc6def43581ca4586081" -> "sha256:700ebbe8a4e1b517c7850b775eb0a243a38a21fc0c7b09e0988f8dc2c9d3fa84" [label=""];
  "sha256:700ebbe8a4e1b517c7850b775eb0a243a38a21fc0c7b09e0988f8dc2c9d3fa84" -> "sha256:03b266de4a6152bd38949a5c71c2961bed8493879ceec1fc9e7a2d67d2e671f1" [label=""];
  "sha256:21e77b64199fe6ea99b0dc814258caa9c899d4ce622c0311abcd5486c8e4d764" -> "sha256:03b266de4a6152bd38949a5c71c2961bed8493879ceec1fc9e7a2d67d2e671f1" [label=""];
  "sha256:03b266de4a6152bd38949a5c71c2961bed8493879ceec1fc9e7a2d67d2e671f1" -> "sha256:dbf32be21751709bafe97299696538abd925d67f703edbb7c60c5f9df8f31774" [label=""];
  "sha256:dbf32be21751709bafe97299696538abd925d67f703edbb7c60c5f9df8f31774" -> "sha256:b2b15e4f17356072adc27e4c9c747296078f0a67bb2945ea53344539d56b353f" [label=""];
}

