[app/sources/285100294.Dockerfile]
digraph {
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04" shape="ellipse"];
  "sha256:e62e436e5ba633f788732b9478c8c1abed2ce24b2250b33765a1efafea206e1a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \tnumactl \tiperf \tiperf3  && \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1b390126157ad2077f2ce50f8a01721e10bdce8c4158219ceda570ccb67348c" [label="sha256:a1b390126157ad2077f2ce50f8a01721e10bdce8c4158219ceda570ccb67348c" shape="plaintext"];
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" -> "sha256:e62e436e5ba633f788732b9478c8c1abed2ce24b2250b33765a1efafea206e1a" [label=""];
  "sha256:e62e436e5ba633f788732b9478c8c1abed2ce24b2250b33765a1efafea206e1a" -> "sha256:a1b390126157ad2077f2ce50f8a01721e10bdce8c4158219ceda570ccb67348c" [label=""];
}

