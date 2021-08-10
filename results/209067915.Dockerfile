[app/sources/209067915.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:45b2324d30b0fae7d658463b169618e6b3806cce87fe672a3a35758858621b18" [label="mkdir{path=/home/fluent}" shape="note"];
  "sha256:8cfb048d00a9de086997343719d27308d658197c81b2dca1d10c5c45bae9a9e9" [label="/bin/sh -c ulimit -n 65536" shape="box"];
  "sha256:fd197b7638fa64a8e627b3186b396310c538c7b78718ddc8181c419e0ad28034" [label="local://context" shape="ellipse"];
  "sha256:682b195e9dc442c00857eeabde28de52ea32ff98b4baaebdbb7cc3d751321dff" [label="copy{src=/td-agent.conf, dest=/etc/td-agent/td-agent.conf}" shape="note"];
  "sha256:0bf175a5632d42af956bcdb13e1fecf037613b66ef553223bdc6a3fc12778412" [label="/bin/sh -c yum update -y     && yum groupinstall -y development     && yum install -y sudo ruby-devel     && curl -sSL https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh     && sed -i -e \"s/USER=td-agent/USER=root/\" -e \"s/GROUP=td-agent/GROUP=root/\" /etc/init.d/td-agent     && td-agent-gem install --no-document         fluent-plugin-kubernetes_metadata_filter:0.26.2         fluent-plugin-aws-elasticsearch-service:0.1.6         fluent-plugin-grok-parser:2.1.0         fluent-plugin-record-modifier:0.5.0         fluent-plugin-mutate_filter:0.2.0     && yum remove -y sudo     && rm -rf /opt/td-agent/embedded/lib/ruby/gems/2.1.0/gems/json-1.8.1" shape="box"];
  "sha256:29754ea81a425d6b2615709bb83b4ef7bba8fdb8203f4ed6f385b1e01ca6f776" [label="sha256:29754ea81a425d6b2615709bb83b4ef7bba8fdb8203f4ed6f385b1e01ca6f776" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:45b2324d30b0fae7d658463b169618e6b3806cce87fe672a3a35758858621b18" [label=""];
  "sha256:45b2324d30b0fae7d658463b169618e6b3806cce87fe672a3a35758858621b18" -> "sha256:8cfb048d00a9de086997343719d27308d658197c81b2dca1d10c5c45bae9a9e9" [label=""];
  "sha256:8cfb048d00a9de086997343719d27308d658197c81b2dca1d10c5c45bae9a9e9" -> "sha256:682b195e9dc442c00857eeabde28de52ea32ff98b4baaebdbb7cc3d751321dff" [label=""];
  "sha256:fd197b7638fa64a8e627b3186b396310c538c7b78718ddc8181c419e0ad28034" -> "sha256:682b195e9dc442c00857eeabde28de52ea32ff98b4baaebdbb7cc3d751321dff" [label=""];
  "sha256:682b195e9dc442c00857eeabde28de52ea32ff98b4baaebdbb7cc3d751321dff" -> "sha256:0bf175a5632d42af956bcdb13e1fecf037613b66ef553223bdc6a3fc12778412" [label=""];
  "sha256:0bf175a5632d42af956bcdb13e1fecf037613b66ef553223bdc6a3fc12778412" -> "sha256:29754ea81a425d6b2615709bb83b4ef7bba8fdb8203f4ed6f385b1e01ca6f776" [label=""];
}

