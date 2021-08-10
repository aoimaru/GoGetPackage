[app/sources/252774991.Dockerfile]
digraph {
  "sha256:457ef7dff6af08214bdd4332b2bf967988c556bd9edce0b656c01afd58216255" [label="docker-image://docker.io/bcgsc/orca-4:latest" shape="ellipse"];
  "sha256:d7c20721d1029f33125c3492e5f5ee58ea1ee6f71ceaf831f00b4245033427ee" [label="/bin/sh -c brew install macse mafft makedepend maker man-db mapsembler2 maq mash mcl megahit meme metaphlan methpipe mhap minced minia miniasm minimap minimap2 mir-prefer mitofy mlst mothur mrbayes multi-worm-tracker mummer muscle nano nanopolish ncl newick-utils newicktools nonpareil novoalign ntcard nxtrim oases oma orthofinder paml pandaseq panito parallel parsnp pathd8 pathvisio pcre pear phipack phlawd phylip phyml phyutility picard-tools piler pilercr pilon pixman pkg-config plink poa poretools prodigal prokka proteinortho psmc" shape="box"];
  "sha256:8a30d3e4ae5f40d4f0a7f544223e00e020c8784dca40ae447ae1818de47426a5" [label="sha256:8a30d3e4ae5f40d4f0a7f544223e00e020c8784dca40ae447ae1818de47426a5" shape="plaintext"];
  "sha256:457ef7dff6af08214bdd4332b2bf967988c556bd9edce0b656c01afd58216255" -> "sha256:d7c20721d1029f33125c3492e5f5ee58ea1ee6f71ceaf831f00b4245033427ee" [label=""];
  "sha256:d7c20721d1029f33125c3492e5f5ee58ea1ee6f71ceaf831f00b4245033427ee" -> "sha256:8a30d3e4ae5f40d4f0a7f544223e00e020c8784dca40ae447ae1818de47426a5" [label=""];
}

