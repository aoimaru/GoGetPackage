[app/sources/261054687.Dockerfile]
digraph {
  "sha256:d24ff8403eb5b25a3c3120cb58f4539389cbf153bfcced50463b717787009679" [label="docker-image://docker.io/cogstacksystems/cogstack-pipeline:latest" shape="ellipse"];
  "sha256:1a11d1b57e0c8ab567acd081c5f7053107bca0ea49a3358cf65386712754357d" [label="/bin/sh -c apt-get update && \tapt-get install -y curl && \tapt-get clean autoclean && \tapt-get autoremove -y && \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f4ecb33dc3d45b0ee4164a777178e0cd18d44793eb6c6b0ad4170914af10e255" [label="mkdir{path=/gate}" shape="note"];
  "sha256:e68e843e930e87e7cb5159913a1f6395fd42508356aa0942a2a38dbc0961978c" [label="/bin/sh -c curl -L 'https://downloads.sourceforge.net/project/gate/gate/8.4.1/gate-8.4.1-build5753-BIN.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fgate%2Ffiles%2Fgate%2F8.4.1%2Fgate-8.4.1-build5753-BIN.zip' > gate-8.4.1-build5753-BIN.zip && \tunzip gate-8.4.1-build5753-BIN.zip && \tmv gate-8.4.1-build5753-BIN home && \trm gate-8.4.1-build5753-BIN.zip" shape="box"];
  "sha256:24ad907995fbff32ef9edc216e22f18f5399d463af676e0b4f7d4237acf6640d" [label="mkdir{path=/cogstack}" shape="note"];
  "sha256:80bb86a2b88239702b59feb7a8a1e21730efa3cceba1d9953212c3684e63d73e" [label="sha256:80bb86a2b88239702b59feb7a8a1e21730efa3cceba1d9953212c3684e63d73e" shape="plaintext"];
  "sha256:d24ff8403eb5b25a3c3120cb58f4539389cbf153bfcced50463b717787009679" -> "sha256:1a11d1b57e0c8ab567acd081c5f7053107bca0ea49a3358cf65386712754357d" [label=""];
  "sha256:1a11d1b57e0c8ab567acd081c5f7053107bca0ea49a3358cf65386712754357d" -> "sha256:f4ecb33dc3d45b0ee4164a777178e0cd18d44793eb6c6b0ad4170914af10e255" [label=""];
  "sha256:f4ecb33dc3d45b0ee4164a777178e0cd18d44793eb6c6b0ad4170914af10e255" -> "sha256:e68e843e930e87e7cb5159913a1f6395fd42508356aa0942a2a38dbc0961978c" [label=""];
  "sha256:e68e843e930e87e7cb5159913a1f6395fd42508356aa0942a2a38dbc0961978c" -> "sha256:24ad907995fbff32ef9edc216e22f18f5399d463af676e0b4f7d4237acf6640d" [label=""];
  "sha256:24ad907995fbff32ef9edc216e22f18f5399d463af676e0b4f7d4237acf6640d" -> "sha256:80bb86a2b88239702b59feb7a8a1e21730efa3cceba1d9953212c3684e63d73e" [label=""];
}

