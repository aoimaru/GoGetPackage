[app/sources/227230568.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2f1facb3e81523ca4018e60bd2d85eca52fb4b7108b10484dd94a236907ea631" [label="/bin/sh -c apt-get update --yes && apt-get upgrade --yes && apt-get install --fix-missing git vim libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev libpng-dev build-essential g++ ffmpeg software-properties-common --yes redis-server --yes python --yes" shape="box"];
  "sha256:9f497ecf4d712a312ba19242e3e3fdf28b2c64c62702971242bb38f6f2632ac8" [label="/bin/sh -c add-apt-repository ppa:jonathonf/ffmpeg-3 -y" shape="box"];
  "sha256:753233d26b71bee25529233fa3378636a1fd9e14eb3fd4a9a67b704fa8325819" [label="/bin/sh -c apt-get update --yes && apt-get upgrade --yes" shape="box"];
  "sha256:c3a0c30f6088372d47cae24ae22f9f0a228438a03fbc0915640a0cc4f1abd863" [label="/bin/sh -c apt-get install ffmpeg -y" shape="box"];
  "sha256:616cde1e0fa7d621ee81dce1475fdf9219c3736b8b6a4d4b5f30f47ac3fbf03c" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:9c1069cbf46e486c0e3fe379de4c0b63fc74669c30c6a3c17583dfc0251e048b" [label="/bin/sh -c useradd -m audiogram #reset" shape="box"];
  "sha256:7b55ef4fa979fab0831a7f3a413cee625acd8b5ef0b1a960b47e875db176b804" [label="local://context" shape="ellipse"];
  "sha256:0ee9ff2a2133be0746a568c633805dc43be825167efc716fdf775e2ebd8ab458" [label="copy{src=/client/*, dest=/home/audiogram/src/client/}" shape="note"];
  "sha256:e7853e52b6f406e6f194b48be7f2e92c36d2b2f9f339d28ef60db837369c6035" [label="copy{src=/lib/logger/*, dest=/home/audiogram/src/client/}" shape="note"];
  "sha256:adcb4a359987042e788ef3c394a3fa5001db1145e108beb184756a98c7593415" [label="copy{src=/package.json, dest=/home/audiogram/src/package.json}" shape="note"];
  "sha256:9df701e79b885edb0845e3a3621c52cfabab448eae6b16a69f5c082199c553fa" [label="/bin/sh -c chown -R audiogram:audiogram /home/audiogram" shape="box"];
  "sha256:ef8baa59430f5b57c6e7a6bba892f427b630e1dd281584e818a33629d67ad9f0" [label="/bin/sh -c curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash     && source $NVM_DIR/nvm.sh     && nvm install $NODE_6     && nvm use $NODE_6     && cd /home/audiogram/src     && npm i" shape="box"];
  "sha256:cde7c501b711d743293927f1e8d010b4a3ba423b2372cdb8800c52ad9261e35a" [label="mkdir{path=/home/audiogram/src}" shape="note"];
  "sha256:0ab7c38456b02ff92f63c6d1c73ba43132f1f3cbf9b6ad8f188b61466a928ad4" [label="copy{src=/, dest=/home/audiogram/src}" shape="note"];
  "sha256:3263365087740bd5fbfcd6a3ac19bf9084330978e152e5da502f1ec4aca398be" [label="/bin/sh -c chown -R audiogram:audiogram /home/audiogram" shape="box"];
  "sha256:698e0d56144f44cb948adfabc911017e1c893269da61dc6d3aa01260e556718e" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:ef8ea9239157581694f206043b28af5a00d92c7c7796ebe61bae22d23dc1311d" [label="sha256:ef8ea9239157581694f206043b28af5a00d92c7c7796ebe61bae22d23dc1311d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2f1facb3e81523ca4018e60bd2d85eca52fb4b7108b10484dd94a236907ea631" [label=""];
  "sha256:2f1facb3e81523ca4018e60bd2d85eca52fb4b7108b10484dd94a236907ea631" -> "sha256:9f497ecf4d712a312ba19242e3e3fdf28b2c64c62702971242bb38f6f2632ac8" [label=""];
  "sha256:9f497ecf4d712a312ba19242e3e3fdf28b2c64c62702971242bb38f6f2632ac8" -> "sha256:753233d26b71bee25529233fa3378636a1fd9e14eb3fd4a9a67b704fa8325819" [label=""];
  "sha256:753233d26b71bee25529233fa3378636a1fd9e14eb3fd4a9a67b704fa8325819" -> "sha256:c3a0c30f6088372d47cae24ae22f9f0a228438a03fbc0915640a0cc4f1abd863" [label=""];
  "sha256:c3a0c30f6088372d47cae24ae22f9f0a228438a03fbc0915640a0cc4f1abd863" -> "sha256:616cde1e0fa7d621ee81dce1475fdf9219c3736b8b6a4d4b5f30f47ac3fbf03c" [label=""];
  "sha256:616cde1e0fa7d621ee81dce1475fdf9219c3736b8b6a4d4b5f30f47ac3fbf03c" -> "sha256:9c1069cbf46e486c0e3fe379de4c0b63fc74669c30c6a3c17583dfc0251e048b" [label=""];
  "sha256:9c1069cbf46e486c0e3fe379de4c0b63fc74669c30c6a3c17583dfc0251e048b" -> "sha256:0ee9ff2a2133be0746a568c633805dc43be825167efc716fdf775e2ebd8ab458" [label=""];
  "sha256:7b55ef4fa979fab0831a7f3a413cee625acd8b5ef0b1a960b47e875db176b804" -> "sha256:0ee9ff2a2133be0746a568c633805dc43be825167efc716fdf775e2ebd8ab458" [label=""];
  "sha256:0ee9ff2a2133be0746a568c633805dc43be825167efc716fdf775e2ebd8ab458" -> "sha256:e7853e52b6f406e6f194b48be7f2e92c36d2b2f9f339d28ef60db837369c6035" [label=""];
  "sha256:7b55ef4fa979fab0831a7f3a413cee625acd8b5ef0b1a960b47e875db176b804" -> "sha256:e7853e52b6f406e6f194b48be7f2e92c36d2b2f9f339d28ef60db837369c6035" [label=""];
  "sha256:e7853e52b6f406e6f194b48be7f2e92c36d2b2f9f339d28ef60db837369c6035" -> "sha256:adcb4a359987042e788ef3c394a3fa5001db1145e108beb184756a98c7593415" [label=""];
  "sha256:7b55ef4fa979fab0831a7f3a413cee625acd8b5ef0b1a960b47e875db176b804" -> "sha256:adcb4a359987042e788ef3c394a3fa5001db1145e108beb184756a98c7593415" [label=""];
  "sha256:adcb4a359987042e788ef3c394a3fa5001db1145e108beb184756a98c7593415" -> "sha256:9df701e79b885edb0845e3a3621c52cfabab448eae6b16a69f5c082199c553fa" [label=""];
  "sha256:9df701e79b885edb0845e3a3621c52cfabab448eae6b16a69f5c082199c553fa" -> "sha256:ef8baa59430f5b57c6e7a6bba892f427b630e1dd281584e818a33629d67ad9f0" [label=""];
  "sha256:ef8baa59430f5b57c6e7a6bba892f427b630e1dd281584e818a33629d67ad9f0" -> "sha256:cde7c501b711d743293927f1e8d010b4a3ba423b2372cdb8800c52ad9261e35a" [label=""];
  "sha256:cde7c501b711d743293927f1e8d010b4a3ba423b2372cdb8800c52ad9261e35a" -> "sha256:0ab7c38456b02ff92f63c6d1c73ba43132f1f3cbf9b6ad8f188b61466a928ad4" [label=""];
  "sha256:7b55ef4fa979fab0831a7f3a413cee625acd8b5ef0b1a960b47e875db176b804" -> "sha256:0ab7c38456b02ff92f63c6d1c73ba43132f1f3cbf9b6ad8f188b61466a928ad4" [label=""];
  "sha256:0ab7c38456b02ff92f63c6d1c73ba43132f1f3cbf9b6ad8f188b61466a928ad4" -> "sha256:3263365087740bd5fbfcd6a3ac19bf9084330978e152e5da502f1ec4aca398be" [label=""];
  "sha256:3263365087740bd5fbfcd6a3ac19bf9084330978e152e5da502f1ec4aca398be" -> "sha256:698e0d56144f44cb948adfabc911017e1c893269da61dc6d3aa01260e556718e" [label=""];
  "sha256:698e0d56144f44cb948adfabc911017e1c893269da61dc6d3aa01260e556718e" -> "sha256:ef8ea9239157581694f206043b28af5a00d92c7c7796ebe61bae22d23dc1311d" [label=""];
}

