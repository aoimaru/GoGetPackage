[app/sources/147663927.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:15f934a8b806aaee93044a3fc97bfb08ea8a7bdfe45f85cb94cb907d2320bbe1" [label="/bin/sh -c apt-get update --fix-missing      && apt-get install -y libopenmpi-dev openmpi-bin      && apt-get install -y git      && apt-get install -y build-essential      && apt-get install -y ssh      && apt-get clean      && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:84fb7dbfde19073ba733ed8633992bd29ad66dbb429530594c4786f4af95b5cb" [label="/bin/sh -c git clone https://github.com/wesleykendall/mpitutorial     && cd mpitutorial/tutorials/mpi-hello-world/code     && make     && cp mpi_hello_world /home/     && apt-get autoremove -y git     && apt-get autoremove -y build-essential     && rm -rf \"/mpitutorial\"" shape="box"];
  "sha256:6475eb624b7fc8c46efbd8d380d4319ad5a9be8c94397ed42a726b77ba695575" [label="sha256:6475eb624b7fc8c46efbd8d380d4319ad5a9be8c94397ed42a726b77ba695575" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:15f934a8b806aaee93044a3fc97bfb08ea8a7bdfe45f85cb94cb907d2320bbe1" [label=""];
  "sha256:15f934a8b806aaee93044a3fc97bfb08ea8a7bdfe45f85cb94cb907d2320bbe1" -> "sha256:84fb7dbfde19073ba733ed8633992bd29ad66dbb429530594c4786f4af95b5cb" [label=""];
  "sha256:84fb7dbfde19073ba733ed8633992bd29ad66dbb429530594c4786f4af95b5cb" -> "sha256:6475eb624b7fc8c46efbd8d380d4319ad5a9be8c94397ed42a726b77ba695575" [label=""];
}

