[app/sources/198134919.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:5a8ae52c3af078c2d90535fb651a3fadba648ea6282b59b0c74eb863b33cc8aa" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive && \tapt-get update && \tapt-get upgrade -y && \tapt-get install -y \t\tbuild-essential \t\tpython \t\tpython-dev \t\tpython-pip \t&& \tpip install dumb-init ansible && \tapt-get remove -y \t\tbuild-essential \t\tpython-dev \t\tpython-pip \t&& \tapt-get autoremove -y && \tapt-get clean && \trm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \t:" shape="box"];
  "sha256:88f16a95f6497ef121b0950ef8c96e072ee0d9c88465050dd00390d89404a168" [label="/bin/sh -c mkdir -p /etc/ansible     && echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:3a25b05ca216bbafeed278c7080f4a8f41ee7b7dda9baee72f37bc10aba18f22" [label="sha256:3a25b05ca216bbafeed278c7080f4a8f41ee7b7dda9baee72f37bc10aba18f22" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:5a8ae52c3af078c2d90535fb651a3fadba648ea6282b59b0c74eb863b33cc8aa" [label=""];
  "sha256:5a8ae52c3af078c2d90535fb651a3fadba648ea6282b59b0c74eb863b33cc8aa" -> "sha256:88f16a95f6497ef121b0950ef8c96e072ee0d9c88465050dd00390d89404a168" [label=""];
  "sha256:88f16a95f6497ef121b0950ef8c96e072ee0d9c88465050dd00390d89404a168" -> "sha256:3a25b05ca216bbafeed278c7080f4a8f41ee7b7dda9baee72f37bc10aba18f22" [label=""];
}

