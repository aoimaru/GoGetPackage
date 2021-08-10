[app/sources/372084740.Dockerfile]
digraph {
  "sha256:5ccdaffa369d6c619a094a1dff91a8d430a15eb9bf4dc10b3a00678ed05f7037" [label="docker-image://registry.code.em32.net/overviewer/minecraft-overviewer:base" shape="ellipse"];
  "sha256:64e603ea66ec3c959d925b18d3f33ee9c486c1664f33361b27dee7b3708784d7" [label="/bin/sh -c yum -y install mock" shape="box"];
  "sha256:b1db114d59a9aae50ffc22108ecc4378c7be66aea008589ba133eb45ba199444" [label="/bin/sh -c useradd --create-home --groups mock overviewer" shape="box"];
  "sha256:e8e641bf9dacf19b702228f62c3a5d360567a860bc03090f1d16e6377411ce41" [label="sha256:e8e641bf9dacf19b702228f62c3a5d360567a860bc03090f1d16e6377411ce41" shape="plaintext"];
  "sha256:5ccdaffa369d6c619a094a1dff91a8d430a15eb9bf4dc10b3a00678ed05f7037" -> "sha256:64e603ea66ec3c959d925b18d3f33ee9c486c1664f33361b27dee7b3708784d7" [label=""];
  "sha256:64e603ea66ec3c959d925b18d3f33ee9c486c1664f33361b27dee7b3708784d7" -> "sha256:b1db114d59a9aae50ffc22108ecc4378c7be66aea008589ba133eb45ba199444" [label=""];
  "sha256:b1db114d59a9aae50ffc22108ecc4378c7be66aea008589ba133eb45ba199444" -> "sha256:e8e641bf9dacf19b702228f62c3a5d360567a860bc03090f1d16e6377411ce41" [label=""];
}

