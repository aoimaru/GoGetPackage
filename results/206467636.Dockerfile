[app/sources/206467636.Dockerfile]
digraph {
  "sha256:9d365c93d472860f1c22afcd21435efc9a3f10ee9a0b62df90d744b56ff6f479" [label="local://context" shape="ellipse"];
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" [label="docker-image://docker.io/tensorflow/tensorflow:1.12.0-gpu-py3" shape="ellipse"];
  "sha256:31c5e234ac24586854a1cc735167f4eb5641b86f22592edd9719a2985d45efd2" [label="/bin/sh -c apt-get update &&     apt-get install -y g++ make git vim &&     pip install --upgrade pip &&     pip install visdom pymongo pyyaml &&     jupyter nbextension enable --py widgetsnbextension" shape="box"];
  "sha256:1238b29039dff42c1fe1e6a4d6d9be4f397bb930543491faa951d14c84f6e382" [label="copy{src=/python, dest=/baseline/python}" shape="note"];
  "sha256:abd39d6eea69f21a8caeddcc6ee69aacea8ddbe71165916fa193b086bb009f61" [label="copy{src=/docs, dest=/baseline/docs}" shape="note"];
  "sha256:9f5f75d974e461554fa34bf71db7af5d75dd380a8f13b2871052a5a8fbdb09e1" [label="/bin/sh -c cd /baseline/python/ && bash ./install_dev.sh baseline no_test && bash ./install_dev.sh xpctl no_test" shape="box"];
  "sha256:ae5a342ee46cfb9fd61540ddac19524a5b6ca0bb972cce0a9d898bdbcc2aa2e8" [label="/bin/sh -c cd /baseline/python/hpctl && pip install -e .[docker]" shape="box"];
  "sha256:3c26a567bba24c054c8dff5d82c629e273ca9980834a86179604f04a17629362" [label="mkdir{path=/baseline/python}" shape="note"];
  "sha256:4a6f20d93d431ac7f5c1e6338ba4adcf835c2132bc7c70bd2c20e04053c1ba56" [label="sha256:4a6f20d93d431ac7f5c1e6338ba4adcf835c2132bc7c70bd2c20e04053c1ba56" shape="plaintext"];
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" -> "sha256:31c5e234ac24586854a1cc735167f4eb5641b86f22592edd9719a2985d45efd2" [label=""];
  "sha256:31c5e234ac24586854a1cc735167f4eb5641b86f22592edd9719a2985d45efd2" -> "sha256:1238b29039dff42c1fe1e6a4d6d9be4f397bb930543491faa951d14c84f6e382" [label=""];
  "sha256:9d365c93d472860f1c22afcd21435efc9a3f10ee9a0b62df90d744b56ff6f479" -> "sha256:1238b29039dff42c1fe1e6a4d6d9be4f397bb930543491faa951d14c84f6e382" [label=""];
  "sha256:1238b29039dff42c1fe1e6a4d6d9be4f397bb930543491faa951d14c84f6e382" -> "sha256:abd39d6eea69f21a8caeddcc6ee69aacea8ddbe71165916fa193b086bb009f61" [label=""];
  "sha256:9d365c93d472860f1c22afcd21435efc9a3f10ee9a0b62df90d744b56ff6f479" -> "sha256:abd39d6eea69f21a8caeddcc6ee69aacea8ddbe71165916fa193b086bb009f61" [label=""];
  "sha256:abd39d6eea69f21a8caeddcc6ee69aacea8ddbe71165916fa193b086bb009f61" -> "sha256:9f5f75d974e461554fa34bf71db7af5d75dd380a8f13b2871052a5a8fbdb09e1" [label=""];
  "sha256:9f5f75d974e461554fa34bf71db7af5d75dd380a8f13b2871052a5a8fbdb09e1" -> "sha256:ae5a342ee46cfb9fd61540ddac19524a5b6ca0bb972cce0a9d898bdbcc2aa2e8" [label=""];
  "sha256:ae5a342ee46cfb9fd61540ddac19524a5b6ca0bb972cce0a9d898bdbcc2aa2e8" -> "sha256:3c26a567bba24c054c8dff5d82c629e273ca9980834a86179604f04a17629362" [label=""];
  "sha256:3c26a567bba24c054c8dff5d82c629e273ca9980834a86179604f04a17629362" -> "sha256:4a6f20d93d431ac7f5c1e6338ba4adcf835c2132bc7c70bd2c20e04053c1ba56" [label=""];
}

