[app/sources/333097047.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:5758a0881549a210930873a335104f5f3b8fde7cca9a3e0e221c6b0a46856cf8" [label="mkdir{path=/data}" shape="note"];
  "sha256:ca6240930a14821c173ca71420cd234edd0c74f523bb17926d07ca096de2fb0e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e76abe8c390919347c4f0c4118adb709635efeb4df2c4174e5b23697333552f9" [label="/bin/sh -c apt-get install -y libopenmpi-dev openmpi-bin mpich git pkg-config gcc-4.7 nano make" shape="box"];
  "sha256:35bc14c26af5357a839f6cc002fbfde58b1bea75590a98254eea6ab78385eeb7" [label="/bin/sh -c apt-get install -y sudo hdf5-tools libhdf5-mpi-dev" shape="box"];
  "sha256:8541f4e63144dbfabc656ced94f5ee7e0bba28dccd6d7bbd313da9787bbd98ca" [label="sha256:8541f4e63144dbfabc656ced94f5ee7e0bba28dccd6d7bbd313da9787bbd98ca" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5758a0881549a210930873a335104f5f3b8fde7cca9a3e0e221c6b0a46856cf8" [label=""];
  "sha256:5758a0881549a210930873a335104f5f3b8fde7cca9a3e0e221c6b0a46856cf8" -> "sha256:ca6240930a14821c173ca71420cd234edd0c74f523bb17926d07ca096de2fb0e" [label=""];
  "sha256:ca6240930a14821c173ca71420cd234edd0c74f523bb17926d07ca096de2fb0e" -> "sha256:e76abe8c390919347c4f0c4118adb709635efeb4df2c4174e5b23697333552f9" [label=""];
  "sha256:e76abe8c390919347c4f0c4118adb709635efeb4df2c4174e5b23697333552f9" -> "sha256:35bc14c26af5357a839f6cc002fbfde58b1bea75590a98254eea6ab78385eeb7" [label=""];
  "sha256:35bc14c26af5357a839f6cc002fbfde58b1bea75590a98254eea6ab78385eeb7" -> "sha256:8541f4e63144dbfabc656ced94f5ee7e0bba28dccd6d7bbd313da9787bbd98ca" [label=""];
}

