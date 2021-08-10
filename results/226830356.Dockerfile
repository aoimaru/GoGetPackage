[app/sources/226830356.Dockerfile]
digraph {
  "sha256:d76fe6483e42d080b91e50b729a783cb288d0b7480e449181aea8939c2261fd1" [label="docker-image://docker.io/jupyter/scipy-notebook:latest" shape="ellipse"];
  "sha256:98d3f6e28b8bc454a60cc3b6b1b9d88d01bb3d0dc1b3d1e2f2e07593186e70b6" [label="/bin/sh -c pip install --upgrade   airtable   brewer2mpl   distance   gensim   matplotlib-venn   nbformat   qgrid   runipy   sas7bdat   scrapy   termcolor   xlrd   xmltodict &&   echo \"fr_FR.UTF-8 UTF-8\" >> /etc/locale.gen &&   locale-gen &&   su -c \"/opt/conda/bin/ipython profile create\" jovyan &&   printf \"\\nc.InlineBackend.figure_format = 'retina'\\nc.IPKernelApp.matplotlib = 'inline'\\nc.InteractiveShellApp.matplotlib = 'inline'\\n\" >> /home/jovyan/.ipython/profile_default/ipython_kernel_config.py &&   printf \"\\nimport os\\nc.NotebookApp.custom_display_url = os.environ['CUSTOM_DISPLAY_URL']\\n\" >> /home/jovyan/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:57521ddffe28e91989d6f71ee30a21acddcc1b7ca89ef75897ff12521b1801b0" [label="sha256:57521ddffe28e91989d6f71ee30a21acddcc1b7ca89ef75897ff12521b1801b0" shape="plaintext"];
  "sha256:d76fe6483e42d080b91e50b729a783cb288d0b7480e449181aea8939c2261fd1" -> "sha256:98d3f6e28b8bc454a60cc3b6b1b9d88d01bb3d0dc1b3d1e2f2e07593186e70b6" [label=""];
  "sha256:98d3f6e28b8bc454a60cc3b6b1b9d88d01bb3d0dc1b3d1e2f2e07593186e70b6" -> "sha256:57521ddffe28e91989d6f71ee30a21acddcc1b7ca89ef75897ff12521b1801b0" [label=""];
}

