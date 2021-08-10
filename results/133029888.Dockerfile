[app/sources/133029888.Dockerfile]
digraph {
  "sha256:559404403aa078ed2a614a97d76f5ba6c62966c5327d56eeddde6768eacbfeee" [label="docker-image://docker.io/pveber/bistro-base:jessie" shape="ellipse"];
  "sha256:158c7ef5390bd898678578790a96bb95e19fd8468e3546331552304d7118a8ba" [label="/bin/sh -c wget https://github.com/downloads/taoliu/MACS/MACS-1.4.2-1.tar.gz &&    tar -xzf MACS-1.4.2-1.tar.gz &&    rm MACS-1.4.2-1.tar.gz &&    cd MACS-1.4.2 && python setup.py install" shape="box"];
  "sha256:5523752fc5040f982c4a3da251fb7a4bc99acc36f037897f022da1d1f978dfb0" [label="sha256:5523752fc5040f982c4a3da251fb7a4bc99acc36f037897f022da1d1f978dfb0" shape="plaintext"];
  "sha256:559404403aa078ed2a614a97d76f5ba6c62966c5327d56eeddde6768eacbfeee" -> "sha256:158c7ef5390bd898678578790a96bb95e19fd8468e3546331552304d7118a8ba" [label=""];
  "sha256:158c7ef5390bd898678578790a96bb95e19fd8468e3546331552304d7118a8ba" -> "sha256:5523752fc5040f982c4a3da251fb7a4bc99acc36f037897f022da1d1f978dfb0" [label=""];
}

