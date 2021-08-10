[app/sources/391753207.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5711d4f73fe4dc90e99afe1788b347b4addb9270255c83555798d2cb82d7e970" [label="/bin/sh -c apt-get update && apt-get install -y     cmake     cmake-curses-gui     libargtable2-0     libargtable2-dev     libsndfile1 libsndfile1-dev     libmpg123-0 libmpg123-dev     libfftw3-3 libfftw3-dev     liblapack-dev     libhdf5-dev     libeigen3-dev     bzip2     wget     gcc g++" shape="box"];
  "sha256:44577f17537de5bcf67b69dc76076c78243147c1818c60d17ec76114365dfa17" [label="/bin/sh -c wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh &&     bash miniconda.sh -b -p /opt/miniconda &&     rm miniconda.sh &&     hash -r &&     conda config --set always_yes yes --set changeps1 yes &&     conda update -q conda" shape="box"];
  "sha256:8e245791e4223a4e97ea9be830cf6f54343ec11fa251d2e77ca3bf15d2bd2a1a" [label="/bin/sh -c conda install numpy sphinx" shape="box"];
  "sha256:16b7ed39033b211a5a3839aa392b856438036b62e443b2db25fdb400eebcc162" [label="/bin/sh -c mkdir /srv/src" shape="box"];
  "sha256:02d08ce332187cebba274392af05ada5a9dabd25883f61544554dfde220eab73" [label="/bin/sh -c mkdir /srv/src/yaafe" shape="box"];
  "sha256:f8343914889188befcbd894488e17630bcb5f8cc5fc5eb0b82f54795f6031517" [label="mkdir{path=/srv/src/yaafe}" shape="note"];
  "sha256:0757b30958a5559e386873406e785e5ffa77b5491d84a5c2a737f1c5014ee1c4" [label="local://context" shape="ellipse"];
  "sha256:a2919101d9a8cdf732a2ec003d447c7f3d0c5d5843038c5e4ca7733111c0f541" [label="copy{src=/, dest=/srv/src/yaafe}" shape="note"];
  "sha256:91dae18a6914f8516988112b88fda9e2e2eceebad9b84a9c371bb68037af753b" [label="/bin/sh -c mkdir build &&     cd build &&     cmake -DCMAKE_INSTALL_PREFIX=/opt/miniconda/           -DCMAKE_INSTALL_PYTHON_PACKAGES=/opt/miniconda/lib/python2.7           -DWITH_FFTW3=ON \t  -DHDF5_ROOT=/usr/lib/x86_64-linux-gnu/hdf5/serial/           -DWITH_HDF5=ON           -DWITH_LAPACK=ON           -DWITH_MATLAB_MEX=OFF           -DWITH_MPG123=ON           -DWITH_SNDFILE=ON           .. &&     make &&     make install &&     cd ../.." shape="box"];
  "sha256:3882859247c30fff6975c0eace5dffeb4cfd189d61183048050bb8b4b8ffc3e6" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:fedd34738b33c54ebab4fcea45926475cc914c22f4c64f755de7c2810a69cdb3" [label="sha256:fedd34738b33c54ebab4fcea45926475cc914c22f4c64f755de7c2810a69cdb3" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5711d4f73fe4dc90e99afe1788b347b4addb9270255c83555798d2cb82d7e970" [label=""];
  "sha256:5711d4f73fe4dc90e99afe1788b347b4addb9270255c83555798d2cb82d7e970" -> "sha256:44577f17537de5bcf67b69dc76076c78243147c1818c60d17ec76114365dfa17" [label=""];
  "sha256:44577f17537de5bcf67b69dc76076c78243147c1818c60d17ec76114365dfa17" -> "sha256:8e245791e4223a4e97ea9be830cf6f54343ec11fa251d2e77ca3bf15d2bd2a1a" [label=""];
  "sha256:8e245791e4223a4e97ea9be830cf6f54343ec11fa251d2e77ca3bf15d2bd2a1a" -> "sha256:16b7ed39033b211a5a3839aa392b856438036b62e443b2db25fdb400eebcc162" [label=""];
  "sha256:16b7ed39033b211a5a3839aa392b856438036b62e443b2db25fdb400eebcc162" -> "sha256:02d08ce332187cebba274392af05ada5a9dabd25883f61544554dfde220eab73" [label=""];
  "sha256:02d08ce332187cebba274392af05ada5a9dabd25883f61544554dfde220eab73" -> "sha256:f8343914889188befcbd894488e17630bcb5f8cc5fc5eb0b82f54795f6031517" [label=""];
  "sha256:f8343914889188befcbd894488e17630bcb5f8cc5fc5eb0b82f54795f6031517" -> "sha256:a2919101d9a8cdf732a2ec003d447c7f3d0c5d5843038c5e4ca7733111c0f541" [label=""];
  "sha256:0757b30958a5559e386873406e785e5ffa77b5491d84a5c2a737f1c5014ee1c4" -> "sha256:a2919101d9a8cdf732a2ec003d447c7f3d0c5d5843038c5e4ca7733111c0f541" [label=""];
  "sha256:a2919101d9a8cdf732a2ec003d447c7f3d0c5d5843038c5e4ca7733111c0f541" -> "sha256:91dae18a6914f8516988112b88fda9e2e2eceebad9b84a9c371bb68037af753b" [label=""];
  "sha256:91dae18a6914f8516988112b88fda9e2e2eceebad9b84a9c371bb68037af753b" -> "sha256:3882859247c30fff6975c0eace5dffeb4cfd189d61183048050bb8b4b8ffc3e6" [label=""];
  "sha256:0757b30958a5559e386873406e785e5ffa77b5491d84a5c2a737f1c5014ee1c4" -> "sha256:3882859247c30fff6975c0eace5dffeb4cfd189d61183048050bb8b4b8ffc3e6" [label=""];
  "sha256:3882859247c30fff6975c0eace5dffeb4cfd189d61183048050bb8b4b8ffc3e6" -> "sha256:fedd34738b33c54ebab4fcea45926475cc914c22f4c64f755de7c2810a69cdb3" [label=""];
}

