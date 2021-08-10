[app/sources/429818748.Dockerfile]
digraph {
  "sha256:c90ec51d732e05d088ed3771a3b7d24a483a9332ea5023a2eb8109aa599e3c98" [label="docker-image://docker.io/pdal/alpinebase:latest" shape="ellipse"];
  "sha256:8eec8a5f6942f66e88c05b83e711d968399e85f80bb2b1fc1fe7b040a4152bea" [label="/bin/sh -c git clone https://github.com/PDAL/PDAL.git --branch 1.9-maintenance --single-branch pdal;     cd pdal;     mkdir build;     cd build;     cmake ..         -G Ninja         -DCMAKE_BUILD_TYPE=Release         -DBUILD_PLUGIN_PYTHON=ON         -DBUILD_PLUGIN_NITF=ON         -DBUILD_PLUGIN_GREYHOUND=ON         -DBUILD_PLUGIN_CPD=ON         -DBUILD_PLUGIN_ICEBRIDGE=ON         -DBUILD_PLUGIN_PGPOINTCLOUD=ON         -DBUILD_PLUGIN_SQLITE=ON         -DBUILD_PLUGIN_I3S=ON         -DWITH_LASZIP=ON         -DWITH_LAZPERF=ON         -DWITH_LAZPERF=ON         -DCMAKE_INSTALL_PREFIX=/usr/local         -DCMAKE_INSTALL_LIBDIR=lib         ;     ninja install;     cd /;     rm -rf pdal;         apk del         git         cmake         ninja         g++     ;     rm -rf /usr/share/hdf5_examples;     rm /usr/lib/*.a;     rm /usr/bin/gdal*;     rm /usr/bin/ogr*;     rm /usr/bin/h5*;" shape="box"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:e73d09a85ca2e13967bdf6e6a3e8304bc34e994e9c9c14db08f126fbd2b80e42" [label="copy{src=/usr, dest=/usr/}" shape="note"];
  "sha256:b250ab2ddf2520f211671b20c068959a2071c051e563844b45299da56b1e845f" [label="copy{src=/lib, dest=/lib/}" shape="note"];
  "sha256:982917ed3b50fdcefb4778544922a517ab3b20b614372f85708759b43c7a3ea0" [label="sha256:982917ed3b50fdcefb4778544922a517ab3b20b614372f85708759b43c7a3ea0" shape="plaintext"];
  "sha256:c90ec51d732e05d088ed3771a3b7d24a483a9332ea5023a2eb8109aa599e3c98" -> "sha256:8eec8a5f6942f66e88c05b83e711d968399e85f80bb2b1fc1fe7b040a4152bea" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e73d09a85ca2e13967bdf6e6a3e8304bc34e994e9c9c14db08f126fbd2b80e42" [label=""];
  "sha256:8eec8a5f6942f66e88c05b83e711d968399e85f80bb2b1fc1fe7b040a4152bea" -> "sha256:e73d09a85ca2e13967bdf6e6a3e8304bc34e994e9c9c14db08f126fbd2b80e42" [label=""];
  "sha256:e73d09a85ca2e13967bdf6e6a3e8304bc34e994e9c9c14db08f126fbd2b80e42" -> "sha256:b250ab2ddf2520f211671b20c068959a2071c051e563844b45299da56b1e845f" [label=""];
  "sha256:8eec8a5f6942f66e88c05b83e711d968399e85f80bb2b1fc1fe7b040a4152bea" -> "sha256:b250ab2ddf2520f211671b20c068959a2071c051e563844b45299da56b1e845f" [label=""];
  "sha256:b250ab2ddf2520f211671b20c068959a2071c051e563844b45299da56b1e845f" -> "sha256:982917ed3b50fdcefb4778544922a517ab3b20b614372f85708759b43c7a3ea0" [label=""];
}

