[app/sources/296784769.Dockerfile]
digraph {
  "sha256:8ea2b55edd4f80bdcde5d90a9e3891d80de7b896c00ee7285ca1457a1d391953" [label="docker-image://docker.io/library/golang:1.10-stretch" shape="ellipse"];
  "sha256:295be666734a08a5eb61cbdbd67fbd00ae2038c6c42781645d5887e896fc84a5" [label="/bin/sh -c apt-get update && apt-get install -y     curl     python-pip     libdevmapper-dev     iptables     ca-certificates     &&     curl -fL \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz\" | tar zx &&     mv docker/* /bin/ && chmod +x /bin/docker* &&     rm -rf /var/cache/apt/* &&     rm -rf /root/.cache" shape="box"];
  "sha256:fa368db094958ee9e3480c84397a7ad538a37b2ca458606cccd53bc4152adea4" [label="local://context" shape="ellipse"];
  "sha256:47d2514d0fe7e50a167765c88bb8ae32f62a6a778f10b6ea1ff06f2d06731729" [label="copy{src=/entrypoint.sh, dest=/bin/entrypoint.sh}" shape="note"];
  "sha256:ae8b8960a5d9401d75e135e29a49d057f4a588a7f357af1fcda03ebde7b4d04c" [label="/bin/sh -c curl -LO https://gist.githubusercontent.com/tahsinrahman/db0626153488f88ceac544404f33cc0f/raw/f9ba010b5dd194dbbf96f1431e5d8a46966ed79a/entrypoint.sh &&     chmod +x entrypoint.sh &&     mv entrypoint.sh /bin/" shape="box"];
  "sha256:da27843b4b8eca8ef9cd54414fde8c5a64420e77d56715b7a0c496f55a468513" [label="sha256:da27843b4b8eca8ef9cd54414fde8c5a64420e77d56715b7a0c496f55a468513" shape="plaintext"];
  "sha256:8ea2b55edd4f80bdcde5d90a9e3891d80de7b896c00ee7285ca1457a1d391953" -> "sha256:295be666734a08a5eb61cbdbd67fbd00ae2038c6c42781645d5887e896fc84a5" [label=""];
  "sha256:295be666734a08a5eb61cbdbd67fbd00ae2038c6c42781645d5887e896fc84a5" -> "sha256:47d2514d0fe7e50a167765c88bb8ae32f62a6a778f10b6ea1ff06f2d06731729" [label=""];
  "sha256:fa368db094958ee9e3480c84397a7ad538a37b2ca458606cccd53bc4152adea4" -> "sha256:47d2514d0fe7e50a167765c88bb8ae32f62a6a778f10b6ea1ff06f2d06731729" [label=""];
  "sha256:47d2514d0fe7e50a167765c88bb8ae32f62a6a778f10b6ea1ff06f2d06731729" -> "sha256:ae8b8960a5d9401d75e135e29a49d057f4a588a7f357af1fcda03ebde7b4d04c" [label=""];
  "sha256:ae8b8960a5d9401d75e135e29a49d057f4a588a7f357af1fcda03ebde7b4d04c" -> "sha256:da27843b4b8eca8ef9cd54414fde8c5a64420e77d56715b7a0c496f55a468513" [label=""];
}

