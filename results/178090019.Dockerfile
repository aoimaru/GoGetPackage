[app/sources/178090019.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:87d54dab5b60fb341fa899c9b53800f0a049f077d280d57529190294387b1a49" [label="mkdir{path=/opt/shutit-distro/sharutils}" shape="note"];
  "sha256:4890ff007a3f1db42f3da05821c57985203ef387e14fcae5cf080c6497c98ee0" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:a08c327d53dae689639c37ed8f2826e545e843fab4a0f35247a96dafe1291443" [label="sha256:a08c327d53dae689639c37ed8f2826e545e843fab4a0f35247a96dafe1291443" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:87d54dab5b60fb341fa899c9b53800f0a049f077d280d57529190294387b1a49" [label=""];
  "sha256:87d54dab5b60fb341fa899c9b53800f0a049f077d280d57529190294387b1a49" -> "sha256:4890ff007a3f1db42f3da05821c57985203ef387e14fcae5cf080c6497c98ee0" [label=""];
  "sha256:4890ff007a3f1db42f3da05821c57985203ef387e14fcae5cf080c6497c98ee0" -> "sha256:a08c327d53dae689639c37ed8f2826e545e843fab4a0f35247a96dafe1291443" [label=""];
}

