[app/sources/313627701.Dockerfile]
digraph {
  "sha256:d5c7acbf53475a9f6c3d05b9dd0aab1b4bdac9fda87190f4d1cdd57de8b56853" [label="docker-image://docker.io/tensorflow/tensorflow:1.8.0-gpu-py3" shape="ellipse"];
  "sha256:2929e9334a4521da7bef372493454090425521263aaeffaa6020070ab4a6e7dc" [label="/bin/sh -c mkdir -p $LAB_DIR $REPO_DIR $DATA_DIR $SIM_DIR" shape="box"];
  "sha256:06899a3dcabefd8b07f6429c30b6716c0f61bab288f30bce6b9f8fbd4e1e8262" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends git vim wget" shape="box"];
  "sha256:5467b263a680319337a44765e400bf4fd46e5c5bd3f1efaeb62b6730bd76351b" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:d52a045928d38e03a664108acc9f97c59ba89e66b7737f87f519896c807692a4" [label="/bin/sh -c apt-get install -y libsm6 libxext6 libfontconfig1 libxrender1 python3-tk" shape="box"];
  "sha256:18bd040b06ad3b0fd4bb6405e975ffe96a7582c3f3062be4f9421b1b1f95e418" [label="/bin/sh -c pip --no-cache-dir install     PyYAML==3.13     numpy==1.14.2     scipy==1.0.1     pandas==0.22.0     scikit-image==0.14.0     scikit-learn==0.20.1     opencv-python==3.4.3.18     requests==2.20.1     matplotlib==2.2.2     dask[distributed]==1.0.0     bokeh==1.0.1     keras==2.2.4     centrosome==1.1.5     mahotas==1.4.5     plotnine==0.4.0     jupyterlab     python-dotenv     papermill     fcswrite     tifffile     fire     seaborn" shape="box"];
  "sha256:543ebe8a90fe2d39372a19b4a4969189dcf8b9269ad658b152536fd3ed361f13" [label="/bin/sh -c pip install dash==0.21.1      dash-renderer==0.13.0     dash-html-components==0.11.0     dash-core-components==0.23.0     plotly" shape="box"];
  "sha256:c79f7ab946acf32bca5fc4a4d9f7ef0c7fdd0cc6cb75ef58cd24e192b36a2f86" [label="/bin/sh -c cd $REPO_DIR &&     git clone $FLOWDEC_REPO_URL &&     cd flowdec/python &&     pip install ." shape="box"];
  "sha256:f0d14496f4533e2e21d68dc12b0a39a99ab4a9049bb38638b4a977eab75f245b" [label="/bin/sh -c cd $SIM_DIR &&     wget -nv https://storage.googleapis.com/musc-codex/datasets/simulations/sim-exp-01.zip &&     unzip -q sim-exp-01.zip" shape="box"];
  "sha256:6aa7131b25b4e6cc0a9239c7056e4f09da20582dcd4b625bfd0834bdade71479" [label="/bin/sh -c mkdir -p $(python -m site --user-site) &&     echo \"$CYTOKIT_REPO_DIR/python/pipeline\" > $(python -m site --user-site)/local.pth &&     echo \"$CYTOKIT_REPO_DIR/python/notebooks/src\" >> $(python -m site --user-site)/local.pth &&     echo \"$CYTOKIT_REPO_DIR/python/applications\" >> $(python -m site --user-site)/local.pth" shape="box"];
  "sha256:c0b31abad28556a2be5e9697e95a5eab80c80ec8479414a7d3241419a34cb8f4" [label="mkdir{path=/lab}" shape="note"];
  "sha256:6709d753af7817f21c6240f30369655745d6d56eba6fd2ea598f249734cb5a28" [label="sha256:6709d753af7817f21c6240f30369655745d6d56eba6fd2ea598f249734cb5a28" shape="plaintext"];
  "sha256:d5c7acbf53475a9f6c3d05b9dd0aab1b4bdac9fda87190f4d1cdd57de8b56853" -> "sha256:2929e9334a4521da7bef372493454090425521263aaeffaa6020070ab4a6e7dc" [label=""];
  "sha256:2929e9334a4521da7bef372493454090425521263aaeffaa6020070ab4a6e7dc" -> "sha256:06899a3dcabefd8b07f6429c30b6716c0f61bab288f30bce6b9f8fbd4e1e8262" [label=""];
  "sha256:06899a3dcabefd8b07f6429c30b6716c0f61bab288f30bce6b9f8fbd4e1e8262" -> "sha256:5467b263a680319337a44765e400bf4fd46e5c5bd3f1efaeb62b6730bd76351b" [label=""];
  "sha256:5467b263a680319337a44765e400bf4fd46e5c5bd3f1efaeb62b6730bd76351b" -> "sha256:d52a045928d38e03a664108acc9f97c59ba89e66b7737f87f519896c807692a4" [label=""];
  "sha256:d52a045928d38e03a664108acc9f97c59ba89e66b7737f87f519896c807692a4" -> "sha256:18bd040b06ad3b0fd4bb6405e975ffe96a7582c3f3062be4f9421b1b1f95e418" [label=""];
  "sha256:18bd040b06ad3b0fd4bb6405e975ffe96a7582c3f3062be4f9421b1b1f95e418" -> "sha256:543ebe8a90fe2d39372a19b4a4969189dcf8b9269ad658b152536fd3ed361f13" [label=""];
  "sha256:543ebe8a90fe2d39372a19b4a4969189dcf8b9269ad658b152536fd3ed361f13" -> "sha256:c79f7ab946acf32bca5fc4a4d9f7ef0c7fdd0cc6cb75ef58cd24e192b36a2f86" [label=""];
  "sha256:c79f7ab946acf32bca5fc4a4d9f7ef0c7fdd0cc6cb75ef58cd24e192b36a2f86" -> "sha256:f0d14496f4533e2e21d68dc12b0a39a99ab4a9049bb38638b4a977eab75f245b" [label=""];
  "sha256:f0d14496f4533e2e21d68dc12b0a39a99ab4a9049bb38638b4a977eab75f245b" -> "sha256:6aa7131b25b4e6cc0a9239c7056e4f09da20582dcd4b625bfd0834bdade71479" [label=""];
  "sha256:6aa7131b25b4e6cc0a9239c7056e4f09da20582dcd4b625bfd0834bdade71479" -> "sha256:c0b31abad28556a2be5e9697e95a5eab80c80ec8479414a7d3241419a34cb8f4" [label=""];
  "sha256:c0b31abad28556a2be5e9697e95a5eab80c80ec8479414a7d3241419a34cb8f4" -> "sha256:6709d753af7817f21c6240f30369655745d6d56eba6fd2ea598f249734cb5a28" [label=""];
}

