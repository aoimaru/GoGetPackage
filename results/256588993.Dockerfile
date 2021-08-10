[app/sources/256588993.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:41d8baa748e225d4a176908344453a36076cae110aecaddd7d86882227ee09fc" [label="/bin/sh -c apt-get update  && apt-get install -y build-essential wget libbz2-dev autoconf libtool dos2unix cmake && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e6726f8733371b0d2db2175ec9fb50b19458599ae8daaca8d1660ffca002f5ba" [label="/bin/sh -c wget http://downloads.sourceforge.net/project/boost/boost/${boost_version}/${boost_dir}.tar.gz     && tar xfz ${boost_dir}.tar.gz     && rm ${boost_dir}.tar.gz     && cd ${boost_dir}     && ./bootstrap.sh     && ./b2 --without-python -j 4 link=shared runtime-link=shared install     && cd .. && rm -rf ${boost_dir} && ldconfig" shape="box"];
  "sha256:14fd996d0535e91c3d3192db3e7845d3a27d4d755e69fb693cb1cc57f0915971" [label="sha256:14fd996d0535e91c3d3192db3e7845d3a27d4d755e69fb693cb1cc57f0915971" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:41d8baa748e225d4a176908344453a36076cae110aecaddd7d86882227ee09fc" [label=""];
  "sha256:41d8baa748e225d4a176908344453a36076cae110aecaddd7d86882227ee09fc" -> "sha256:e6726f8733371b0d2db2175ec9fb50b19458599ae8daaca8d1660ffca002f5ba" [label=""];
  "sha256:e6726f8733371b0d2db2175ec9fb50b19458599ae8daaca8d1660ffca002f5ba" -> "sha256:14fd996d0535e91c3d3192db3e7845d3a27d4d755e69fb693cb1cc57f0915971" [label=""];
}

