[app/sources/425068721.Dockerfile]
digraph {
  "sha256:cecc838b7053ae5062687d8cfd691925293892878e8dca703f7652dc75762d07" [label="local://context" shape="ellipse"];
  "sha256:b4a3003edf3a2ded213ac63ee77b8fe3ebd082b0ba2480e786eab441a977d5d5" [label="docker-image://docker.io/nimmis/java-centos:openjdk-7-jdk" shape="ellipse"];
  "sha256:3b7935a7052adb47be3262de98f19c34416acf62560116dd5c8d95e1a3ddc94a" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:8e9c4ed0e14ae957e285d9a048223def4c3b80a144d4ddfa5fb08e1fd25275f4" [label="/bin/sh -c yum -y install firefox" shape="box"];
  "sha256:5c4a350ee5e8fbc5f2e40ed3fdf96a784d3a4ed370ce8586eb639c31642031c6" [label="copy{src=/google-chrome.repo, dest=/etc/yum.repos.d/google-chrome.repo}" shape="note"];
  "sha256:689fa19d1be2b3a11be32e602e0ce0eb50901e55554a109c31a369c6eca8b30c" [label="/bin/sh -c yum -y install google-chrome-stable" shape="box"];
  "sha256:2152a4787819f48f0a7d8db045a60eda79be329b0723f4bed32469ea09ab8379" [label="/bin/sh -c yum -y install unzip" shape="box"];
  "sha256:a2c3e795dd3dceab7fb7b6ee9d3dcb050cc2181a55b1f433f9bd6ab3ee213d4a" [label="http://chromedriver.storage.googleapis.com/2.15/chromedriver_linux64.zip" shape="ellipse"];
  "sha256:a2867f169cc0f299b9125a60e850c9c5d08214e4910b0bb6e36614790e10e0f0" [label="copy{src=/chromedriver_linux64.zip, dest=/chromedriver_linux64.zip}" shape="note"];
  "sha256:9ea89781af2d1f6e4d8eae3b7fdb1bb78fa7bd378a2c81c5720fc201383465df" [label="/bin/sh -c unzip /chromedriver_linux64.zip -d /" shape="box"];
  "sha256:c9728280259a4c7431482e90db7f02adc69133e46f71dbe573fe66e881f21ba1" [label="/bin/sh -c rm -f chromedriver_linux64.zip" shape="box"];
  "sha256:f10e52d92861c83090c6e8c3849136c5df4f2430b9991152cd5a1ef95289a827" [label="/bin/sh -c yum -y install xorg-x11-server-Xvfb libXtst xdpyinfo" shape="box"];
  "sha256:3453e97a30ac9ba816962070658f35756aa1609501eca87510c236d897d5b4a8" [label="copy{src=/taste-1.0-beta4-bin.tar.gz, dest=/}" shape="note"];
  "sha256:5633c4606bb16952e3f149bac12ee3a29d86b3b97f053f19116a00173eb64d07" [label="copy{src=/run-taste.sh, dest=/}" shape="note"];
  "sha256:b1dcf12642cd32fa048d0a84b94b7e81b0f5d3e22a393003cef7f4d4e8db0673" [label="/bin/sh -c chmod +x /run-taste.sh" shape="box"];
  "sha256:7bc7e25b3f96b8d9c7e7fde5460881aaba5232257aa2021637fb5d4cfe682792" [label="sha256:7bc7e25b3f96b8d9c7e7fde5460881aaba5232257aa2021637fb5d4cfe682792" shape="plaintext"];
  "sha256:b4a3003edf3a2ded213ac63ee77b8fe3ebd082b0ba2480e786eab441a977d5d5" -> "sha256:3b7935a7052adb47be3262de98f19c34416acf62560116dd5c8d95e1a3ddc94a" [label=""];
  "sha256:3b7935a7052adb47be3262de98f19c34416acf62560116dd5c8d95e1a3ddc94a" -> "sha256:8e9c4ed0e14ae957e285d9a048223def4c3b80a144d4ddfa5fb08e1fd25275f4" [label=""];
  "sha256:8e9c4ed0e14ae957e285d9a048223def4c3b80a144d4ddfa5fb08e1fd25275f4" -> "sha256:5c4a350ee5e8fbc5f2e40ed3fdf96a784d3a4ed370ce8586eb639c31642031c6" [label=""];
  "sha256:cecc838b7053ae5062687d8cfd691925293892878e8dca703f7652dc75762d07" -> "sha256:5c4a350ee5e8fbc5f2e40ed3fdf96a784d3a4ed370ce8586eb639c31642031c6" [label=""];
  "sha256:5c4a350ee5e8fbc5f2e40ed3fdf96a784d3a4ed370ce8586eb639c31642031c6" -> "sha256:689fa19d1be2b3a11be32e602e0ce0eb50901e55554a109c31a369c6eca8b30c" [label=""];
  "sha256:689fa19d1be2b3a11be32e602e0ce0eb50901e55554a109c31a369c6eca8b30c" -> "sha256:2152a4787819f48f0a7d8db045a60eda79be329b0723f4bed32469ea09ab8379" [label=""];
  "sha256:2152a4787819f48f0a7d8db045a60eda79be329b0723f4bed32469ea09ab8379" -> "sha256:a2867f169cc0f299b9125a60e850c9c5d08214e4910b0bb6e36614790e10e0f0" [label=""];
  "sha256:a2c3e795dd3dceab7fb7b6ee9d3dcb050cc2181a55b1f433f9bd6ab3ee213d4a" -> "sha256:a2867f169cc0f299b9125a60e850c9c5d08214e4910b0bb6e36614790e10e0f0" [label=""];
  "sha256:a2867f169cc0f299b9125a60e850c9c5d08214e4910b0bb6e36614790e10e0f0" -> "sha256:9ea89781af2d1f6e4d8eae3b7fdb1bb78fa7bd378a2c81c5720fc201383465df" [label=""];
  "sha256:9ea89781af2d1f6e4d8eae3b7fdb1bb78fa7bd378a2c81c5720fc201383465df" -> "sha256:c9728280259a4c7431482e90db7f02adc69133e46f71dbe573fe66e881f21ba1" [label=""];
  "sha256:c9728280259a4c7431482e90db7f02adc69133e46f71dbe573fe66e881f21ba1" -> "sha256:f10e52d92861c83090c6e8c3849136c5df4f2430b9991152cd5a1ef95289a827" [label=""];
  "sha256:f10e52d92861c83090c6e8c3849136c5df4f2430b9991152cd5a1ef95289a827" -> "sha256:3453e97a30ac9ba816962070658f35756aa1609501eca87510c236d897d5b4a8" [label=""];
  "sha256:cecc838b7053ae5062687d8cfd691925293892878e8dca703f7652dc75762d07" -> "sha256:3453e97a30ac9ba816962070658f35756aa1609501eca87510c236d897d5b4a8" [label=""];
  "sha256:3453e97a30ac9ba816962070658f35756aa1609501eca87510c236d897d5b4a8" -> "sha256:5633c4606bb16952e3f149bac12ee3a29d86b3b97f053f19116a00173eb64d07" [label=""];
  "sha256:cecc838b7053ae5062687d8cfd691925293892878e8dca703f7652dc75762d07" -> "sha256:5633c4606bb16952e3f149bac12ee3a29d86b3b97f053f19116a00173eb64d07" [label=""];
  "sha256:5633c4606bb16952e3f149bac12ee3a29d86b3b97f053f19116a00173eb64d07" -> "sha256:b1dcf12642cd32fa048d0a84b94b7e81b0f5d3e22a393003cef7f4d4e8db0673" [label=""];
  "sha256:b1dcf12642cd32fa048d0a84b94b7e81b0f5d3e22a393003cef7f4d4e8db0673" -> "sha256:7bc7e25b3f96b8d9c7e7fde5460881aaba5232257aa2021637fb5d4cfe682792" [label=""];
}

