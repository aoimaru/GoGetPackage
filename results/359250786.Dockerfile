[app/sources/359250786.Dockerfile]
digraph {
  "sha256:1e773f26e996f1e9a7869b92d9637db5ab64f8b1021dc2081479442215946bf1" [label="docker-image://docker.io/stimela/base:1.0.1" shape="ellipse"];
  "sha256:2cbb2e2239d84951f1185a4e6a061a10af7451b1d53e7b086b91158d4b7aec76" [label="/bin/sh -c docker-apt-install pybdsf python-astro-tigger-lsm" shape="box"];
  "sha256:ed482dc8709c07eebde1f105014380133032889b0949938237d32769622d4fdf" [label="/bin/sh -c pip install git+git://github.com/radio-astro/sourcery" shape="box"];
  "sha256:951814c1457feb174754f52d59a9ce2b406b96f4171f2438ba93ac8074e8453c" [label="sha256:951814c1457feb174754f52d59a9ce2b406b96f4171f2438ba93ac8074e8453c" shape="plaintext"];
  "sha256:1e773f26e996f1e9a7869b92d9637db5ab64f8b1021dc2081479442215946bf1" -> "sha256:2cbb2e2239d84951f1185a4e6a061a10af7451b1d53e7b086b91158d4b7aec76" [label=""];
  "sha256:2cbb2e2239d84951f1185a4e6a061a10af7451b1d53e7b086b91158d4b7aec76" -> "sha256:ed482dc8709c07eebde1f105014380133032889b0949938237d32769622d4fdf" [label=""];
  "sha256:ed482dc8709c07eebde1f105014380133032889b0949938237d32769622d4fdf" -> "sha256:951814c1457feb174754f52d59a9ce2b406b96f4171f2438ba93ac8074e8453c" [label=""];
}

