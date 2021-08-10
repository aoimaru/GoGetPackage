[app/sources/326528715.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:8f730bbce6e9253c79aefca8802a9ee6de9b84a520d22429afe63d304079e1b4" [label="/bin/sh -c yum install -y which initscripts rsync net-tools passwd https://www.foundationdb.org/downloads/6.0.15/rhel6/installers/foundationdb-clients-6.0.15-1.el6.x86_64.rpm https://www.foundationdb.org/downloads/6.0.15/rhel6/installers/foundationdb-server-6.0.15-1.el6.x86_64.rpm" shape="box"];
  "sha256:8c1939bb9cdf6a222aac04133ec87d48f6a7d9b918033d4de31ca7e303c129ac" [label="local://context" shape="ellipse"];
  "sha256:7b5a9232ae6f6b707cdfb72964afddf64815231bd9c8c12f155fb8d3e0f62026" [label="copy{src=/fdb_docker_start.bash, dest=/usr/lib/foundationdb/}" shape="note"];
  "sha256:31948bc7dd5d8dfe106c85cadcdf162d3d309a05ee8fc4c8b0648da3f5ae2951" [label="sha256:31948bc7dd5d8dfe106c85cadcdf162d3d309a05ee8fc4c8b0648da3f5ae2951" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:8f730bbce6e9253c79aefca8802a9ee6de9b84a520d22429afe63d304079e1b4" [label=""];
  "sha256:8f730bbce6e9253c79aefca8802a9ee6de9b84a520d22429afe63d304079e1b4" -> "sha256:7b5a9232ae6f6b707cdfb72964afddf64815231bd9c8c12f155fb8d3e0f62026" [label=""];
  "sha256:8c1939bb9cdf6a222aac04133ec87d48f6a7d9b918033d4de31ca7e303c129ac" -> "sha256:7b5a9232ae6f6b707cdfb72964afddf64815231bd9c8c12f155fb8d3e0f62026" [label=""];
  "sha256:7b5a9232ae6f6b707cdfb72964afddf64815231bd9c8c12f155fb8d3e0f62026" -> "sha256:31948bc7dd5d8dfe106c85cadcdf162d3d309a05ee8fc4c8b0648da3f5ae2951" [label=""];
}

