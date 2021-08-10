[app/sources/361379794.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:bef6748f0e97bc2a278cb404aba72a2f9d0e1dcceaacf42f15c336748518ac94" [label="/bin/sh -c apt-get update     && apt-get install -qqy        curl        tar        g++-4.8        gcc        libtool        pkg-config        autoconf        openssh-server        openssh-client        rsync        build-essential        automake        vim        gdb        git        libopenmpi-dev        openmpi-bin        cmake        gfortran        python-nose        python-numpy        python-scipy        python-dev        python-pip        libopenblas-dev        software-properties-common        libssl-dev        libzmq3-dev        python-zmq" shape="box"];
  "sha256:aac3d317ba1832c5b6ac7ab6ffda6703d0f4433e7f27c86409002ca8d37dcfd6" [label="/bin/sh -c mkdir -p /usr/local/java/default &&     curl -Ls 'http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie' |     tar --strip-components=1 -xz -C /usr/local/java/default/" shape="box"];
  "sha256:a7f274f93b751e3d47e74dae59ab3c56a0cf883e77b2edd20c93634cb7891113" [label="/bin/sh -c wget -cq -t 0 http://www.eu.apache.org/dist/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz" shape="box"];
  "sha256:15e35ff8293028ce8e94f1382cdf80fc9fb5d4ec360bc6f83d1e1552824be32b" [label="/bin/sh -c tar -xz -C /usr/local/ -f hadoop-2.6.0.tar.gz     && rm hadoop-2.6.0.tar.gz     && cd /usr/local && ln -s ./hadoop-2.6.0 hadoop     && cp -r /usr/local/hadoop/include/* /usr/local/include" shape="box"];
  "sha256:154f822852612f82d5c203d5dd3f247fdd27ff91190b288c5f0e9ff59b31e190" [label="/bin/sh -c sed -i '/^export JAVA_HOME/ s:.*:export JAVA_HOME=/usr/local/java/default\\nexport HADOOP_PREFIX=/usr/local/hadoop\\nexport HADOOP_HOME=/usr/local/hadoop\\n:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:629b896b55e7cd13d79745e4468a1aa06ded58470d1db920a37c1be646af2dc8" [label="/bin/sh -c sed -i '/^export HADOOP_CONF_DIR/ s:.*:export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop/:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:1975f2967fb4d58cb44c7a59d8464b0856daa3e7804b2a8d0c6d8a6799124d51" [label="/bin/sh -c rm  /usr/local/hadoop/lib/native/*     && curl -Ls http://dl.bintray.com/sequenceiq/sequenceiq-bin/hadoop-native-64-2.6.0.tar | tar -x -C /usr/local/hadoop/lib/native/" shape="box"];
  "sha256:f7f02afac9d17e6b9aadcdea28b3eab6871571809cac0364dcb2e9affe58a8de" [label="/bin/sh -c mkdir -p /theano     && cd /theano     && git clone git://github.com/Theano/Theano.git     && cd /theano/Theano     && python setup.py develop" shape="box"];
  "sha256:fcbc842569ba84a896d7aca7185e5f5ee9f282a399a9b17d948ef79a26ccd23c" [label="/bin/sh -c pip install notebook ipywidgets" shape="box"];
  "sha256:9cfe70c7935d64e71122392606bb871f411d33c6d68a28e1c2c04e11c5fbbfad" [label="/bin/sh -c git clone https://github.com/torch/distro.git /root/torch --recursive && cd /root/torch &&   bash install-deps &&   ./install.sh" shape="box"];
  "sha256:9ccff6b4c796873a449fdc74548aef2add4dd7d682fb37de57dff4a3e47a994f" [label="mkdir{path=/dmtk}" shape="note"];
  "sha256:1b7a42f841f8d03bda45d0bc0261565717111496c180df01d69843b6f4515072" [label="/bin/sh -c cd /dmtk && git clone https://github.com/Microsoft/multiverso.git && cd multiverso \t&& mkdir build && cd build \t&& cmake .. && make && make install" shape="box"];
  "sha256:b7ef08b5d09837b9dee6d586464b831defb3661c2fac5b80908d93eeca27fecb" [label="/bin/sh -c cd /dmtk/multiverso/binding/python \t&& python setup.py install \t&& nosetests" shape="box"];
  "sha256:2f543b6d047b66a148150fef1afeab4ad3fa3b0cc90c8855b5e05bef10027a2a" [label="/bin/sh -c cd /dmtk/multiverso/binding/lua \t&& make install \t&& make test" shape="box"];
  "sha256:fba54802e20aedf4ce5e232549d475faef1371a224dc6b7e119ecc534ef9bed1" [label="/bin/sh -c cd /dmtk/multiverso/build    && mpirun -np 4 ./Test/multiverso.test kv    && mpirun -np 4 ./Test/multiverso.test array    && mpirun -np 4 ./Test/multiverso.test net    && mpirun -np 4 ./Test/multiverso.test ip    && mpirun -np 4 ./Test/multiverso.test checkpoint    && mpirun -np 4 ./Test/multiverso.test restore    && mpirun -np 4 ./Test/multiverso.test allreduce" shape="box"];
  "sha256:615f14b919ada0003c485c054f600da82c1dd0a9d70e9c04f3e0dd8a72a65797" [label="/bin/sh -c apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6294b651860b0b440bcb47d087199e083caf56e929cc8435fede197774b52580" [label="sha256:6294b651860b0b440bcb47d087199e083caf56e929cc8435fede197774b52580" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:bef6748f0e97bc2a278cb404aba72a2f9d0e1dcceaacf42f15c336748518ac94" [label=""];
  "sha256:bef6748f0e97bc2a278cb404aba72a2f9d0e1dcceaacf42f15c336748518ac94" -> "sha256:aac3d317ba1832c5b6ac7ab6ffda6703d0f4433e7f27c86409002ca8d37dcfd6" [label=""];
  "sha256:aac3d317ba1832c5b6ac7ab6ffda6703d0f4433e7f27c86409002ca8d37dcfd6" -> "sha256:a7f274f93b751e3d47e74dae59ab3c56a0cf883e77b2edd20c93634cb7891113" [label=""];
  "sha256:a7f274f93b751e3d47e74dae59ab3c56a0cf883e77b2edd20c93634cb7891113" -> "sha256:15e35ff8293028ce8e94f1382cdf80fc9fb5d4ec360bc6f83d1e1552824be32b" [label=""];
  "sha256:15e35ff8293028ce8e94f1382cdf80fc9fb5d4ec360bc6f83d1e1552824be32b" -> "sha256:154f822852612f82d5c203d5dd3f247fdd27ff91190b288c5f0e9ff59b31e190" [label=""];
  "sha256:154f822852612f82d5c203d5dd3f247fdd27ff91190b288c5f0e9ff59b31e190" -> "sha256:629b896b55e7cd13d79745e4468a1aa06ded58470d1db920a37c1be646af2dc8" [label=""];
  "sha256:629b896b55e7cd13d79745e4468a1aa06ded58470d1db920a37c1be646af2dc8" -> "sha256:1975f2967fb4d58cb44c7a59d8464b0856daa3e7804b2a8d0c6d8a6799124d51" [label=""];
  "sha256:1975f2967fb4d58cb44c7a59d8464b0856daa3e7804b2a8d0c6d8a6799124d51" -> "sha256:f7f02afac9d17e6b9aadcdea28b3eab6871571809cac0364dcb2e9affe58a8de" [label=""];
  "sha256:f7f02afac9d17e6b9aadcdea28b3eab6871571809cac0364dcb2e9affe58a8de" -> "sha256:fcbc842569ba84a896d7aca7185e5f5ee9f282a399a9b17d948ef79a26ccd23c" [label=""];
  "sha256:fcbc842569ba84a896d7aca7185e5f5ee9f282a399a9b17d948ef79a26ccd23c" -> "sha256:9cfe70c7935d64e71122392606bb871f411d33c6d68a28e1c2c04e11c5fbbfad" [label=""];
  "sha256:9cfe70c7935d64e71122392606bb871f411d33c6d68a28e1c2c04e11c5fbbfad" -> "sha256:9ccff6b4c796873a449fdc74548aef2add4dd7d682fb37de57dff4a3e47a994f" [label=""];
  "sha256:9ccff6b4c796873a449fdc74548aef2add4dd7d682fb37de57dff4a3e47a994f" -> "sha256:1b7a42f841f8d03bda45d0bc0261565717111496c180df01d69843b6f4515072" [label=""];
  "sha256:1b7a42f841f8d03bda45d0bc0261565717111496c180df01d69843b6f4515072" -> "sha256:b7ef08b5d09837b9dee6d586464b831defb3661c2fac5b80908d93eeca27fecb" [label=""];
  "sha256:b7ef08b5d09837b9dee6d586464b831defb3661c2fac5b80908d93eeca27fecb" -> "sha256:2f543b6d047b66a148150fef1afeab4ad3fa3b0cc90c8855b5e05bef10027a2a" [label=""];
  "sha256:2f543b6d047b66a148150fef1afeab4ad3fa3b0cc90c8855b5e05bef10027a2a" -> "sha256:fba54802e20aedf4ce5e232549d475faef1371a224dc6b7e119ecc534ef9bed1" [label=""];
  "sha256:fba54802e20aedf4ce5e232549d475faef1371a224dc6b7e119ecc534ef9bed1" -> "sha256:615f14b919ada0003c485c054f600da82c1dd0a9d70e9c04f3e0dd8a72a65797" [label=""];
  "sha256:615f14b919ada0003c485c054f600da82c1dd0a9d70e9c04f3e0dd8a72a65797" -> "sha256:6294b651860b0b440bcb47d087199e083caf56e929cc8435fede197774b52580" [label=""];
}

