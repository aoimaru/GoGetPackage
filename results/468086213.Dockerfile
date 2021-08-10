[app/sources/468086213.Dockerfile]
digraph {
  "sha256:9f98aabe4765a7a01cc2551b18cfcdaee2719c34f7c4431a68bb47ddd72d1ff3" [label="local://context" shape="ellipse"];
  "sha256:deda957de1ed4a149afc06b366ef7d452f2b45944d21963faa8a1208d7770c03" [label="docker-image://registry.access.redhat.com/ubi8/ubi-minimal:latest" shape="ellipse"];
  "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" [label="mkdir{path=/work}" shape="note"];
  "sha256:642d14c8dc948bbe4c27c266a9fd25eaf6d15a5384dc8373024611f4212d6178" [label="copy{src=/target/*-runner, dest=/work/application}" shape="note"];
  "sha256:dfd26877a494451b1549c573cb0e6e2fdb643dfdbc71aca262c3723a1e075052" [label="/bin/sh -c chmod 775 /work" shape="box"];
  "sha256:8dd28fb01ac09e6d97546515eb9392bd4b0df0f3fe507691474a5a8e006e7426" [label="sha256:8dd28fb01ac09e6d97546515eb9392bd4b0df0f3fe507691474a5a8e006e7426" shape="plaintext"];
  "sha256:deda957de1ed4a149afc06b366ef7d452f2b45944d21963faa8a1208d7770c03" -> "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" [label=""];
  "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" -> "sha256:642d14c8dc948bbe4c27c266a9fd25eaf6d15a5384dc8373024611f4212d6178" [label=""];
  "sha256:9f98aabe4765a7a01cc2551b18cfcdaee2719c34f7c4431a68bb47ddd72d1ff3" -> "sha256:642d14c8dc948bbe4c27c266a9fd25eaf6d15a5384dc8373024611f4212d6178" [label=""];
  "sha256:642d14c8dc948bbe4c27c266a9fd25eaf6d15a5384dc8373024611f4212d6178" -> "sha256:dfd26877a494451b1549c573cb0e6e2fdb643dfdbc71aca262c3723a1e075052" [label=""];
  "sha256:dfd26877a494451b1549c573cb0e6e2fdb643dfdbc71aca262c3723a1e075052" -> "sha256:8dd28fb01ac09e6d97546515eb9392bd4b0df0f3fe507691474a5a8e006e7426" [label=""];
}

