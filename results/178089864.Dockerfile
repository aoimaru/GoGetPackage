[app/sources/178089864.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:268265045346c5c7db8a70a7de80ba77266a148f4ebfff05727d85e610694a02" [label="mkdir{path=/opt/shutit-distro/postgresql}" shape="note"];
  "sha256:0e56e60e35e51195c043902ff65a5c929357ad869fd44c37b8a8b043f2c49ebc" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:041c314e3e3412fe5daabddf8c5a3792144831b6ef84830f4317824cef6f50b0" [label="sha256:041c314e3e3412fe5daabddf8c5a3792144831b6ef84830f4317824cef6f50b0" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:268265045346c5c7db8a70a7de80ba77266a148f4ebfff05727d85e610694a02" [label=""];
  "sha256:268265045346c5c7db8a70a7de80ba77266a148f4ebfff05727d85e610694a02" -> "sha256:0e56e60e35e51195c043902ff65a5c929357ad869fd44c37b8a8b043f2c49ebc" [label=""];
  "sha256:0e56e60e35e51195c043902ff65a5c929357ad869fd44c37b8a8b043f2c49ebc" -> "sha256:041c314e3e3412fe5daabddf8c5a3792144831b6ef84830f4317824cef6f50b0" [label=""];
}

