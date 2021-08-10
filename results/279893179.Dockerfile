[app/sources/279893179.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:9d7d75cf1dded0763f1238b80eca959711054831ef535b6dc17e736473ac77c7" [label="/bin/sh -c apt-get update  && apt-get install -y         openssl libapr1 libnuma1 libmbedcrypto1 libmbedtls10 libmbedx509-0         ethtool         iptables         iproute2 iputils-ping inetutils-traceroute         netcat-openbsd         graphviz  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f4110da0c876c6f04c5e28ae295fd95c5f530707d12f464f4fe4cd1d90c35d37" [label="mkdir{path=/root}" shape="note"];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" [label="local://context" shape="ellipse"];
  "sha256:c171c00ef7e9f964aa4dfbbe51ee32df3fc4ca17329dd87b1918f895266603e8" [label="copy{src=/binaries/contiv-init, dest=/usr/bin/},copy{src=/binaries/contiv-agent, dest=/usr/bin/}" shape="note"];
  "sha256:981229cad1da5b5004dc2f3799345e7d44332d2d223c36ad52ad063648458569" [label="copy{src=/binaries/vpp.tar.gz, dest=/root/}" shape="note"];
  "sha256:7c07a2a986211fafee951d117e1a5193f482aadccb962a7da4f5ada89e8216fd" [label="/bin/sh -c dpkg -i vpp/vpp_*.deb vpp/vpp-plugin-core_*.deb vpp/vpp-plugin-dpdk_*.deb vpp/libvppinfra_*.deb  &&     rm -rf vpp" shape="box"];
  "sha256:e04ad76260813057199019b06bfabe0c08d0405de2de85ca0248570cbfed84a3" [label="copy{src=/binaries/vpptrace.sh, dest=/root/}" shape="note"];
  "sha256:19e7e3fd0c2928f1ab09fa4e51293bb9535817ea21891ba1aa5fc7c7676ab77c" [label="copy{src=/vswitch/vpp.conf, dest=/etc/vpp/contiv-vswitch.conf}" shape="note"];
  "sha256:9ef989038a3bd7ad2afb668d0d8d65043993de9ed2bbd9d0a990b22b20e9e0ae" [label="copy{src=/vswitch/govpp.conf, dest=/etc/govpp/govpp.conf}" shape="note"];
  "sha256:19dc072849ac68e76bd8cb73d7cc346855045bfee8452bd47d5b9c39c25e7c02" [label="copy{src=/vswitch/vppctl, dest=/usr/local/bin/vppctl}" shape="note"];
  "sha256:b231c39489d544b96b5bc54a98cafc8a82c56a71ac3a61bd1cf3e1a66bbe590b" [label="sha256:b231c39489d544b96b5bc54a98cafc8a82c56a71ac3a61bd1cf3e1a66bbe590b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:9d7d75cf1dded0763f1238b80eca959711054831ef535b6dc17e736473ac77c7" [label=""];
  "sha256:9d7d75cf1dded0763f1238b80eca959711054831ef535b6dc17e736473ac77c7" -> "sha256:f4110da0c876c6f04c5e28ae295fd95c5f530707d12f464f4fe4cd1d90c35d37" [label=""];
  "sha256:f4110da0c876c6f04c5e28ae295fd95c5f530707d12f464f4fe4cd1d90c35d37" -> "sha256:c171c00ef7e9f964aa4dfbbe51ee32df3fc4ca17329dd87b1918f895266603e8" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:c171c00ef7e9f964aa4dfbbe51ee32df3fc4ca17329dd87b1918f895266603e8" [label=""];
  "sha256:c171c00ef7e9f964aa4dfbbe51ee32df3fc4ca17329dd87b1918f895266603e8" -> "sha256:981229cad1da5b5004dc2f3799345e7d44332d2d223c36ad52ad063648458569" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:981229cad1da5b5004dc2f3799345e7d44332d2d223c36ad52ad063648458569" [label=""];
  "sha256:981229cad1da5b5004dc2f3799345e7d44332d2d223c36ad52ad063648458569" -> "sha256:7c07a2a986211fafee951d117e1a5193f482aadccb962a7da4f5ada89e8216fd" [label=""];
  "sha256:7c07a2a986211fafee951d117e1a5193f482aadccb962a7da4f5ada89e8216fd" -> "sha256:e04ad76260813057199019b06bfabe0c08d0405de2de85ca0248570cbfed84a3" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:e04ad76260813057199019b06bfabe0c08d0405de2de85ca0248570cbfed84a3" [label=""];
  "sha256:e04ad76260813057199019b06bfabe0c08d0405de2de85ca0248570cbfed84a3" -> "sha256:19e7e3fd0c2928f1ab09fa4e51293bb9535817ea21891ba1aa5fc7c7676ab77c" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:19e7e3fd0c2928f1ab09fa4e51293bb9535817ea21891ba1aa5fc7c7676ab77c" [label=""];
  "sha256:19e7e3fd0c2928f1ab09fa4e51293bb9535817ea21891ba1aa5fc7c7676ab77c" -> "sha256:9ef989038a3bd7ad2afb668d0d8d65043993de9ed2bbd9d0a990b22b20e9e0ae" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:9ef989038a3bd7ad2afb668d0d8d65043993de9ed2bbd9d0a990b22b20e9e0ae" [label=""];
  "sha256:9ef989038a3bd7ad2afb668d0d8d65043993de9ed2bbd9d0a990b22b20e9e0ae" -> "sha256:19dc072849ac68e76bd8cb73d7cc346855045bfee8452bd47d5b9c39c25e7c02" [label=""];
  "sha256:ece0d77019339b9b93ca3fc5489b5eff7e7b14f55aaa34e405a7c77657a7637a" -> "sha256:19dc072849ac68e76bd8cb73d7cc346855045bfee8452bd47d5b9c39c25e7c02" [label=""];
  "sha256:19dc072849ac68e76bd8cb73d7cc346855045bfee8452bd47d5b9c39c25e7c02" -> "sha256:b231c39489d544b96b5bc54a98cafc8a82c56a71ac3a61bd1cf3e1a66bbe590b" [label=""];
}

