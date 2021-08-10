[app/sources/252766142.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5b7b3a9783bad1f3118c577e914ec47f2ff212c26a3bbf495ea60a7b0ed20074" [label="/bin/sh -c apt-get -y install python-simplejson libpython-dev python-selinux python-pip git python-setuptools libffi-dev libssl-dev debianutils build-essential" shape="box"];
  "sha256:48e71c663cb184e723fe789d8ce0d84345489417d3efba85a7ed55ee31afa20b" [label="/bin/sh -c pip install paramiko PyYAML Jinja2 httplib2 six" shape="box"];
  "sha256:b8b8eef944abba6df0e274c0423ae9e59f72ddd3bbe84abc155dbcee1dc78beb" [label="/bin/sh -c pip install ansible" shape="box"];
  "sha256:cafa9118aec7110043cf60cfbb970b42a47eecf3b76be47c70db75e0f7767701" [label="/bin/sh -c which ansible" shape="box"];
  "sha256:ff06ffdfbcaf1b97f9d92140d5143c385b0e5cf1f627775948e693637f09e91e" [label="/bin/sh -c ansible --version" shape="box"];
  "sha256:f09119fcf839e8f3ad05bfd90e1533be0d5fef5916d4ad200f4630fb9a932cf5" [label="sha256:f09119fcf839e8f3ad05bfd90e1533be0d5fef5916d4ad200f4630fb9a932cf5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:5b7b3a9783bad1f3118c577e914ec47f2ff212c26a3bbf495ea60a7b0ed20074" [label=""];
  "sha256:5b7b3a9783bad1f3118c577e914ec47f2ff212c26a3bbf495ea60a7b0ed20074" -> "sha256:48e71c663cb184e723fe789d8ce0d84345489417d3efba85a7ed55ee31afa20b" [label=""];
  "sha256:48e71c663cb184e723fe789d8ce0d84345489417d3efba85a7ed55ee31afa20b" -> "sha256:b8b8eef944abba6df0e274c0423ae9e59f72ddd3bbe84abc155dbcee1dc78beb" [label=""];
  "sha256:b8b8eef944abba6df0e274c0423ae9e59f72ddd3bbe84abc155dbcee1dc78beb" -> "sha256:cafa9118aec7110043cf60cfbb970b42a47eecf3b76be47c70db75e0f7767701" [label=""];
  "sha256:cafa9118aec7110043cf60cfbb970b42a47eecf3b76be47c70db75e0f7767701" -> "sha256:ff06ffdfbcaf1b97f9d92140d5143c385b0e5cf1f627775948e693637f09e91e" [label=""];
  "sha256:ff06ffdfbcaf1b97f9d92140d5143c385b0e5cf1f627775948e693637f09e91e" -> "sha256:f09119fcf839e8f3ad05bfd90e1533be0d5fef5916d4ad200f4630fb9a932cf5" [label=""];
}

