[app/sources/235395182.Dockerfile]
digraph {
  "sha256:fffec371931006ede22b4ff4b87d2adafa8234b97e4032bd134caa5bae006791" [label="local://context" shape="ellipse"];
  "sha256:fb8384a2d2e371efcf2fd14d45968cd30a28d512c9b952301115f27c74461522" [label="docker-image://quay.io/mojodna/gdal22@sha256:654e7e3d014bd15bb69dbf5cd04cfb550a4e43d874ae41abbb6fec45124f50b7" shape="ellipse"];
  "sha256:7c556479e65659f6708cff8f63d54385e87a2878ec6479606ae94a133f85d42d" [label="/bin/sh -c apt-get update   && apt-get upgrade -y   && apt-get install -y --no-install-recommends     apt-transport-https     bc     build-essential     ca-certificates     curl     cython     git     jq     python-pip     python-wheel     python-setuptools     software-properties-common   && curl -sf https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -   && add-apt-repository -s \"deb https://deb.nodesource.com/node_6.x $(lsb_release -c -s) main\"   && apt-get update   && apt-get install --no-install-recommends -y nodejs   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:498845d5abad67b03841bd5354eb770e721ab83502a3d4763e4ff47b23de2c37" [label="copy{src=/requirements.txt, dest=/opt/oam-dynamic-tiler/requirements.txt}" shape="note"];
  "sha256:ce6a19cdf489d83b34712db26093a26f4cb1bd237552373c5256166eec53a501" [label="mkdir{path=/opt/oam-dynamic-tiler}" shape="note"];
  "sha256:a249398b4c71da60a0be89b5f3905234bab42e01b31e4b9817d77f396323f3dd" [label="/bin/sh -c pip install -U numpy &&   pip install -U --no-binary :all: rasterio>=1.0a6 &&   pip install -r requirements.txt &&   pip install -U awscli &&   rm -rf /root/.cache" shape="box"];
  "sha256:d30e05c04c5d7a291bdbca23785079b074ddf7b07b089f5f55ab2d2b4233e58a" [label="copy{src=/package.json, dest=/opt/oam-dynamic-tiler/package.json}" shape="note"];
  "sha256:1e799c19eb2268081d23f618eea4e31993dd9bceea4340852cfc39e1e9fadc82" [label="/bin/sh -c npm install   && rm -rf /root/.npm" shape="box"];
  "sha256:d79ddd3bc04a7c1adb9940d014b907a4ec4af384ec769bb21f67bc0c025cd586" [label="copy{src=/, dest=/opt/oam-dynamic-tiler}" shape="note"];
  "sha256:8be31f595fd87374391d834b18180636886a711801f19a07462e00a156b7b9b4" [label="sha256:8be31f595fd87374391d834b18180636886a711801f19a07462e00a156b7b9b4" shape="plaintext"];
  "sha256:fb8384a2d2e371efcf2fd14d45968cd30a28d512c9b952301115f27c74461522" -> "sha256:7c556479e65659f6708cff8f63d54385e87a2878ec6479606ae94a133f85d42d" [label=""];
  "sha256:7c556479e65659f6708cff8f63d54385e87a2878ec6479606ae94a133f85d42d" -> "sha256:498845d5abad67b03841bd5354eb770e721ab83502a3d4763e4ff47b23de2c37" [label=""];
  "sha256:fffec371931006ede22b4ff4b87d2adafa8234b97e4032bd134caa5bae006791" -> "sha256:498845d5abad67b03841bd5354eb770e721ab83502a3d4763e4ff47b23de2c37" [label=""];
  "sha256:498845d5abad67b03841bd5354eb770e721ab83502a3d4763e4ff47b23de2c37" -> "sha256:ce6a19cdf489d83b34712db26093a26f4cb1bd237552373c5256166eec53a501" [label=""];
  "sha256:ce6a19cdf489d83b34712db26093a26f4cb1bd237552373c5256166eec53a501" -> "sha256:a249398b4c71da60a0be89b5f3905234bab42e01b31e4b9817d77f396323f3dd" [label=""];
  "sha256:a249398b4c71da60a0be89b5f3905234bab42e01b31e4b9817d77f396323f3dd" -> "sha256:d30e05c04c5d7a291bdbca23785079b074ddf7b07b089f5f55ab2d2b4233e58a" [label=""];
  "sha256:fffec371931006ede22b4ff4b87d2adafa8234b97e4032bd134caa5bae006791" -> "sha256:d30e05c04c5d7a291bdbca23785079b074ddf7b07b089f5f55ab2d2b4233e58a" [label=""];
  "sha256:d30e05c04c5d7a291bdbca23785079b074ddf7b07b089f5f55ab2d2b4233e58a" -> "sha256:1e799c19eb2268081d23f618eea4e31993dd9bceea4340852cfc39e1e9fadc82" [label=""];
  "sha256:1e799c19eb2268081d23f618eea4e31993dd9bceea4340852cfc39e1e9fadc82" -> "sha256:d79ddd3bc04a7c1adb9940d014b907a4ec4af384ec769bb21f67bc0c025cd586" [label=""];
  "sha256:fffec371931006ede22b4ff4b87d2adafa8234b97e4032bd134caa5bae006791" -> "sha256:d79ddd3bc04a7c1adb9940d014b907a4ec4af384ec769bb21f67bc0c025cd586" [label=""];
  "sha256:d79ddd3bc04a7c1adb9940d014b907a4ec4af384ec769bb21f67bc0c025cd586" -> "sha256:8be31f595fd87374391d834b18180636886a711801f19a07462e00a156b7b9b4" [label=""];
}

