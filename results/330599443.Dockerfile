[app/sources/330599443.Dockerfile]
digraph {
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" [label="docker-image://docker.io/library/busybox:glibc" shape="ellipse"];
  "sha256:2550a64e842cf71164de0e72d4356d0f20afbe455a69afc437ab67b810fc6d8b" [label="/bin/sh -c set -ex; ln -s /lib/libc.so.6 /lib/libc.so" shape="box"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c06faa029e4d02be86dbb5bd756ceec52a47f6eaeaa1739cc42d30a21436b0e2" [label="/bin/sh -c set -ex     && apt update     && apt install -y gpg     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF     && echo \"deb http://download.mono-project.com/repo/debian stretch main\" > /etc/apt/sources.list.d/mono-official.list     && apt-get update     && apt install -y --no-install-recommends mono-devel nuget msbuild fsharp" shape="box"];
  "sha256:26e28d236ed5494c7152df5bea6511be22016e7c35ed55dfaedb1b0f1f495645" [label="local://context" shape="ellipse"];
  "sha256:b8d001d2e827ad7d0e2a17347788307f2bad11bebdca45744c1e308278321594" [label="copy{src=/, dest=/Build/SigFoxReceiver/}" shape="note"];
  "sha256:91720aaa67b9b5452f2b6eb198c01b63a6d57bcef735a882fbbd840125a4d2ba" [label="mkdir{path=/Build/SigFoxReceiver}" shape="note"];
  "sha256:686b4c3a666079b8a27cceddad1250d32be024392eb657fb3cb2c8d5d2e1434b" [label="/bin/sh -c set -ex     && nuget restore -PackagesDirectory ../packages -NonInteractive" shape="box"];
  "sha256:6a6ce0e7223efa7b37caabd338d3d3e9b480f9c522b1a87d678b2e6260fe2fbb" [label="/bin/sh -c set -ex     && msbuild /p:Configuration=${CONFIGURATION}" shape="box"];
  "sha256:7b8d2d86528c58f08d7ecf271b3b91b72eaeea0f5e52102513d9a45138ae7ba6" [label="mkdir{path=/Build/SigFoxReceiver/bin/Release}" shape="note"];
  "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" [label="/bin/sh -c set -ex     && mkbundle -o ${PROJECT} --simple ${PROJECT}.exe" shape="box"];
  "sha256:246da20a351a6d9650892c5fa98bea265b108a6fce845815eebabdab1918a37c" [label="copy{src=/usr/lib/x86_64-linux-gnu/librt*, dest=/lib/}" shape="note"];
  "sha256:ae039f87f7bfc834e50e616ae0d267d2a9f2aff21401cee9fb0823310dc67da0" [label="copy{src=/usr/lib/x86_64-linux-gnu/libdl*, dest=/lib/}" shape="note"];
  "sha256:88f94e6a56daebcd76b768c861a608342cda6123dd5c234c3bbb7275669ed4d5" [label="copy{src=/usr/lib/x86_64-linux-gnu/libgcc*, dest=/lib/}" shape="note"];
  "sha256:447a306ba6b9fa65c6c310d25421a50a95bced2c8335fcd43584351f14b82175" [label="copy{src=/Build/SigFoxReceiver/bin/Release/SigFoxReceiver, dest=/opt/SigFoxReceiver/bin/}" shape="note"];
  "sha256:a9c2d9f1869997095a65c89971ef561f55cca7ba9b9d594f8477afbbde74ba5e" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:41f9b1c96dbc029b6361ecc094657191366924dc821b67b0072a6676ba097ed5" [label="/bin/sh -c ln -s /usr/local/bin/docker-entrypoint.sh /" shape="box"];
  "sha256:c56871b28567dcbd0c7198b05facfcf1ca7223ac9105995e8a2dd70ab1a3c66c" [label="sha256:c56871b28567dcbd0c7198b05facfcf1ca7223ac9105995e8a2dd70ab1a3c66c" shape="plaintext"];
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" -> "sha256:2550a64e842cf71164de0e72d4356d0f20afbe455a69afc437ab67b810fc6d8b" [label=""];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:c06faa029e4d02be86dbb5bd756ceec52a47f6eaeaa1739cc42d30a21436b0e2" [label=""];
  "sha256:c06faa029e4d02be86dbb5bd756ceec52a47f6eaeaa1739cc42d30a21436b0e2" -> "sha256:b8d001d2e827ad7d0e2a17347788307f2bad11bebdca45744c1e308278321594" [label=""];
  "sha256:26e28d236ed5494c7152df5bea6511be22016e7c35ed55dfaedb1b0f1f495645" -> "sha256:b8d001d2e827ad7d0e2a17347788307f2bad11bebdca45744c1e308278321594" [label=""];
  "sha256:b8d001d2e827ad7d0e2a17347788307f2bad11bebdca45744c1e308278321594" -> "sha256:91720aaa67b9b5452f2b6eb198c01b63a6d57bcef735a882fbbd840125a4d2ba" [label=""];
  "sha256:91720aaa67b9b5452f2b6eb198c01b63a6d57bcef735a882fbbd840125a4d2ba" -> "sha256:686b4c3a666079b8a27cceddad1250d32be024392eb657fb3cb2c8d5d2e1434b" [label=""];
  "sha256:686b4c3a666079b8a27cceddad1250d32be024392eb657fb3cb2c8d5d2e1434b" -> "sha256:6a6ce0e7223efa7b37caabd338d3d3e9b480f9c522b1a87d678b2e6260fe2fbb" [label=""];
  "sha256:6a6ce0e7223efa7b37caabd338d3d3e9b480f9c522b1a87d678b2e6260fe2fbb" -> "sha256:7b8d2d86528c58f08d7ecf271b3b91b72eaeea0f5e52102513d9a45138ae7ba6" [label=""];
  "sha256:7b8d2d86528c58f08d7ecf271b3b91b72eaeea0f5e52102513d9a45138ae7ba6" -> "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" [label=""];
  "sha256:2550a64e842cf71164de0e72d4356d0f20afbe455a69afc437ab67b810fc6d8b" -> "sha256:246da20a351a6d9650892c5fa98bea265b108a6fce845815eebabdab1918a37c" [label=""];
  "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" -> "sha256:246da20a351a6d9650892c5fa98bea265b108a6fce845815eebabdab1918a37c" [label=""];
  "sha256:246da20a351a6d9650892c5fa98bea265b108a6fce845815eebabdab1918a37c" -> "sha256:ae039f87f7bfc834e50e616ae0d267d2a9f2aff21401cee9fb0823310dc67da0" [label=""];
  "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" -> "sha256:ae039f87f7bfc834e50e616ae0d267d2a9f2aff21401cee9fb0823310dc67da0" [label=""];
  "sha256:ae039f87f7bfc834e50e616ae0d267d2a9f2aff21401cee9fb0823310dc67da0" -> "sha256:88f94e6a56daebcd76b768c861a608342cda6123dd5c234c3bbb7275669ed4d5" [label=""];
  "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" -> "sha256:88f94e6a56daebcd76b768c861a608342cda6123dd5c234c3bbb7275669ed4d5" [label=""];
  "sha256:88f94e6a56daebcd76b768c861a608342cda6123dd5c234c3bbb7275669ed4d5" -> "sha256:447a306ba6b9fa65c6c310d25421a50a95bced2c8335fcd43584351f14b82175" [label=""];
  "sha256:23db0045ee9497a5f56a3212c6354618502e8bdeccb91cac00187d5f17c2d1f9" -> "sha256:447a306ba6b9fa65c6c310d25421a50a95bced2c8335fcd43584351f14b82175" [label=""];
  "sha256:447a306ba6b9fa65c6c310d25421a50a95bced2c8335fcd43584351f14b82175" -> "sha256:a9c2d9f1869997095a65c89971ef561f55cca7ba9b9d594f8477afbbde74ba5e" [label=""];
  "sha256:26e28d236ed5494c7152df5bea6511be22016e7c35ed55dfaedb1b0f1f495645" -> "sha256:a9c2d9f1869997095a65c89971ef561f55cca7ba9b9d594f8477afbbde74ba5e" [label=""];
  "sha256:a9c2d9f1869997095a65c89971ef561f55cca7ba9b9d594f8477afbbde74ba5e" -> "sha256:41f9b1c96dbc029b6361ecc094657191366924dc821b67b0072a6676ba097ed5" [label=""];
  "sha256:41f9b1c96dbc029b6361ecc094657191366924dc821b67b0072a6676ba097ed5" -> "sha256:c56871b28567dcbd0c7198b05facfcf1ca7223ac9105995e8a2dd70ab1a3c66c" [label=""];
}

