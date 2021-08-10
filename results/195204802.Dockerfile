[app/sources/195204802.Dockerfile]
digraph {
  "sha256:d6896736554a18336717a21f0dc9e308edfbc1477db9a4c6ac4ea252bfd9cdd6" [label="docker-image://docker.io/frolvlad/alpine-miniconda3:latest" shape="ellipse"];
  "sha256:99d22987dd32b0017a18021142b9f5c149fe338926e6274c8bce544de42f2715" [label="/bin/sh -c apk add --no-cache  git bash" shape="box"];
  "sha256:26fff6e07209417f88e6a8ee29225e783e308a0113755c01be991d27cf5ee337" [label="/bin/sh -c git clone --branch $BK_VERSION https://github.com/bokeh/bokeh.git /bokeh" shape="box"];
  "sha256:2c84f0713f23c26fbacf6bee7111ca0357fe8a8c7dab9713d0dde380509ba131" [label="/bin/sh -c mkdir -p /examples && cp -r /bokeh/examples/app /examples/ && rm -rf /bokeh" shape="box"];
  "sha256:aa39e84985c8577bbb6f8768a1fbfcb3e8917fc8c066b4d0f2a3cc99b7ae2585" [label="/bin/sh -c conda config --set auto_update_conda off && conda config --append channels bokeh --append channels bokeh/c/dev" shape="box"];
  "sha256:b7427d8a3b414b670c2ce66013da2dd5b9368c25c7b2d722b652b3f534dd02ac" [label="/bin/sh -c conda install --yes --quiet python=${PY_VERSION} pyyaml jinja2 bokeh=${BK_VERSION} numpy numba scipy sympy nodejs>=8.8 pandas scikit-learn" shape="box"];
  "sha256:7e5eaacf1aeadf56c41cd1ebc74dc740d1ee3864f24935f76b43550db4eacdd1" [label="/bin/sh -c conda clean -ay" shape="box"];
  "sha256:f4f37a76d6d2ba03123081df7a35520adc3dabf024cf24e1d204a9d51d75b7d6" [label="/bin/sh -c python -c 'import bokeh; bokeh.sampledata.download(progress=False)'" shape="box"];
  "sha256:5097f5b5a85319c1ca00fbaef746a4644d8b510bdbeec7b6afebaad9d50d61c0" [label="/bin/sh -c cd /examples/app/stocks && python download_sample_data.py && cd /" shape="box"];
  "sha256:1b0714052ab4422e69e236f4a9d6adcc6f5233fa288755ef0bb6f2d64c67289f" [label="https://raw.githubusercontent.com/bokeh/demo.bokeh.org/master/index.html" shape="ellipse"];
  "sha256:2d6fb5f47fe546b8dcf57c3d8a105c2ff70468bd83948d6e0eb79304bd82d1f1" [label="copy{src=/index.html, dest=/index.html}" shape="note"];
  "sha256:440dbbcb78fbcd9993c23936f4e61c51cee37a6b82f1f1e042548103de702206" [label="sha256:440dbbcb78fbcd9993c23936f4e61c51cee37a6b82f1f1e042548103de702206" shape="plaintext"];
  "sha256:d6896736554a18336717a21f0dc9e308edfbc1477db9a4c6ac4ea252bfd9cdd6" -> "sha256:99d22987dd32b0017a18021142b9f5c149fe338926e6274c8bce544de42f2715" [label=""];
  "sha256:99d22987dd32b0017a18021142b9f5c149fe338926e6274c8bce544de42f2715" -> "sha256:26fff6e07209417f88e6a8ee29225e783e308a0113755c01be991d27cf5ee337" [label=""];
  "sha256:26fff6e07209417f88e6a8ee29225e783e308a0113755c01be991d27cf5ee337" -> "sha256:2c84f0713f23c26fbacf6bee7111ca0357fe8a8c7dab9713d0dde380509ba131" [label=""];
  "sha256:2c84f0713f23c26fbacf6bee7111ca0357fe8a8c7dab9713d0dde380509ba131" -> "sha256:aa39e84985c8577bbb6f8768a1fbfcb3e8917fc8c066b4d0f2a3cc99b7ae2585" [label=""];
  "sha256:aa39e84985c8577bbb6f8768a1fbfcb3e8917fc8c066b4d0f2a3cc99b7ae2585" -> "sha256:b7427d8a3b414b670c2ce66013da2dd5b9368c25c7b2d722b652b3f534dd02ac" [label=""];
  "sha256:b7427d8a3b414b670c2ce66013da2dd5b9368c25c7b2d722b652b3f534dd02ac" -> "sha256:7e5eaacf1aeadf56c41cd1ebc74dc740d1ee3864f24935f76b43550db4eacdd1" [label=""];
  "sha256:7e5eaacf1aeadf56c41cd1ebc74dc740d1ee3864f24935f76b43550db4eacdd1" -> "sha256:f4f37a76d6d2ba03123081df7a35520adc3dabf024cf24e1d204a9d51d75b7d6" [label=""];
  "sha256:f4f37a76d6d2ba03123081df7a35520adc3dabf024cf24e1d204a9d51d75b7d6" -> "sha256:5097f5b5a85319c1ca00fbaef746a4644d8b510bdbeec7b6afebaad9d50d61c0" [label=""];
  "sha256:5097f5b5a85319c1ca00fbaef746a4644d8b510bdbeec7b6afebaad9d50d61c0" -> "sha256:2d6fb5f47fe546b8dcf57c3d8a105c2ff70468bd83948d6e0eb79304bd82d1f1" [label=""];
  "sha256:1b0714052ab4422e69e236f4a9d6adcc6f5233fa288755ef0bb6f2d64c67289f" -> "sha256:2d6fb5f47fe546b8dcf57c3d8a105c2ff70468bd83948d6e0eb79304bd82d1f1" [label=""];
  "sha256:2d6fb5f47fe546b8dcf57c3d8a105c2ff70468bd83948d6e0eb79304bd82d1f1" -> "sha256:440dbbcb78fbcd9993c23936f4e61c51cee37a6b82f1f1e042548103de702206" [label=""];
}

