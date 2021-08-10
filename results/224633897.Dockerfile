[app/sources/224633897.Dockerfile]
digraph {
  "sha256:a78783106a709238876be0400343e5782777276e3785d5da484ec23ca6b5122d" [label="docker-image://docker.io/centos7/base:latest" shape="ellipse"];
  "sha256:33075f26191c94e10e8f2ea1b07a70bdf9d300f4b43528806720319436823516" [label="/bin/sh -c yum -y install                curl && curl -o /etc/yum.repos.d/dataman.repo http://get.dataman-inc.com/repos/centos/7/0/dataman.repo" shape="box"];
  "sha256:af74366e1f39436896670cbd67e4a686300a30e2a475a196a4df7e7caf26250d" [label="/bin/sh -c yum install -y mesos-0.23.0 &&  yum clean all" shape="box"];
  "sha256:23f039285f0c85eb77beb22ec18a9207e63e6641bccc3116052a0c999469cb9c" [label="sha256:23f039285f0c85eb77beb22ec18a9207e63e6641bccc3116052a0c999469cb9c" shape="plaintext"];
  "sha256:a78783106a709238876be0400343e5782777276e3785d5da484ec23ca6b5122d" -> "sha256:33075f26191c94e10e8f2ea1b07a70bdf9d300f4b43528806720319436823516" [label=""];
  "sha256:33075f26191c94e10e8f2ea1b07a70bdf9d300f4b43528806720319436823516" -> "sha256:af74366e1f39436896670cbd67e4a686300a30e2a475a196a4df7e7caf26250d" [label=""];
  "sha256:af74366e1f39436896670cbd67e4a686300a30e2a475a196a4df7e7caf26250d" -> "sha256:23f039285f0c85eb77beb22ec18a9207e63e6641bccc3116052a0c999469cb9c" [label=""];
}

