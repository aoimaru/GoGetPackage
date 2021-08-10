[app/sources/353565292.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:164aaa802816359064ccf933f6280ef707fcbc8a11505768ad319a880fef0792" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         ca-certificates         wget         &&     apt-get -y autoremove         &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a70f375876c5273caef38668af19061018796c3bff88fc746c813d5fcc2b24b4" [label="/bin/sh -c CNTK_VERSION_DASHED=$(echo $CNTK_VERSION | tr . -) &&     CNTK_SHA256=\"fc3e4e304fc810e93b9a350a80a6872fdc64cd124fd49571bd1ff9297c212f40\" &&     wget -q https://cntk.ai/BinaryDrop/CNTK-${CNTK_VERSION_DASHED}-Linux-64bit-CPU-Only.tar.gz &&     echo \"$CNTK_SHA256 CNTK-${CNTK_VERSION_DASHED}-Linux-64bit-CPU-Only.tar.gz\" | sha256sum --check --strict - &&     tar -xzf CNTK-${CNTK_VERSION_DASHED}-Linux-64bit-CPU-Only.tar.gz &&     rm -f CNTK-${CNTK_VERSION_DASHED}-Linux-64bit-CPU-Only.tar.gz &&     /bin/bash /cntk/Scripts/install/linux/install-cntk.sh --py-version 35 --docker" shape="box"];
  "sha256:f618a063a57d6198a0c587d9f4da83774cfc06d29af61d7f1579c93c7cebe656" [label="mkdir{path=/root}" shape="note"];
  "sha256:c7f82d601e3afc0e76e4d7422178fa4ef8b4288284c850e369788e2bfb8388a3" [label="sha256:c7f82d601e3afc0e76e4d7422178fa4ef8b4288284c850e369788e2bfb8388a3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:164aaa802816359064ccf933f6280ef707fcbc8a11505768ad319a880fef0792" [label=""];
  "sha256:164aaa802816359064ccf933f6280ef707fcbc8a11505768ad319a880fef0792" -> "sha256:a70f375876c5273caef38668af19061018796c3bff88fc746c813d5fcc2b24b4" [label=""];
  "sha256:a70f375876c5273caef38668af19061018796c3bff88fc746c813d5fcc2b24b4" -> "sha256:f618a063a57d6198a0c587d9f4da83774cfc06d29af61d7f1579c93c7cebe656" [label=""];
  "sha256:f618a063a57d6198a0c587d9f4da83774cfc06d29af61d7f1579c93c7cebe656" -> "sha256:c7f82d601e3afc0e76e4d7422178fa4ef8b4288284c850e369788e2bfb8388a3" [label=""];
}

