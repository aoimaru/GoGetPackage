[app/sources/379351900.Dockerfile]
digraph {
  "sha256:ebeebd48d5c291acb831a2c8c129c9711d180ed8d5ce188fdc1d7448f69044e6" [label="local://context" shape="ellipse"];
  "sha256:e531ec672ac409aaaccd4d4d0941bf743c5173c998d0eeedf1ba21926c75510b" [label="docker-image://docker.io/andrewosh/binder-base:latest" shape="ellipse"];
  "sha256:5a80a2cd0734543c7a95d4147841ff0b6564d9a5cb3a25aced65dabf413fa03d" [label="/bin/sh -c pip install git+git://github.com/jupyter/nbgrader.git" shape="box"];
  "sha256:d3fbcbbf1ead159438cd398aef109db95fd5d35a66ed97276839ea3fdb745790" [label="copy{src=/jupyter_notebook_config.py, dest=/home/main/.jupyter/jupyter_notebook_config.py}" shape="note"];
  "sha256:cf3018012efba7c5b115122277c1c04ab1b565489276cd1b14050418915979f7" [label="/bin/sh -c jupyter nbextension install --sys-prefix --py nbgrader" shape="box"];
  "sha256:131ffac59f260d8239aad5a4f470e04266e3d5f5af19054ae5bbb865fd7f0919" [label="/bin/sh -c jupyter nbextension enable --sys-prefix --py nbgrader" shape="box"];
  "sha256:4754502903d35d852abf8d61083458aefde710124ffb9470081e3c2ce84fd9b9" [label="/bin/sh -c jupyter serverextension enable --sys-prefix --py nbgrader" shape="box"];
  "sha256:893fcaf114f96264863745a9060cfc0497043d3a1e51b795d6df52d4c526eaed" [label="copy{src=/formgrade_extension.py, dest=/home/main/formgrade_extension.py}" shape="note"];
  "sha256:8e11a7025994ab4e399fe967db55b963381a316d92b790ffc41f70f24198802e" [label="/bin/sh -c jupyter serverextension enable --sys-prefix formgrade_extension" shape="box"];
  "sha256:efc8030929807ee6cb642ed4104e6c933496e8a2b5fce4e608a6186ed75fd3c9" [label="/bin/sh -c mkdir -p /srv/nbgrader/exchange" shape="box"];
  "sha256:4946b6dc64ad64058d8688b5990d6951d7550a42081985e7fec5f25b552a4180" [label="/bin/sh -c chmod ugo+rw /srv/nbgrader/exchange" shape="box"];
  "sha256:32c219c0c47d9b90a8829c9ed0c40ab252bf07b0971b79bf949332963a7a9a39" [label="sha256:32c219c0c47d9b90a8829c9ed0c40ab252bf07b0971b79bf949332963a7a9a39" shape="plaintext"];
  "sha256:e531ec672ac409aaaccd4d4d0941bf743c5173c998d0eeedf1ba21926c75510b" -> "sha256:5a80a2cd0734543c7a95d4147841ff0b6564d9a5cb3a25aced65dabf413fa03d" [label=""];
  "sha256:5a80a2cd0734543c7a95d4147841ff0b6564d9a5cb3a25aced65dabf413fa03d" -> "sha256:d3fbcbbf1ead159438cd398aef109db95fd5d35a66ed97276839ea3fdb745790" [label=""];
  "sha256:ebeebd48d5c291acb831a2c8c129c9711d180ed8d5ce188fdc1d7448f69044e6" -> "sha256:d3fbcbbf1ead159438cd398aef109db95fd5d35a66ed97276839ea3fdb745790" [label=""];
  "sha256:d3fbcbbf1ead159438cd398aef109db95fd5d35a66ed97276839ea3fdb745790" -> "sha256:cf3018012efba7c5b115122277c1c04ab1b565489276cd1b14050418915979f7" [label=""];
  "sha256:cf3018012efba7c5b115122277c1c04ab1b565489276cd1b14050418915979f7" -> "sha256:131ffac59f260d8239aad5a4f470e04266e3d5f5af19054ae5bbb865fd7f0919" [label=""];
  "sha256:131ffac59f260d8239aad5a4f470e04266e3d5f5af19054ae5bbb865fd7f0919" -> "sha256:4754502903d35d852abf8d61083458aefde710124ffb9470081e3c2ce84fd9b9" [label=""];
  "sha256:4754502903d35d852abf8d61083458aefde710124ffb9470081e3c2ce84fd9b9" -> "sha256:893fcaf114f96264863745a9060cfc0497043d3a1e51b795d6df52d4c526eaed" [label=""];
  "sha256:ebeebd48d5c291acb831a2c8c129c9711d180ed8d5ce188fdc1d7448f69044e6" -> "sha256:893fcaf114f96264863745a9060cfc0497043d3a1e51b795d6df52d4c526eaed" [label=""];
  "sha256:893fcaf114f96264863745a9060cfc0497043d3a1e51b795d6df52d4c526eaed" -> "sha256:8e11a7025994ab4e399fe967db55b963381a316d92b790ffc41f70f24198802e" [label=""];
  "sha256:8e11a7025994ab4e399fe967db55b963381a316d92b790ffc41f70f24198802e" -> "sha256:efc8030929807ee6cb642ed4104e6c933496e8a2b5fce4e608a6186ed75fd3c9" [label=""];
  "sha256:efc8030929807ee6cb642ed4104e6c933496e8a2b5fce4e608a6186ed75fd3c9" -> "sha256:4946b6dc64ad64058d8688b5990d6951d7550a42081985e7fec5f25b552a4180" [label=""];
  "sha256:4946b6dc64ad64058d8688b5990d6951d7550a42081985e7fec5f25b552a4180" -> "sha256:32c219c0c47d9b90a8829c9ed0c40ab252bf07b0971b79bf949332963a7a9a39" [label=""];
}

