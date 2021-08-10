[app/sources/138974401.Dockerfile]
digraph {
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:809faa63765fdd3c391f02bcbe21ec5770ddc941883a723d57558743f6a29697" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:96eca1c932c71bc377bc7604e094c5a15693e145e35b05114596a6c60f466010" [label="/bin/sh -c dnf -y install \tdocbook-style-xsl \tdocbook-utils \tfontconfig-devel \tfreetype-devel \tgdk-pixbuf2-devel \tgettext \tglib2-devel \tgobject-introspection-devel \tgperf \tgtk3-devel \tgtk-doc \tjson-glib-devel \tlibarchive-devel \tlibsoup-devel \tlibstemmer-devel \tlibuuid-devel \tlibxslt \tlibyaml-devel \tmeson \tpango-devel \tredhat-rpm-config \trpm-devel \tsqlite-devel" shape="box"];
  "sha256:7f95682489b02cccaf69742a1b90548bdd6ad0f565f853a036f6ed915c6df03d" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:59ae6da5e991aba0c69eefd8a6c0594b6f516369a45f48b1a01d29ca230b751f" [label="mkdir{path=/build}" shape="note"];
  "sha256:bc8933b615e510ad3953c455c5c881b66e4b103e7b2e872ca581ca70428a9342" [label="sha256:bc8933b615e510ad3953c455c5c881b66e4b103e7b2e872ca581ca70428a9342" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:809faa63765fdd3c391f02bcbe21ec5770ddc941883a723d57558743f6a29697" [label=""];
  "sha256:809faa63765fdd3c391f02bcbe21ec5770ddc941883a723d57558743f6a29697" -> "sha256:96eca1c932c71bc377bc7604e094c5a15693e145e35b05114596a6c60f466010" [label=""];
  "sha256:96eca1c932c71bc377bc7604e094c5a15693e145e35b05114596a6c60f466010" -> "sha256:7f95682489b02cccaf69742a1b90548bdd6ad0f565f853a036f6ed915c6df03d" [label=""];
  "sha256:7f95682489b02cccaf69742a1b90548bdd6ad0f565f853a036f6ed915c6df03d" -> "sha256:59ae6da5e991aba0c69eefd8a6c0594b6f516369a45f48b1a01d29ca230b751f" [label=""];
  "sha256:59ae6da5e991aba0c69eefd8a6c0594b6f516369a45f48b1a01d29ca230b751f" -> "sha256:bc8933b615e510ad3953c455c5c881b66e4b103e7b2e872ca581ca70428a9342" [label=""];
}

