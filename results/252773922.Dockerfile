[app/sources/252773922.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:7e81a5a5220075882b5b416cc4553463c8d26eb17f8c76857366242e9dcd8213" [label="local://context" shape="ellipse"];
  "sha256:9847e194ef1cad755105b6091ec577d0fddcad98427ed855bc9ab8cdb400da6a" [label="copy{src=/phusion_trusty/installer, dest=/opt/icinga2-installer}" shape="note"];
  "sha256:a4c9caeb6b307c34075260045dc178f569ea69c28ed08bc6f8fbd722b84a4671" [label="/bin/sh -c /opt/incinga2-installer/packages.sh" shape="box"];
  "sha256:bb5a783aa7d547d22f9e00cd601f85003725ce6057c3e8ab45a1aa8351250feb" [label="copy{src=/phusion_trusty/setup, dest=/opt/icinga2-setup}" shape="note"];
  "sha256:0d771e9b38a1e91e75912573c91286400899987e16caef2224aa09eb1f72f3c6" [label="/bin/sh -c /opt/icinga2-setup/setup.sh" shape="box"];
  "sha256:5cf3d718fc5f01cb7cd8c71980f6ee23170e51f7f0883a909bd7c3753d13723a" [label="sha256:5cf3d718fc5f01cb7cd8c71980f6ee23170e51f7f0883a909bd7c3753d13723a" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:9847e194ef1cad755105b6091ec577d0fddcad98427ed855bc9ab8cdb400da6a" [label=""];
  "sha256:7e81a5a5220075882b5b416cc4553463c8d26eb17f8c76857366242e9dcd8213" -> "sha256:9847e194ef1cad755105b6091ec577d0fddcad98427ed855bc9ab8cdb400da6a" [label=""];
  "sha256:9847e194ef1cad755105b6091ec577d0fddcad98427ed855bc9ab8cdb400da6a" -> "sha256:a4c9caeb6b307c34075260045dc178f569ea69c28ed08bc6f8fbd722b84a4671" [label=""];
  "sha256:a4c9caeb6b307c34075260045dc178f569ea69c28ed08bc6f8fbd722b84a4671" -> "sha256:bb5a783aa7d547d22f9e00cd601f85003725ce6057c3e8ab45a1aa8351250feb" [label=""];
  "sha256:7e81a5a5220075882b5b416cc4553463c8d26eb17f8c76857366242e9dcd8213" -> "sha256:bb5a783aa7d547d22f9e00cd601f85003725ce6057c3e8ab45a1aa8351250feb" [label=""];
  "sha256:bb5a783aa7d547d22f9e00cd601f85003725ce6057c3e8ab45a1aa8351250feb" -> "sha256:0d771e9b38a1e91e75912573c91286400899987e16caef2224aa09eb1f72f3c6" [label=""];
  "sha256:0d771e9b38a1e91e75912573c91286400899987e16caef2224aa09eb1f72f3c6" -> "sha256:5cf3d718fc5f01cb7cd8c71980f6ee23170e51f7f0883a909bd7c3753d13723a" [label=""];
}

