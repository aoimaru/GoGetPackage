[app/sources/468086238.Dockerfile]
digraph {
  "sha256:deda957de1ed4a149afc06b366ef7d452f2b45944d21963faa8a1208d7770c03" [label="docker-image://registry.access.redhat.com/ubi8/ubi-minimal:latest" shape="ellipse"];
  "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" [label="mkdir{path=/work}" shape="note"];
  "sha256:2858bb596c95c16945659bd9454171013e893b8b4db9407a8a2dbbe048cbc5b4" [label="local://context" shape="ellipse"];
  "sha256:0ceb224617a5ea8a4e5c56ae92ca32c8f01b77ccc13b37f72f7f58e5508e42cb" [label="copy{src=/target/*-runner, dest=/work/application}" shape="note"];
  "sha256:e215069f4dc2667e0d537aa4d16561dcdba884c765c7942b9230ee5ad8fa85be" [label="/bin/sh -c chmod 775 /work" shape="box"];
  "sha256:4659100351cd31c0fcb593ad80444f37e117dbf299ca6536db26f6f705dc57b6" [label="sha256:4659100351cd31c0fcb593ad80444f37e117dbf299ca6536db26f6f705dc57b6" shape="plaintext"];
  "sha256:deda957de1ed4a149afc06b366ef7d452f2b45944d21963faa8a1208d7770c03" -> "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" [label=""];
  "sha256:7ddb2017a643576c9450a767fbca3636c040a1ee7b63238fa499ffb58677f09b" -> "sha256:0ceb224617a5ea8a4e5c56ae92ca32c8f01b77ccc13b37f72f7f58e5508e42cb" [label=""];
  "sha256:2858bb596c95c16945659bd9454171013e893b8b4db9407a8a2dbbe048cbc5b4" -> "sha256:0ceb224617a5ea8a4e5c56ae92ca32c8f01b77ccc13b37f72f7f58e5508e42cb" [label=""];
  "sha256:0ceb224617a5ea8a4e5c56ae92ca32c8f01b77ccc13b37f72f7f58e5508e42cb" -> "sha256:e215069f4dc2667e0d537aa4d16561dcdba884c765c7942b9230ee5ad8fa85be" [label=""];
  "sha256:e215069f4dc2667e0d537aa4d16561dcdba884c765c7942b9230ee5ad8fa85be" -> "sha256:4659100351cd31c0fcb593ad80444f37e117dbf299ca6536db26f6f705dc57b6" [label=""];
}

