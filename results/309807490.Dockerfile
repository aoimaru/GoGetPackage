[app/sources/309807490.Dockerfile]
digraph {
  "sha256:e6b64ed32f4beb3b3c9bd31ce544fd0028818d44fdc84532021f8157f63e9f46" [label="docker-image://docker.io/linkernetworks/minimal-notebook:master" shape="ellipse"];
  "sha256:b35d6330cd5d96856cf8375c79bbb7e579ae701227be1ab33a84027204e5d586" [label="/bin/sh -c conda install --quiet --yes     dlib     opencv     && conda clean -tipsy     && fix-permissions $CONDA_DIR" shape="box"];
  "sha256:cfda7c06c5e63175c56f7c0545d1e8a07874b85d12504673b500414f65f5abf3" [label="/bin/sh -c pip install -U pip==9.0.3     && pip install     beautifulsoup4     bokeh     bson     cython     docker     flask_restful     h5py     keras     matplotlib     nltk     numpy     orderedset     pandas     Pillow     psutil     pymongo     requests     scikit-image     scikit-learn     tensorflow==1.8.0     http://download.pytorch.org/whl/cpu/torch-0.4.0-cp36-cp36m-linux_x86_64.whl     torchvision     && pip install -U     \"git+https://github.com/ahundt/cocoapi.git#egg=pycocotools&subdirectory=PythonAPI\"     \"git+https://github.com/thtrieu/darkflow.git#egg=darkflow\"     && rm -rf ~/.cache/pip" shape="box"];
  "sha256:fb90f3039e273dc0ff0635cedab8680f839c8b41e1116cbb430900e278bf22a8" [label="/bin/sh -c wget https://raw.githubusercontent.com/linkernetworks/aurora/master/install.sh -O - | bash     && if [ \"$SUBMIT_TOOL_NAME\" != \"aurora\" ]; then mv /usr/local/bin/aurora /usr/local/bin/$SUBMIT_TOOL_NAME; fi" shape="box"];
  "sha256:85c1fdb1d7d3b37df81391f278177462ed6250c391414fdb95dd405c956f57f9" [label="sha256:85c1fdb1d7d3b37df81391f278177462ed6250c391414fdb95dd405c956f57f9" shape="plaintext"];
  "sha256:e6b64ed32f4beb3b3c9bd31ce544fd0028818d44fdc84532021f8157f63e9f46" -> "sha256:b35d6330cd5d96856cf8375c79bbb7e579ae701227be1ab33a84027204e5d586" [label=""];
  "sha256:b35d6330cd5d96856cf8375c79bbb7e579ae701227be1ab33a84027204e5d586" -> "sha256:cfda7c06c5e63175c56f7c0545d1e8a07874b85d12504673b500414f65f5abf3" [label=""];
  "sha256:cfda7c06c5e63175c56f7c0545d1e8a07874b85d12504673b500414f65f5abf3" -> "sha256:fb90f3039e273dc0ff0635cedab8680f839c8b41e1116cbb430900e278bf22a8" [label=""];
  "sha256:fb90f3039e273dc0ff0635cedab8680f839c8b41e1116cbb430900e278bf22a8" -> "sha256:85c1fdb1d7d3b37df81391f278177462ed6250c391414fdb95dd405c956f57f9" [label=""];
}

