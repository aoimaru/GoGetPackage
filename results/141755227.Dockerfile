[app/sources/141755227.Dockerfile]
digraph {
  "sha256:f1ee438b5ab1f0a2d65613ce4856b9d5a3984a0fda947ca37c3c46e3830b4ed2" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ecf41c8f2eb46d8272483baed3ca66439771aa2ca381b213652c65d34d1f6e88" [label="/bin/sh -c apt update && apt install -y     tmux     vim     curl     git     git-lfs     software-properties-common     build-essential     doxygen     graphviz" shape="box"];
  "sha256:9eefcc1d8e26dc6671d87a6354d8f97689fa90d34b00ec588665373ec6ae6177" [label="/bin/sh -c curl -OJLs https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" shape="box"];
  "sha256:900994e54ac64a81b4216ac846ead4ca48b607334d2b44a3f6f2914951c97ea6" [label="/bin/sh -c bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b" shape="box"];
  "sha256:4e960a7fde6e83515f78d1e6e14c5de5c7dfe7ff59578d3c491e452559bfc98f" [label="/bin/sh -c conda update -y conda && conda install -y -c conda-forge -c hi2p-perim     python=3.7     cmake     ninja     jupyter     matplotlib     pandas     sphinx     sphinx_rtd_theme     jupytext     tqdm     imageio     pytest     zeromq     cppzmq     pybind11     embree3     glm     nlohmann_json     doctest-cpp     fmt     stb     cereal" shape="box"];
  "sha256:c1306c3063f2fd3a2d9dc4a3c594f63ffc5a5d57e1bbe503be67e5b4906ac473" [label="/bin/sh -c pip install breathe sphinx_tabs nbsphinx" shape="box"];
  "sha256:64a239c3d993a1e7d70227f725faf4e4ed6f654590210a5e236746fc056e7c13" [label="/bin/sh -c imageio_download_bin freeimage" shape="box"];
  "sha256:d43a2e2d2ff8687a7e2dc8434b71b5ee67ca9ff412c3e84d4019c0c64f7697ae" [label="copy{src=/, dest=/lightmetrica-v3}" shape="note"];
  "sha256:5e61071e9bcd3e2e755a0b6a65edfd9c09ccee2df57d0f813e979328ce45cc46" [label="mkdir{path=/lightmetrica-v3}" shape="note"];
  "sha256:2fa64ceade8e4fff3765ec6b8eb69a25b13ee16e27543b9701632ec97c8d627c" [label="/bin/sh -c cmake -G \"Ninja\" -H. -B_build -DCMAKE_BUILD_TYPE=Release -DLM_BUILD_GUI_EXAMPLES=OFF &&     cmake --build _build --target install -- -j 4" shape="box"];
  "sha256:c580f26f8bd21d98c06944e26b900a97dfbb1baa7a83c0d5c544cfcad673d2cf" [label="mkdir{path=/lightmetrica-v3/_build/bin}" shape="note"];
  "sha256:b590c14b27fdccf4dd47a1998c5866e07b7d82e4a55f93324aacf5e80e19c1a0" [label="/bin/sh -c LD_LIBRARY_PATH=. ./lm_test" shape="box"];
  "sha256:c2ace6555fda36fb9edf7852ba21504d748a0d651fb90469277f84b85d18eab2" [label="mkdir{path=/lightmetrica-v3}" shape="note"];
  "sha256:3c260e3444a11a478023bd3c45b4135475a6602b0679f108a12f647ad77c318c" [label="/bin/sh -c LD_LIBRARY_PATH=./_build/bin PYTHONPATH=./_build/bin python -m pytest ./pytest" shape="box"];
  "sha256:db527c894068456c7e9cc842609e5b12e587e01aab015c61cd29c7e75fcbaed2" [label="sha256:db527c894068456c7e9cc842609e5b12e587e01aab015c61cd29c7e75fcbaed2" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:ecf41c8f2eb46d8272483baed3ca66439771aa2ca381b213652c65d34d1f6e88" [label=""];
  "sha256:ecf41c8f2eb46d8272483baed3ca66439771aa2ca381b213652c65d34d1f6e88" -> "sha256:9eefcc1d8e26dc6671d87a6354d8f97689fa90d34b00ec588665373ec6ae6177" [label=""];
  "sha256:9eefcc1d8e26dc6671d87a6354d8f97689fa90d34b00ec588665373ec6ae6177" -> "sha256:900994e54ac64a81b4216ac846ead4ca48b607334d2b44a3f6f2914951c97ea6" [label=""];
  "sha256:900994e54ac64a81b4216ac846ead4ca48b607334d2b44a3f6f2914951c97ea6" -> "sha256:4e960a7fde6e83515f78d1e6e14c5de5c7dfe7ff59578d3c491e452559bfc98f" [label=""];
  "sha256:4e960a7fde6e83515f78d1e6e14c5de5c7dfe7ff59578d3c491e452559bfc98f" -> "sha256:c1306c3063f2fd3a2d9dc4a3c594f63ffc5a5d57e1bbe503be67e5b4906ac473" [label=""];
  "sha256:c1306c3063f2fd3a2d9dc4a3c594f63ffc5a5d57e1bbe503be67e5b4906ac473" -> "sha256:64a239c3d993a1e7d70227f725faf4e4ed6f654590210a5e236746fc056e7c13" [label=""];
  "sha256:64a239c3d993a1e7d70227f725faf4e4ed6f654590210a5e236746fc056e7c13" -> "sha256:d43a2e2d2ff8687a7e2dc8434b71b5ee67ca9ff412c3e84d4019c0c64f7697ae" [label=""];
  "sha256:f1ee438b5ab1f0a2d65613ce4856b9d5a3984a0fda947ca37c3c46e3830b4ed2" -> "sha256:d43a2e2d2ff8687a7e2dc8434b71b5ee67ca9ff412c3e84d4019c0c64f7697ae" [label=""];
  "sha256:d43a2e2d2ff8687a7e2dc8434b71b5ee67ca9ff412c3e84d4019c0c64f7697ae" -> "sha256:5e61071e9bcd3e2e755a0b6a65edfd9c09ccee2df57d0f813e979328ce45cc46" [label=""];
  "sha256:5e61071e9bcd3e2e755a0b6a65edfd9c09ccee2df57d0f813e979328ce45cc46" -> "sha256:2fa64ceade8e4fff3765ec6b8eb69a25b13ee16e27543b9701632ec97c8d627c" [label=""];
  "sha256:2fa64ceade8e4fff3765ec6b8eb69a25b13ee16e27543b9701632ec97c8d627c" -> "sha256:c580f26f8bd21d98c06944e26b900a97dfbb1baa7a83c0d5c544cfcad673d2cf" [label=""];
  "sha256:c580f26f8bd21d98c06944e26b900a97dfbb1baa7a83c0d5c544cfcad673d2cf" -> "sha256:b590c14b27fdccf4dd47a1998c5866e07b7d82e4a55f93324aacf5e80e19c1a0" [label=""];
  "sha256:b590c14b27fdccf4dd47a1998c5866e07b7d82e4a55f93324aacf5e80e19c1a0" -> "sha256:c2ace6555fda36fb9edf7852ba21504d748a0d651fb90469277f84b85d18eab2" [label=""];
  "sha256:c2ace6555fda36fb9edf7852ba21504d748a0d651fb90469277f84b85d18eab2" -> "sha256:3c260e3444a11a478023bd3c45b4135475a6602b0679f108a12f647ad77c318c" [label=""];
  "sha256:3c260e3444a11a478023bd3c45b4135475a6602b0679f108a12f647ad77c318c" -> "sha256:db527c894068456c7e9cc842609e5b12e587e01aab015c61cd29c7e75fcbaed2" [label=""];
}

