[app/sources/202852036.Dockerfile]
digraph {
  "sha256:5fa4bae75b15277f8d38a9e0730af41fb29b7c071b95b7add2c473173e4838c6" [label="docker-image://docker.io/library/python:3.3@sha256:f62f74c5a17a617892c732f52d7000e4cdbef8212455b603dd5da4ab3394e08c" shape="ellipse"];
  "sha256:2631a3aa3ab2a4cf3288220f4f7c36aad0ff232d43004af93b55d60d98e70329" [label="/bin/sh -c mkdir /doc" shape="box"];
  "sha256:f425894e4d7eb5b25b09562f85d5d137c2c7792b581ac5a10a9b63ae028b9f85" [label="local://context" shape="ellipse"];
  "sha256:01fae4b10832606e2b83899a5137483f64ea7f2908bfade7b0be53d96e61e4b3" [label="copy{src=/, dest=/doc}" shape="note"];
  "sha256:58b0325429eb03666d3fbb80b188fd1c748f95d96352968c131e2acbd1fd8d08" [label="mkdir{path=/doc}" shape="note"];
  "sha256:994d1bb56be940316019ddfb23e980b9f253913729d694b5a61343feea74ede9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:29c10050737b839b5c94b5306ca65b07e1c7463f07bf691e5795652fd2d42c5b" [label="/bin/sh -c apt-get install -y texlive" shape="box"];
  "sha256:4dec3a6143fb96cf43b891f4307e603533c11fbd84667438990d4d7daa1481c1" [label="/bin/sh -c apt-get install -y texlive-xetex" shape="box"];
  "sha256:5528cb6256387e9aa088f4497d8fe231726368c1c347de327e9d8a8eaee4ce78" [label="/bin/sh -c apt-get install -y texlive-lang-cjk" shape="box"];
  "sha256:e2db76c8926ce03a1239801529289bcd8be9abb71ce1d591ce56a065580e7d64" [label="/bin/sh -c apt-get install -y texlive-latex-recommended" shape="box"];
  "sha256:1b30b5786a67065aa14c4e4e914bd9e16f6918137f5bf3cde2f7c9bff31424ea" [label="/bin/sh -c apt-get install -y texlive-latex-extra" shape="box"];
  "sha256:72b41eaa53bb598029cb582496b3e1990eff7edf3bc7758f3b6486eaab0f16ac" [label="/bin/sh -c apt-get install -y texlive-fonts-recommended" shape="box"];
  "sha256:0bfa860fde033ef0a6b1f6b85068003ed28de2a11d621d9279e6087566be91c9" [label="/bin/sh -c apt-get install -y texlive-base" shape="box"];
  "sha256:da11d01488bd5f9c4108a5f18906279546027cdf0fb70d03d98ac32f576683b5" [label="/bin/sh -c apt-get install -y fonts-wqy-zenhei" shape="box"];
  "sha256:2ca1224d72cca72feb451f7f5c47d785db4056e605ffd341b915ed1cbcced55c" [label="/bin/sh -c apt-get remove -y         texlive-fonts-recommended-doc         texlive-latex-base-doc         texlive-latex-extra-doc         texlive-latex-recommended-doc         texlive-pictures-doc         texlive-pstricks-doc     && apt-get clean" shape="box"];
  "sha256:f8b53e99466821b590a7dc9afba57b9e6c1bf244547ce2949a5702f9cc02a358" [label="/bin/sh -c pip install     sphinx     sphinx_rtd_theme     sphinx_bootstrap_theme     alabaster" shape="box"];
  "sha256:a17421d5490e66c0efa61f83539bf6b33d8a704ae4dc9233f71e4c52eed88f51" [label="sha256:a17421d5490e66c0efa61f83539bf6b33d8a704ae4dc9233f71e4c52eed88f51" shape="plaintext"];
  "sha256:5fa4bae75b15277f8d38a9e0730af41fb29b7c071b95b7add2c473173e4838c6" -> "sha256:2631a3aa3ab2a4cf3288220f4f7c36aad0ff232d43004af93b55d60d98e70329" [label=""];
  "sha256:2631a3aa3ab2a4cf3288220f4f7c36aad0ff232d43004af93b55d60d98e70329" -> "sha256:01fae4b10832606e2b83899a5137483f64ea7f2908bfade7b0be53d96e61e4b3" [label=""];
  "sha256:f425894e4d7eb5b25b09562f85d5d137c2c7792b581ac5a10a9b63ae028b9f85" -> "sha256:01fae4b10832606e2b83899a5137483f64ea7f2908bfade7b0be53d96e61e4b3" [label=""];
  "sha256:01fae4b10832606e2b83899a5137483f64ea7f2908bfade7b0be53d96e61e4b3" -> "sha256:58b0325429eb03666d3fbb80b188fd1c748f95d96352968c131e2acbd1fd8d08" [label=""];
  "sha256:58b0325429eb03666d3fbb80b188fd1c748f95d96352968c131e2acbd1fd8d08" -> "sha256:994d1bb56be940316019ddfb23e980b9f253913729d694b5a61343feea74ede9" [label=""];
  "sha256:994d1bb56be940316019ddfb23e980b9f253913729d694b5a61343feea74ede9" -> "sha256:29c10050737b839b5c94b5306ca65b07e1c7463f07bf691e5795652fd2d42c5b" [label=""];
  "sha256:29c10050737b839b5c94b5306ca65b07e1c7463f07bf691e5795652fd2d42c5b" -> "sha256:4dec3a6143fb96cf43b891f4307e603533c11fbd84667438990d4d7daa1481c1" [label=""];
  "sha256:4dec3a6143fb96cf43b891f4307e603533c11fbd84667438990d4d7daa1481c1" -> "sha256:5528cb6256387e9aa088f4497d8fe231726368c1c347de327e9d8a8eaee4ce78" [label=""];
  "sha256:5528cb6256387e9aa088f4497d8fe231726368c1c347de327e9d8a8eaee4ce78" -> "sha256:e2db76c8926ce03a1239801529289bcd8be9abb71ce1d591ce56a065580e7d64" [label=""];
  "sha256:e2db76c8926ce03a1239801529289bcd8be9abb71ce1d591ce56a065580e7d64" -> "sha256:1b30b5786a67065aa14c4e4e914bd9e16f6918137f5bf3cde2f7c9bff31424ea" [label=""];
  "sha256:1b30b5786a67065aa14c4e4e914bd9e16f6918137f5bf3cde2f7c9bff31424ea" -> "sha256:72b41eaa53bb598029cb582496b3e1990eff7edf3bc7758f3b6486eaab0f16ac" [label=""];
  "sha256:72b41eaa53bb598029cb582496b3e1990eff7edf3bc7758f3b6486eaab0f16ac" -> "sha256:0bfa860fde033ef0a6b1f6b85068003ed28de2a11d621d9279e6087566be91c9" [label=""];
  "sha256:0bfa860fde033ef0a6b1f6b85068003ed28de2a11d621d9279e6087566be91c9" -> "sha256:da11d01488bd5f9c4108a5f18906279546027cdf0fb70d03d98ac32f576683b5" [label=""];
  "sha256:da11d01488bd5f9c4108a5f18906279546027cdf0fb70d03d98ac32f576683b5" -> "sha256:2ca1224d72cca72feb451f7f5c47d785db4056e605ffd341b915ed1cbcced55c" [label=""];
  "sha256:2ca1224d72cca72feb451f7f5c47d785db4056e605ffd341b915ed1cbcced55c" -> "sha256:f8b53e99466821b590a7dc9afba57b9e6c1bf244547ce2949a5702f9cc02a358" [label=""];
  "sha256:f8b53e99466821b590a7dc9afba57b9e6c1bf244547ce2949a5702f9cc02a358" -> "sha256:a17421d5490e66c0efa61f83539bf6b33d8a704ae4dc9233f71e4c52eed88f51" [label=""];
}

