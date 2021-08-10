[app/sources/431482238.Dockerfile]
digraph {
  "sha256:e1e26b93964dcca3e1fcdb7874ea8a0ca6cdc773ba355f2dac8f47b0d7c1e2e6" [label="docker-image://docker.io/fedora/systemd-systemd:latest" shape="ellipse"];
  "sha256:100a8e00939bc34c7a98036f366b56dc6b5dc0dffc2c04a2c823f057690ed2a9" [label="/bin/sh -c dnf -y install \tlibvirt \tqemu \tqemu-kvm \tvirt-install \tpygobject3-base \t&& dnf clean all" shape="box"];
  "sha256:d1cc41d27ef143f805e2bc719bf18873ba30efadd35d1e011d6835fc24543f64" [label="/bin/sh -c systemctl enable libvirtd" shape="box"];
  "sha256:9914dd04ba7479d324a2d92d0065ea1394cfb1118a0728006227b991aa26f81c" [label="/bin/sh -c systemctl enable virtlockd" shape="box"];
  "sha256:257c7f6ee26474ad138f6ebbdc331d351ac295133325d27e369835e472c998ea" [label="/bin/sh -c mkdir -p /etc/libvirt/storage" shape="box"];
  "sha256:d65764f9efbab0b69287a768491836acb9a5a766e981669584902c4dcac1da2c" [label="local://context" shape="ellipse"];
  "sha256:bc4aaa1e9bb49a837b8a34a034dbebb133e90431e7a6394f7d724f348f50f83e" [label="copy{src=/pool-default.xml, dest=/etc/libvirt/storage/default.xml}" shape="note"];
  "sha256:06a3c069b90ac7997c52c01759a652f60720f5484f54ac48776d589be45c9961" [label="copy{src=/libvirtd.conf, dest=/etc/libvirt/libvirtd.conf}" shape="note"];
  "sha256:fef0b64c4d66d6feed62fb0be4368eff362d989b52867ebab1d00e485f0631ff" [label="/bin/sh -c echo 'LIBVIRTD_ARGS=\"--listen\"' >> /etc/sysconfig/libvirtd" shape="box"];
  "sha256:d08102366fb507d089ba3955267028c1c45cea3653c4f16c2804e93d3c26d690" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:da183cd5f2d511cad8ca59ae35846a3f68c6f594a2f6c90b4f6c0726f1ab80f3" [label="sha256:da183cd5f2d511cad8ca59ae35846a3f68c6f594a2f6c90b4f6c0726f1ab80f3" shape="plaintext"];
  "sha256:e1e26b93964dcca3e1fcdb7874ea8a0ca6cdc773ba355f2dac8f47b0d7c1e2e6" -> "sha256:100a8e00939bc34c7a98036f366b56dc6b5dc0dffc2c04a2c823f057690ed2a9" [label=""];
  "sha256:100a8e00939bc34c7a98036f366b56dc6b5dc0dffc2c04a2c823f057690ed2a9" -> "sha256:d1cc41d27ef143f805e2bc719bf18873ba30efadd35d1e011d6835fc24543f64" [label=""];
  "sha256:d1cc41d27ef143f805e2bc719bf18873ba30efadd35d1e011d6835fc24543f64" -> "sha256:9914dd04ba7479d324a2d92d0065ea1394cfb1118a0728006227b991aa26f81c" [label=""];
  "sha256:9914dd04ba7479d324a2d92d0065ea1394cfb1118a0728006227b991aa26f81c" -> "sha256:257c7f6ee26474ad138f6ebbdc331d351ac295133325d27e369835e472c998ea" [label=""];
  "sha256:257c7f6ee26474ad138f6ebbdc331d351ac295133325d27e369835e472c998ea" -> "sha256:bc4aaa1e9bb49a837b8a34a034dbebb133e90431e7a6394f7d724f348f50f83e" [label=""];
  "sha256:d65764f9efbab0b69287a768491836acb9a5a766e981669584902c4dcac1da2c" -> "sha256:bc4aaa1e9bb49a837b8a34a034dbebb133e90431e7a6394f7d724f348f50f83e" [label=""];
  "sha256:bc4aaa1e9bb49a837b8a34a034dbebb133e90431e7a6394f7d724f348f50f83e" -> "sha256:06a3c069b90ac7997c52c01759a652f60720f5484f54ac48776d589be45c9961" [label=""];
  "sha256:d65764f9efbab0b69287a768491836acb9a5a766e981669584902c4dcac1da2c" -> "sha256:06a3c069b90ac7997c52c01759a652f60720f5484f54ac48776d589be45c9961" [label=""];
  "sha256:06a3c069b90ac7997c52c01759a652f60720f5484f54ac48776d589be45c9961" -> "sha256:fef0b64c4d66d6feed62fb0be4368eff362d989b52867ebab1d00e485f0631ff" [label=""];
  "sha256:fef0b64c4d66d6feed62fb0be4368eff362d989b52867ebab1d00e485f0631ff" -> "sha256:d08102366fb507d089ba3955267028c1c45cea3653c4f16c2804e93d3c26d690" [label=""];
  "sha256:d65764f9efbab0b69287a768491836acb9a5a766e981669584902c4dcac1da2c" -> "sha256:d08102366fb507d089ba3955267028c1c45cea3653c4f16c2804e93d3c26d690" [label=""];
  "sha256:d08102366fb507d089ba3955267028c1c45cea3653c4f16c2804e93d3c26d690" -> "sha256:da183cd5f2d511cad8ca59ae35846a3f68c6f594a2f6c90b4f6c0726f1ab80f3" [label=""];
}

