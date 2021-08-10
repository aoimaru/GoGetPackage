[app/sources/302800664.Dockerfile]
digraph {
  "sha256:8fe572e565d947f80efdd8949e8a3243c3c054d897723ee87dd53bd314bc9586" [label="docker-image://docker.io/library/ubuntu:17.04@sha256:5d41c289942008211c2964bca72800f5c9d5ea5aa4057528da617fb36463d4ab" shape="ellipse"];
  "sha256:82b0a4a7d2149046a1feb81a3e3d40e902ebf4cf097f6e276ae90ca1f566858f" [label="/bin/sh -c apt-get -qq update && \tapt-get install wget git -y" shape="box"];
  "sha256:c52f1c30d4264ee6cf76cb9fdd27ffcce294ac6bcf96f8ea45dd1f9c58a48ced" [label="/bin/sh -c apt-get install -y curl &&   curl -sL https://deb.nodesource.com/setup_6.x | bash - &&   apt-get install -y nodejs &&   npm install -g ethereumjs-testrpc &&   cd bin &&   wget https://github.com/ethereum/solidity/releases/download/v0.4.16/solc-static-linux &&   mv solc-static-linux solc &&   chmod 744 solc" shape="box"];
  "sha256:133299120fa73bf6dce17cadd569564bd054f215bb6a7d3103dd28714c186192" [label="/bin/sh -c wget https://dist.ipfs.io/go-ipfs/v0.4.10/go-ipfs_v0.4.10_linux-amd64.tar.gz &&   tar xf go-ipfs_v0.4.10_linux-amd64.tar.gz &&   cd go-ipfs &&   ./install.sh &&   ipfs init" shape="box"];
  "sha256:e00187954c3d151619f4378dd1f13488ca3ce502ac14ad9d727a57bd096783c4" [label="/bin/sh -c wget -O getparity.sh https://get.parity.io &&    apt-get install -y psmisc sudo &&    bash getparity.sh &&    (parity --chain dev &) &&    sleep 10 &&    killall parity" shape="box"];
  "sha256:6af9c80de525ec42b3b20b09b36914d5d1abeb940d608e8816d3af2450ca5e6c" [label="/bin/sh -c git clone https://github.com/TrueBitFoundation/webasm-solidity &&   cd webasm-solidity &&   npm install &&   sh compile.sh" shape="box"];
  "sha256:8965faa1870aa8d256ff83b1f9ddfc59d680be19bad489e59eb0e56a455cbc34" [label="sha256:8965faa1870aa8d256ff83b1f9ddfc59d680be19bad489e59eb0e56a455cbc34" shape="plaintext"];
  "sha256:8fe572e565d947f80efdd8949e8a3243c3c054d897723ee87dd53bd314bc9586" -> "sha256:82b0a4a7d2149046a1feb81a3e3d40e902ebf4cf097f6e276ae90ca1f566858f" [label=""];
  "sha256:82b0a4a7d2149046a1feb81a3e3d40e902ebf4cf097f6e276ae90ca1f566858f" -> "sha256:c52f1c30d4264ee6cf76cb9fdd27ffcce294ac6bcf96f8ea45dd1f9c58a48ced" [label=""];
  "sha256:c52f1c30d4264ee6cf76cb9fdd27ffcce294ac6bcf96f8ea45dd1f9c58a48ced" -> "sha256:133299120fa73bf6dce17cadd569564bd054f215bb6a7d3103dd28714c186192" [label=""];
  "sha256:133299120fa73bf6dce17cadd569564bd054f215bb6a7d3103dd28714c186192" -> "sha256:e00187954c3d151619f4378dd1f13488ca3ce502ac14ad9d727a57bd096783c4" [label=""];
  "sha256:e00187954c3d151619f4378dd1f13488ca3ce502ac14ad9d727a57bd096783c4" -> "sha256:6af9c80de525ec42b3b20b09b36914d5d1abeb940d608e8816d3af2450ca5e6c" [label=""];
  "sha256:6af9c80de525ec42b3b20b09b36914d5d1abeb940d608e8816d3af2450ca5e6c" -> "sha256:8965faa1870aa8d256ff83b1f9ddfc59d680be19bad489e59eb0e56a455cbc34" [label=""];
}

