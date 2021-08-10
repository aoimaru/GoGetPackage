[app/sources/266527871.Dockerfile]
digraph {
  "sha256:44d2758632a036b5e2d48fa616f32283f7bc96f40ba06194b0da42c0600edce4" [label="docker-image://docker.io/openhorizon/aarch64-tx2-cudabase:JetPack3.2-RC" shape="ellipse"];
  "sha256:adbb5ad4c09c28f57cca33de44edf2fdfbf4cf8c83caba0e93dc240563bc7c4e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends --no-install-suggests python-minimal python-pip libpython-dev wget  && apt-get install -y --no-install-recommends --no-install-suggests build-essential  && apt-get install -y --no-install-recommends --no-install-suggests python-setuptools python-all-dev python-dev  && apt-get -y autoremove && apt-get clean" shape="box"];
  "sha256:beaa94b4888c097366920c683ff9bd43e466aca49e9b5cae1cf03aaf803830c1" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:24e7b5e0ce0d34c560e48cad46c42a6d809797910bc50b33b6cb71e4ecaaf26f" [label="local://context" shape="ellipse"];
  "sha256:d3e38a699e83f1fc2f32edc3098eeb84ae143cb5467063a60ad8b183fb0e9ddd" [label="copy{src=/py27/tensorflow-1.5.0rc0-cp27-cp27mu-linux_aarch64.whl, dest=/tmp/tensorflow-1.5.0rc0-cp27-cp27mu-linux_aarch64.whl}" shape="note"];
  "sha256:726aa58148f5769ee53d2a37746fb8c8b2d0086f5c75304642cc6f5fc1ff26f8" [label="/bin/sh -c pip install --no-cache-dir --upgrade pip && pip install tensorflow-1.5.0rc0-cp27-cp27mu-linux_aarch64.whl" shape="box"];
  "sha256:7f9a67fdabd1afe4cefd2c586c4e87239a5665c1c37dc832585d4952e447ba2f" [label="mkdir{path=/app}" shape="note"];
  "sha256:bcb42801b0f63e9788242cd22989f93f2c9830225ed80f619bb8b4e2c0d02794" [label="copy{src=/hello.py, dest=/app/}" shape="note"];
  "sha256:ecec6a771dd2b03f6d00e3b18b391311f0e802060d4ede00fcf15ca7681b6fd9" [label="/bin/sh -c rm -rf /tmp/*" shape="box"];
  "sha256:e1b76b2a6b8e2a056d4ca0f53b6cebd071173dd8d7ab244db182873a1766149a" [label="sha256:e1b76b2a6b8e2a056d4ca0f53b6cebd071173dd8d7ab244db182873a1766149a" shape="plaintext"];
  "sha256:44d2758632a036b5e2d48fa616f32283f7bc96f40ba06194b0da42c0600edce4" -> "sha256:adbb5ad4c09c28f57cca33de44edf2fdfbf4cf8c83caba0e93dc240563bc7c4e" [label=""];
  "sha256:adbb5ad4c09c28f57cca33de44edf2fdfbf4cf8c83caba0e93dc240563bc7c4e" -> "sha256:beaa94b4888c097366920c683ff9bd43e466aca49e9b5cae1cf03aaf803830c1" [label=""];
  "sha256:beaa94b4888c097366920c683ff9bd43e466aca49e9b5cae1cf03aaf803830c1" -> "sha256:d3e38a699e83f1fc2f32edc3098eeb84ae143cb5467063a60ad8b183fb0e9ddd" [label=""];
  "sha256:24e7b5e0ce0d34c560e48cad46c42a6d809797910bc50b33b6cb71e4ecaaf26f" -> "sha256:d3e38a699e83f1fc2f32edc3098eeb84ae143cb5467063a60ad8b183fb0e9ddd" [label=""];
  "sha256:d3e38a699e83f1fc2f32edc3098eeb84ae143cb5467063a60ad8b183fb0e9ddd" -> "sha256:726aa58148f5769ee53d2a37746fb8c8b2d0086f5c75304642cc6f5fc1ff26f8" [label=""];
  "sha256:726aa58148f5769ee53d2a37746fb8c8b2d0086f5c75304642cc6f5fc1ff26f8" -> "sha256:7f9a67fdabd1afe4cefd2c586c4e87239a5665c1c37dc832585d4952e447ba2f" [label=""];
  "sha256:7f9a67fdabd1afe4cefd2c586c4e87239a5665c1c37dc832585d4952e447ba2f" -> "sha256:bcb42801b0f63e9788242cd22989f93f2c9830225ed80f619bb8b4e2c0d02794" [label=""];
  "sha256:24e7b5e0ce0d34c560e48cad46c42a6d809797910bc50b33b6cb71e4ecaaf26f" -> "sha256:bcb42801b0f63e9788242cd22989f93f2c9830225ed80f619bb8b4e2c0d02794" [label=""];
  "sha256:bcb42801b0f63e9788242cd22989f93f2c9830225ed80f619bb8b4e2c0d02794" -> "sha256:ecec6a771dd2b03f6d00e3b18b391311f0e802060d4ede00fcf15ca7681b6fd9" [label=""];
  "sha256:ecec6a771dd2b03f6d00e3b18b391311f0e802060d4ede00fcf15ca7681b6fd9" -> "sha256:e1b76b2a6b8e2a056d4ca0f53b6cebd071173dd8d7ab244db182873a1766149a" [label=""];
}

