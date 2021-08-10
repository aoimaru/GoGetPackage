[app/sources/178238089.Dockerfile]
digraph {
  "sha256:068f2f4f8151c662ba8daa8df94cce242e599703778e6f96af328117466e489c" [label="docker-image://docker.io/oddlid/lobsterperl:latest" shape="ellipse"];
  "sha256:0b83c5c06d2727b7c2ff7d8b16ae2ba46a50c4b6a10f61c4032b822b81e7493c" [label="/bin/sh -c apt-get -qq update \t\t&& \t\tapt-get -y --no-install-recommends install \t\tlibexpat1-dev \t\tlibncurses5-dev \t\tlibreadline6-dev \t\tlibxml2-dev \t\t&& \t\tapt-get clean autoclean \t\t&& \t\tapt-get autoremove -y \t\t&& \t\trm -rf /var/lib/{apt,dpkg,cache,log}/" shape="box"];
  "sha256:f15a5cfa2905428cadb3d2a2de497e77164aaf302c5c241bc049c87f545462d3" [label="/bin/sh -c cpanm Term::Size" shape="box"];
  "sha256:29246527d0fdd75650015fd39d9c11abefaf2586adb1a5c4a2c8d9aa1c7f1daf" [label="/bin/sh -c cpanm --force Term::ReadKey" shape="box"];
  "sha256:8b070600d6d7fc3f5dbdb075e62451331d5972850cfee5910516fca8328a27c5" [label="/bin/sh -c cpanm JMX::Jmx4Perl" shape="box"];
  "sha256:a881c024a715ebf802e96a450cc419a9d8f216ea0fdb2d92e9ca8139949624c9" [label="sha256:a881c024a715ebf802e96a450cc419a9d8f216ea0fdb2d92e9ca8139949624c9" shape="plaintext"];
  "sha256:068f2f4f8151c662ba8daa8df94cce242e599703778e6f96af328117466e489c" -> "sha256:0b83c5c06d2727b7c2ff7d8b16ae2ba46a50c4b6a10f61c4032b822b81e7493c" [label=""];
  "sha256:0b83c5c06d2727b7c2ff7d8b16ae2ba46a50c4b6a10f61c4032b822b81e7493c" -> "sha256:f15a5cfa2905428cadb3d2a2de497e77164aaf302c5c241bc049c87f545462d3" [label=""];
  "sha256:f15a5cfa2905428cadb3d2a2de497e77164aaf302c5c241bc049c87f545462d3" -> "sha256:29246527d0fdd75650015fd39d9c11abefaf2586adb1a5c4a2c8d9aa1c7f1daf" [label=""];
  "sha256:29246527d0fdd75650015fd39d9c11abefaf2586adb1a5c4a2c8d9aa1c7f1daf" -> "sha256:8b070600d6d7fc3f5dbdb075e62451331d5972850cfee5910516fca8328a27c5" [label=""];
  "sha256:8b070600d6d7fc3f5dbdb075e62451331d5972850cfee5910516fca8328a27c5" -> "sha256:a881c024a715ebf802e96a450cc419a9d8f216ea0fdb2d92e9ca8139949624c9" [label=""];
}

