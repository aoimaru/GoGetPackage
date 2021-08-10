[app/sources/196993383.Dockerfile]
digraph {
  "sha256:ed9648550a41d5c366a9673031317de80a8f9a3b2759c1e018c93c6a629d5f07" [label="docker-image://docker.io/girder/girder_worker:latest" shape="ellipse"];
  "sha256:06c11d6fe7d404296c4bc6c6dff6efca0782977f4e50e26f3863a03bc9ca701e" [label="/bin/sh -c pip uninstall -y girder-worker" shape="box"];
  "sha256:a1d9861573f7b58610b7ea9e658829c2e20d82fdf50f9d92de1020be66b2afa7" [label="/bin/sh -c apt-get update && apt-get install -y sudo" shape="box"];
  "sha256:37d31ffd7ea7af942951236e8b0b198e3a9bf3a99d90b7effc5ad37a8a06be2c" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:cc655d0f534ae48bef29440c6120bd22446388f427242aedd815e368961f1659" [label="/bin/sh -c pip install docker" shape="box"];
  "sha256:c9ef52f0a74bfb4e781f46343b1309270e26c1730edc6ea30cb2b5ab2d678f6b" [label="/bin/sh -c pip install rpdb" shape="box"];
  "sha256:7d747933e380639f277bea956893f4e4be8ec6bda7cc651884f290eef4ed2ce8" [label="/bin/sh -c pip install -U \"git+https://github.com/girder/girder.git@2.x-maintenance#egg=girder_client&subdirectory=clients/python\"" shape="box"];
  "sha256:bb6ba04858d3782429a8aed7122045c5c38e708b36c8a8f34e7711b7371ef407" [label="local://context" shape="ellipse"];
  "sha256:36c4474b478a1872c5ee662811de3cdd2e7c83a1f9e906a38e09221f161a09a2" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:ae859e23e0505b081e3b37f3c9af9059dc07d175d8f056fece795cffcb62e871" [label="sha256:ae859e23e0505b081e3b37f3c9af9059dc07d175d8f056fece795cffcb62e871" shape="plaintext"];
  "sha256:ed9648550a41d5c366a9673031317de80a8f9a3b2759c1e018c93c6a629d5f07" -> "sha256:06c11d6fe7d404296c4bc6c6dff6efca0782977f4e50e26f3863a03bc9ca701e" [label=""];
  "sha256:06c11d6fe7d404296c4bc6c6dff6efca0782977f4e50e26f3863a03bc9ca701e" -> "sha256:a1d9861573f7b58610b7ea9e658829c2e20d82fdf50f9d92de1020be66b2afa7" [label=""];
  "sha256:a1d9861573f7b58610b7ea9e658829c2e20d82fdf50f9d92de1020be66b2afa7" -> "sha256:37d31ffd7ea7af942951236e8b0b198e3a9bf3a99d90b7effc5ad37a8a06be2c" [label=""];
  "sha256:37d31ffd7ea7af942951236e8b0b198e3a9bf3a99d90b7effc5ad37a8a06be2c" -> "sha256:cc655d0f534ae48bef29440c6120bd22446388f427242aedd815e368961f1659" [label=""];
  "sha256:cc655d0f534ae48bef29440c6120bd22446388f427242aedd815e368961f1659" -> "sha256:c9ef52f0a74bfb4e781f46343b1309270e26c1730edc6ea30cb2b5ab2d678f6b" [label=""];
  "sha256:c9ef52f0a74bfb4e781f46343b1309270e26c1730edc6ea30cb2b5ab2d678f6b" -> "sha256:7d747933e380639f277bea956893f4e4be8ec6bda7cc651884f290eef4ed2ce8" [label=""];
  "sha256:7d747933e380639f277bea956893f4e4be8ec6bda7cc651884f290eef4ed2ce8" -> "sha256:36c4474b478a1872c5ee662811de3cdd2e7c83a1f9e906a38e09221f161a09a2" [label=""];
  "sha256:bb6ba04858d3782429a8aed7122045c5c38e708b36c8a8f34e7711b7371ef407" -> "sha256:36c4474b478a1872c5ee662811de3cdd2e7c83a1f9e906a38e09221f161a09a2" [label=""];
  "sha256:36c4474b478a1872c5ee662811de3cdd2e7c83a1f9e906a38e09221f161a09a2" -> "sha256:ae859e23e0505b081e3b37f3c9af9059dc07d175d8f056fece795cffcb62e871" [label=""];
}

