[app/sources/252785484.Dockerfile]
digraph {
  "sha256:7628c8016f506672d8fa44b9f97bcb0b7f96edfd045d3388ad35f644dcbefc70" [label="docker-image://docker.io/comaes/storm-base:latest" shape="ellipse"];
  "sha256:1bba42dc66ed335126ee177328bcf8253f289894fc4aa2418ae1d771be8f60e1" [label="local://context" shape="ellipse"];
  "sha256:087aef57ec81ae25ea0aed8be58e1fa312ba4815dd1f0667ef1d2fed467e4488" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:b23f816c34b52ccd0309e94f5acdb3c51124a81a96caa544915bbc172508e6d7" [label="mkdir{path=/opt/apache-storm}" shape="note"];
  "sha256:c36572bd95afb00b021da46fe336f948c6df58d81cc16bd28d8f48938847eb47" [label="sha256:c36572bd95afb00b021da46fe336f948c6df58d81cc16bd28d8f48938847eb47" shape="plaintext"];
  "sha256:7628c8016f506672d8fa44b9f97bcb0b7f96edfd045d3388ad35f644dcbefc70" -> "sha256:087aef57ec81ae25ea0aed8be58e1fa312ba4815dd1f0667ef1d2fed467e4488" [label=""];
  "sha256:1bba42dc66ed335126ee177328bcf8253f289894fc4aa2418ae1d771be8f60e1" -> "sha256:087aef57ec81ae25ea0aed8be58e1fa312ba4815dd1f0667ef1d2fed467e4488" [label=""];
  "sha256:087aef57ec81ae25ea0aed8be58e1fa312ba4815dd1f0667ef1d2fed467e4488" -> "sha256:b23f816c34b52ccd0309e94f5acdb3c51124a81a96caa544915bbc172508e6d7" [label=""];
  "sha256:b23f816c34b52ccd0309e94f5acdb3c51124a81a96caa544915bbc172508e6d7" -> "sha256:c36572bd95afb00b021da46fe336f948c6df58d81cc16bd28d8f48938847eb47" [label=""];
}

