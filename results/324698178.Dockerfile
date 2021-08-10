[app/sources/324698178.Dockerfile]
digraph {
  "sha256:cb5a7197b36e38a094e99cff11d7d01c98be0108b949e6aef53898e7099b00d7" [label="docker-image://docker.io/library/rust:1.30.1-slim-stretch" shape="ellipse"];
  "sha256:f07d919c1e21b3bcd2574376540df7a632c494834c7c55e04138126f4c26d439" [label="mkdir{path=/code}" shape="note"];
  "sha256:3c8eb19cad5565c7a20050ad1a93947e632bbc34508e6a2ba676305578f5f130" [label="local://context" shape="ellipse"];
  "sha256:08ae7eba4c52a822f367ad7e02e7e13bd9fcfc46b81948521fabf9c8c5dd0cb1" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:0ede949f8291c2e050c866727e3fd0b0a2650f6dc5c1e985bacdf65750e9fcb9" [label="/bin/sh -c cp flatc_debian_stretch flatc" shape="box"];
  "sha256:6fe40b5c4f19f175d13bb02ad4dc96ba6eb807708f86c740311152608bd7a4b3" [label="mkdir{path=/code/tests}" shape="note"];
  "sha256:fa507c8bf9337d50b914edb102d295e3fcd86739acf04066e46f410e2cdf482f" [label="/bin/sh -c rustc --version" shape="box"];
  "sha256:66a82315154e7c113bc73af6d09e48b2a021d460c7824cacfa4b5f0e837fc997" [label="/bin/sh -c ./RustTest.sh" shape="box"];
  "sha256:e91c07929a352334c7562e00c3171d11ece9575471a4168d14ece1c0dae79938" [label="sha256:e91c07929a352334c7562e00c3171d11ece9575471a4168d14ece1c0dae79938" shape="plaintext"];
  "sha256:cb5a7197b36e38a094e99cff11d7d01c98be0108b949e6aef53898e7099b00d7" -> "sha256:f07d919c1e21b3bcd2574376540df7a632c494834c7c55e04138126f4c26d439" [label=""];
  "sha256:f07d919c1e21b3bcd2574376540df7a632c494834c7c55e04138126f4c26d439" -> "sha256:08ae7eba4c52a822f367ad7e02e7e13bd9fcfc46b81948521fabf9c8c5dd0cb1" [label=""];
  "sha256:3c8eb19cad5565c7a20050ad1a93947e632bbc34508e6a2ba676305578f5f130" -> "sha256:08ae7eba4c52a822f367ad7e02e7e13bd9fcfc46b81948521fabf9c8c5dd0cb1" [label=""];
  "sha256:08ae7eba4c52a822f367ad7e02e7e13bd9fcfc46b81948521fabf9c8c5dd0cb1" -> "sha256:0ede949f8291c2e050c866727e3fd0b0a2650f6dc5c1e985bacdf65750e9fcb9" [label=""];
  "sha256:0ede949f8291c2e050c866727e3fd0b0a2650f6dc5c1e985bacdf65750e9fcb9" -> "sha256:6fe40b5c4f19f175d13bb02ad4dc96ba6eb807708f86c740311152608bd7a4b3" [label=""];
  "sha256:6fe40b5c4f19f175d13bb02ad4dc96ba6eb807708f86c740311152608bd7a4b3" -> "sha256:fa507c8bf9337d50b914edb102d295e3fcd86739acf04066e46f410e2cdf482f" [label=""];
  "sha256:fa507c8bf9337d50b914edb102d295e3fcd86739acf04066e46f410e2cdf482f" -> "sha256:66a82315154e7c113bc73af6d09e48b2a021d460c7824cacfa4b5f0e837fc997" [label=""];
  "sha256:66a82315154e7c113bc73af6d09e48b2a021d460c7824cacfa4b5f0e837fc997" -> "sha256:e91c07929a352334c7562e00c3171d11ece9575471a4168d14ece1c0dae79938" [label=""];
}

