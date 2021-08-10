[app/sources/198360681.Dockerfile]
digraph {
  "sha256:4fa77b05590bfe96c9ec38710789f1ae17204baca31b1f23e25497661ddaa019" [label="docker-image://docker.io/ocaml/opam:alpine-3.4_ocaml-4.03.0@sha256:8a5b91c67bb2eac9f323e60f604f71d43791271edf2fdfb90e3ae05ef8da0771" shape="ellipse"];
  "sha256:7d665d883b41fcf32d02bdc7a600a89a09123e68fa088f4f254a9b2f7a9eace4" [label="/bin/sh -c opam repo add mirage-dev git://github.com/mirage/mirage-dev" shape="box"];
  "sha256:d18492d1f64e684b4797257b9b3ad3905650a622e2951d0dfeca3aa556ce63ba" [label="/bin/sh -c opam depext -i mirage" shape="box"];
  "sha256:2e9e770153cd8b4777810247d81c9cbe0669a7e5d16e25f06452cbd742f9682d" [label="/bin/sh -c git clone -b mirage-dev http://github.com/mirage/mirage-skeleton" shape="box"];
  "sha256:5f68bbb77f2881a7762ac038f6d03ebb0c54b9f5b18b50305834d15ff6641064" [label="mkdir{path=/home/opam/mirage-skeleton/stackv4}" shape="note"];
  "sha256:d9836c6565d8563974d6c67f6e6b47ec0ffaf23467cc42403fc16917c273073a" [label="/bin/sh -c opam config exec -- mirage configure -t ukvm" shape="box"];
  "sha256:f9b52fa55b23514e31acd46617cfc656ab80b1744c7b11bd47b1e5724c6a2987" [label="/bin/sh -c opam config exec make depend" shape="box"];
  "sha256:87d173e1b44af381513dc20cd0a64a4c5524386ba951bef82f718534f129301e" [label="/bin/sh -c opam config exec make" shape="box"];
  "sha256:db54c2a89cae2b9927eb5ea5bc661c712ba58c4d4242c39ee69edba4f12f4129" [label="/bin/sh -c cp ./ukvm-bin ./ukvm" shape="box"];
  "sha256:9eeff2b914594e9db9e0655f52913643f09bffc45d2a3a0721a615dfd13204af" [label="sha256:9eeff2b914594e9db9e0655f52913643f09bffc45d2a3a0721a615dfd13204af" shape="plaintext"];
  "sha256:4fa77b05590bfe96c9ec38710789f1ae17204baca31b1f23e25497661ddaa019" -> "sha256:7d665d883b41fcf32d02bdc7a600a89a09123e68fa088f4f254a9b2f7a9eace4" [label=""];
  "sha256:7d665d883b41fcf32d02bdc7a600a89a09123e68fa088f4f254a9b2f7a9eace4" -> "sha256:d18492d1f64e684b4797257b9b3ad3905650a622e2951d0dfeca3aa556ce63ba" [label=""];
  "sha256:d18492d1f64e684b4797257b9b3ad3905650a622e2951d0dfeca3aa556ce63ba" -> "sha256:2e9e770153cd8b4777810247d81c9cbe0669a7e5d16e25f06452cbd742f9682d" [label=""];
  "sha256:2e9e770153cd8b4777810247d81c9cbe0669a7e5d16e25f06452cbd742f9682d" -> "sha256:5f68bbb77f2881a7762ac038f6d03ebb0c54b9f5b18b50305834d15ff6641064" [label=""];
  "sha256:5f68bbb77f2881a7762ac038f6d03ebb0c54b9f5b18b50305834d15ff6641064" -> "sha256:d9836c6565d8563974d6c67f6e6b47ec0ffaf23467cc42403fc16917c273073a" [label=""];
  "sha256:d9836c6565d8563974d6c67f6e6b47ec0ffaf23467cc42403fc16917c273073a" -> "sha256:f9b52fa55b23514e31acd46617cfc656ab80b1744c7b11bd47b1e5724c6a2987" [label=""];
  "sha256:f9b52fa55b23514e31acd46617cfc656ab80b1744c7b11bd47b1e5724c6a2987" -> "sha256:87d173e1b44af381513dc20cd0a64a4c5524386ba951bef82f718534f129301e" [label=""];
  "sha256:87d173e1b44af381513dc20cd0a64a4c5524386ba951bef82f718534f129301e" -> "sha256:db54c2a89cae2b9927eb5ea5bc661c712ba58c4d4242c39ee69edba4f12f4129" [label=""];
  "sha256:db54c2a89cae2b9927eb5ea5bc661c712ba58c4d4242c39ee69edba4f12f4129" -> "sha256:9eeff2b914594e9db9e0655f52913643f09bffc45d2a3a0721a615dfd13204af" [label=""];
}

