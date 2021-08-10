[app/sources/280607650.Dockerfile]
digraph {
  "sha256:408fc72d6eb67ad0b253916ffda46990f459905271934f023313790ec341ded5" [label="docker-image://docker.io/library/node:8.6" shape="ellipse"];
  "sha256:c9127d4dfdb0193bc36292d1b43d1df21c1a325160a8e4ec482c3bc630b0e59e" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y" shape="box"];
  "sha256:ff81c443456a83361672a2edbb2156412c2a3c203199b764fc007006fed5e8da" [label="/bin/sh -c apt-get install -y   less   man   python   python-pip   python-dev   python-yaml" shape="box"];
  "sha256:badffa3cce065f858a8773e99001655bd8c7a9948ffdf37f71a9a7fe8b230e61" [label="/bin/sh -c pip install awscli" shape="box"];
  "sha256:cce708821aa8862e33d53b84380a14824b8f18c06c04fffb18ea56e2858ff4ae" [label="/bin/sh -c echo \"export PATH=~/.local/bin:$PATH\" > ~/.bashrc" shape="box"];
  "sha256:1ad928be500567c5383a463323612507814b23e365c0d388e647183cbe8bf644" [label="npm install -g serverless" shape="box"];
  "sha256:8ac1b3cecf1a46ee70815f6bf6c337e82cdaadf4fb09ea174b76426e78c1b860" [label="local://context" shape="ellipse"];
  "sha256:09f4b6e442955f4c7685d67741b4bd7f9b6ce8eda23d1e6313e07329d955a39c" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:f5f7c763abdfacbe4754deef5a6bc309cdd7f28e6c4f4f953be4caa38b079834" [label="copy{src=/change-deployment-bucket.py, dest=/}" shape="note"];
  "sha256:0aee1cf04907a5103b05c90db21fa03e313075dfbe09cef3ab9b1f8210dd85b3" [label="sha256:0aee1cf04907a5103b05c90db21fa03e313075dfbe09cef3ab9b1f8210dd85b3" shape="plaintext"];
  "sha256:408fc72d6eb67ad0b253916ffda46990f459905271934f023313790ec341ded5" -> "sha256:c9127d4dfdb0193bc36292d1b43d1df21c1a325160a8e4ec482c3bc630b0e59e" [label=""];
  "sha256:c9127d4dfdb0193bc36292d1b43d1df21c1a325160a8e4ec482c3bc630b0e59e" -> "sha256:ff81c443456a83361672a2edbb2156412c2a3c203199b764fc007006fed5e8da" [label=""];
  "sha256:ff81c443456a83361672a2edbb2156412c2a3c203199b764fc007006fed5e8da" -> "sha256:badffa3cce065f858a8773e99001655bd8c7a9948ffdf37f71a9a7fe8b230e61" [label=""];
  "sha256:badffa3cce065f858a8773e99001655bd8c7a9948ffdf37f71a9a7fe8b230e61" -> "sha256:cce708821aa8862e33d53b84380a14824b8f18c06c04fffb18ea56e2858ff4ae" [label=""];
  "sha256:cce708821aa8862e33d53b84380a14824b8f18c06c04fffb18ea56e2858ff4ae" -> "sha256:1ad928be500567c5383a463323612507814b23e365c0d388e647183cbe8bf644" [label=""];
  "sha256:1ad928be500567c5383a463323612507814b23e365c0d388e647183cbe8bf644" -> "sha256:09f4b6e442955f4c7685d67741b4bd7f9b6ce8eda23d1e6313e07329d955a39c" [label=""];
  "sha256:8ac1b3cecf1a46ee70815f6bf6c337e82cdaadf4fb09ea174b76426e78c1b860" -> "sha256:09f4b6e442955f4c7685d67741b4bd7f9b6ce8eda23d1e6313e07329d955a39c" [label=""];
  "sha256:09f4b6e442955f4c7685d67741b4bd7f9b6ce8eda23d1e6313e07329d955a39c" -> "sha256:f5f7c763abdfacbe4754deef5a6bc309cdd7f28e6c4f4f953be4caa38b079834" [label=""];
  "sha256:8ac1b3cecf1a46ee70815f6bf6c337e82cdaadf4fb09ea174b76426e78c1b860" -> "sha256:f5f7c763abdfacbe4754deef5a6bc309cdd7f28e6c4f4f953be4caa38b079834" [label=""];
  "sha256:f5f7c763abdfacbe4754deef5a6bc309cdd7f28e6c4f4f953be4caa38b079834" -> "sha256:0aee1cf04907a5103b05c90db21fa03e313075dfbe09cef3ab9b1f8210dd85b3" [label=""];
}

