[app/sources/284221790.Dockerfile]
digraph {
  "sha256:c3b7299762b86e7fcf52016c12e691a5955ba03d88d5768001bda76a65bc69d6" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:5684179d4c0b9811376500823a10537536149fffc79112c159a5be26ae613e2e" [label="/bin/sh -c apt-get update && apt-get install -y         curl         dnsutils         python         python-dev         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:624a186a95ab6675e7db4fa80b019d2c6d53aebcd29b206c495889b952af053d" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:d33ea970680dc6517ca777ba35c6cfbe8ecfbd6e90c1aa1f7070f755cc2ded25" [label="/bin/sh -c pip install --upgrade pandas==0.18.1" shape="box"];
  "sha256:269af660c30d2b4c7472dc7a47805cb5adcf53589034aed6bc82f5f312ba4348" [label="copy{src=/tensorflow-*.whl, dest=/}" shape="note"];
  "sha256:c924e3467007d756911c885e1a545696140295f676e1a4a75f3851d351036dd2" [label="/bin/sh -c pip install /tensorflow-*.whl &&     rm -f /tensorflow-*.whl" shape="box"];
  "sha256:ed8055033d1c1ed1f58939656d5f5abefeb0ec3b24674d501b7708a3d00bb822" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:842ca9f330664dd0fe394a3551338239513f5a0d76ec6480be5940ccc7f5aa55" [label="/bin/sh -c mkdir -p /tmp/mnist-data" shape="box"];
  "sha256:9848096da786f7e6aecd5682402a64bb44f104c56c9e49db5edd6042c4bc9fdb" [label="/bin/sh -c curl -o /tmp/mnist-data/train-labels-idx1-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/train-labels-idx1-ubyte.gz" shape="box"];
  "sha256:0ee4788d829582b7bc857b688284e44e3837435ea8cc9355bf161c5291f05eac" [label="/bin/sh -c curl -o /tmp/mnist-data/train-images-idx3-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/train-images-idx3-ubyte.gz" shape="box"];
  "sha256:9a27c526aa610943451819357fd8c9f1a17d5c973a2627ab5eb6cbd6206819cd" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-labels-idx1-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/t10k-labels-idx1-ubyte.gz" shape="box"];
  "sha256:11e728c666e2c7f622200ffb94d7c2ebcb76d8b478364d759e8ac4edd7f10d9b" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-images-idx3-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/t10k-images-idx3-ubyte.gz" shape="box"];
  "sha256:ccadbc7cdd12580944fbbde6eaf703472168492f0584969fb973e5873661d5cd" [label="/bin/sh -c mkdir -p /tmp/census-data" shape="box"];
  "sha256:0ded080352f1d63b43e93b0616ad6f7d4b3b26c49347235b18f686f43f3891b5" [label="/bin/sh -c curl -o /tmp/census-data/adult.data     http://mlr.cs.umass.edu/ml/machine-learning-databases/adult/adult.data" shape="box"];
  "sha256:7025c7499297c60b6fce88bbaeeeb9394fa69a73a58fc55b4a27836d24a42b1d" [label="/bin/sh -c curl -o /tmp/census-data/adult.test     http://mlr.cs.umass.edu/ml/machine-learning-databases/adult/adult.test" shape="box"];
  "sha256:7e6557805e74a9b3cf576eeba92ec38e1bfbe286575b192e8919e559fe2c4225" [label="sha256:7e6557805e74a9b3cf576eeba92ec38e1bfbe286575b192e8919e559fe2c4225" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:5684179d4c0b9811376500823a10537536149fffc79112c159a5be26ae613e2e" [label=""];
  "sha256:5684179d4c0b9811376500823a10537536149fffc79112c159a5be26ae613e2e" -> "sha256:624a186a95ab6675e7db4fa80b019d2c6d53aebcd29b206c495889b952af053d" [label=""];
  "sha256:624a186a95ab6675e7db4fa80b019d2c6d53aebcd29b206c495889b952af053d" -> "sha256:d33ea970680dc6517ca777ba35c6cfbe8ecfbd6e90c1aa1f7070f755cc2ded25" [label=""];
  "sha256:d33ea970680dc6517ca777ba35c6cfbe8ecfbd6e90c1aa1f7070f755cc2ded25" -> "sha256:269af660c30d2b4c7472dc7a47805cb5adcf53589034aed6bc82f5f312ba4348" [label=""];
  "sha256:c3b7299762b86e7fcf52016c12e691a5955ba03d88d5768001bda76a65bc69d6" -> "sha256:269af660c30d2b4c7472dc7a47805cb5adcf53589034aed6bc82f5f312ba4348" [label=""];
  "sha256:269af660c30d2b4c7472dc7a47805cb5adcf53589034aed6bc82f5f312ba4348" -> "sha256:c924e3467007d756911c885e1a545696140295f676e1a4a75f3851d351036dd2" [label=""];
  "sha256:c924e3467007d756911c885e1a545696140295f676e1a4a75f3851d351036dd2" -> "sha256:ed8055033d1c1ed1f58939656d5f5abefeb0ec3b24674d501b7708a3d00bb822" [label=""];
  "sha256:c3b7299762b86e7fcf52016c12e691a5955ba03d88d5768001bda76a65bc69d6" -> "sha256:ed8055033d1c1ed1f58939656d5f5abefeb0ec3b24674d501b7708a3d00bb822" [label=""];
  "sha256:ed8055033d1c1ed1f58939656d5f5abefeb0ec3b24674d501b7708a3d00bb822" -> "sha256:842ca9f330664dd0fe394a3551338239513f5a0d76ec6480be5940ccc7f5aa55" [label=""];
  "sha256:842ca9f330664dd0fe394a3551338239513f5a0d76ec6480be5940ccc7f5aa55" -> "sha256:9848096da786f7e6aecd5682402a64bb44f104c56c9e49db5edd6042c4bc9fdb" [label=""];
  "sha256:9848096da786f7e6aecd5682402a64bb44f104c56c9e49db5edd6042c4bc9fdb" -> "sha256:0ee4788d829582b7bc857b688284e44e3837435ea8cc9355bf161c5291f05eac" [label=""];
  "sha256:0ee4788d829582b7bc857b688284e44e3837435ea8cc9355bf161c5291f05eac" -> "sha256:9a27c526aa610943451819357fd8c9f1a17d5c973a2627ab5eb6cbd6206819cd" [label=""];
  "sha256:9a27c526aa610943451819357fd8c9f1a17d5c973a2627ab5eb6cbd6206819cd" -> "sha256:11e728c666e2c7f622200ffb94d7c2ebcb76d8b478364d759e8ac4edd7f10d9b" [label=""];
  "sha256:11e728c666e2c7f622200ffb94d7c2ebcb76d8b478364d759e8ac4edd7f10d9b" -> "sha256:ccadbc7cdd12580944fbbde6eaf703472168492f0584969fb973e5873661d5cd" [label=""];
  "sha256:ccadbc7cdd12580944fbbde6eaf703472168492f0584969fb973e5873661d5cd" -> "sha256:0ded080352f1d63b43e93b0616ad6f7d4b3b26c49347235b18f686f43f3891b5" [label=""];
  "sha256:0ded080352f1d63b43e93b0616ad6f7d4b3b26c49347235b18f686f43f3891b5" -> "sha256:7025c7499297c60b6fce88bbaeeeb9394fa69a73a58fc55b4a27836d24a42b1d" [label=""];
  "sha256:7025c7499297c60b6fce88bbaeeeb9394fa69a73a58fc55b4a27836d24a42b1d" -> "sha256:7e6557805e74a9b3cf576eeba92ec38e1bfbe286575b192e8919e559fe2c4225" [label=""];
}

