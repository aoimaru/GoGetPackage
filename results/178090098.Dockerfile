[app/sources/178090098.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:4fed7a4619e0c258356685e34aade633f03e7484600ed374993a2905f52ff35f" [label="mkdir{path=/opt/shutit-distro/thrift}" shape="note"];
  "sha256:e73238339abbd16d481ae19e2c122dbbb907e6302f6d888f5225e30b88523165" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:01a26b42bc698117ff362d0f0c00660bdc57460761927ed2857947e7fa928a8d" [label="sha256:01a26b42bc698117ff362d0f0c00660bdc57460761927ed2857947e7fa928a8d" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:4fed7a4619e0c258356685e34aade633f03e7484600ed374993a2905f52ff35f" [label=""];
  "sha256:4fed7a4619e0c258356685e34aade633f03e7484600ed374993a2905f52ff35f" -> "sha256:e73238339abbd16d481ae19e2c122dbbb907e6302f6d888f5225e30b88523165" [label=""];
  "sha256:e73238339abbd16d481ae19e2c122dbbb907e6302f6d888f5225e30b88523165" -> "sha256:01a26b42bc698117ff362d0f0c00660bdc57460761927ed2857947e7fa928a8d" [label=""];
}

