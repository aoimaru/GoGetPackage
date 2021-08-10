[app/sources/298475653.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:09f09aa4915161e87e37628e3dce89ac5823c7489fb9d2ac98cc6354117fb5a2" [label="/bin/sh -c apt-get update -qq     && apt-get -y install         apt-transport-https     && echo \"deb [trusted=yes] https://gitlab.com/hall-lab/ccdg-apt-repo/raw/master ccdg main\" | tee -a /etc/apt/sources.list     && runDeps=' \tccdg-python-2.7.12 \tccdg-samtools-1.3.1         '     && apt-get update -qq     && apt-get -y install         --no-install-recommends         $runDeps     && /opt/ccdg/python-2.7.12/bin/pip install --upgrade pip svtools     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c34b9fb2f48e054d53f92a7b0f73a98f6d6f71bd75157c1e703206fd95c0fe83" [label="sha256:c34b9fb2f48e054d53f92a7b0f73a98f6d6f71bd75157c1e703206fd95c0fe83" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:09f09aa4915161e87e37628e3dce89ac5823c7489fb9d2ac98cc6354117fb5a2" [label=""];
  "sha256:09f09aa4915161e87e37628e3dce89ac5823c7489fb9d2ac98cc6354117fb5a2" -> "sha256:c34b9fb2f48e054d53f92a7b0f73a98f6d6f71bd75157c1e703206fd95c0fe83" [label=""];
}

