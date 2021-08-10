[app/sources/252783217.Dockerfile]
digraph {
  "sha256:1375082cfb28785f43e870cfac60d56d9f55c7a26536928d985b3a442f9631b6" [label="docker-image://docker.io/dclong/conda-yarn:latest" shape="ellipse"];
  "sha256:633aec53d79af66332d9a61d18fa74fec1972e0e25ea6144c8340cdb20fbd506" [label="/bin/sh -c conda create -y -n beakerx 'python>=3' nodejs pandas openjdk maven && conda install -y -n beakerx -c conda-forge ipywidgets jupyterhub jupyterlab" shape="box"];
  "sha256:c216f504742982f1413df57fff7db1fa2435da9da4360af86d923781ab5c9ac5" [label="sha256:c216f504742982f1413df57fff7db1fa2435da9da4360af86d923781ab5c9ac5" shape="plaintext"];
  "sha256:1375082cfb28785f43e870cfac60d56d9f55c7a26536928d985b3a442f9631b6" -> "sha256:633aec53d79af66332d9a61d18fa74fec1972e0e25ea6144c8340cdb20fbd506" [label=""];
  "sha256:633aec53d79af66332d9a61d18fa74fec1972e0e25ea6144c8340cdb20fbd506" -> "sha256:c216f504742982f1413df57fff7db1fa2435da9da4360af86d923781ab5c9ac5" [label=""];
}

