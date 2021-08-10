[app/sources/178776367.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:510ac9bd1aead089c3ce86f139e0ff3ff44801a62f9276e58630770c11d10266" [label="mkdir{path=/opt/shutit-distro/libxcb}" shape="note"];
  "sha256:2b418e4c415bc5bedb2ab4456b3d4e8ba5fd82fe385bb46def287f407b75e8ae" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:634db8d5927d2e4620f43f7d3d9fe0c7427a7cd190e7bced868a57ac5e22865a" [label="sha256:634db8d5927d2e4620f43f7d3d9fe0c7427a7cd190e7bced868a57ac5e22865a" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:510ac9bd1aead089c3ce86f139e0ff3ff44801a62f9276e58630770c11d10266" [label=""];
  "sha256:510ac9bd1aead089c3ce86f139e0ff3ff44801a62f9276e58630770c11d10266" -> "sha256:2b418e4c415bc5bedb2ab4456b3d4e8ba5fd82fe385bb46def287f407b75e8ae" [label=""];
  "sha256:2b418e4c415bc5bedb2ab4456b3d4e8ba5fd82fe385bb46def287f407b75e8ae" -> "sha256:634db8d5927d2e4620f43f7d3d9fe0c7427a7cd190e7bced868a57ac5e22865a" [label=""];
}

