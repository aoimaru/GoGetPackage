[app/sources/320556993.Dockerfile]
digraph {
  "sha256:73331f90e9317a1d1f151a6cd53d9d95151b2fee31628dfab8969e26a0685e66" [label="local://context" shape="ellipse"];
  "sha256:0354af160814e63e245b8bd0c50c630f238128ab758c0956430c642215d5952a" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime:2.1.10-nanoserver-1809@sha256:5595baf37235ee2ac885cc2427cc9dcb6c60fe75870066a02552267772b5cbe9" shape="ellipse"];
  "sha256:55da2b56f203b717d67d3b49c524c315754a51976608054d41d1a4b8d1d9b721" [label="mkdir{path=/app}" shape="note"];
  "sha256:947ab79cf9a9418ec2cbe825f59943dfbc11e8cfd0c863c502b47c7da5ea6245" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:28d51baac41f42455c17defe09faec7e2aa845c960df218497a4165d9805d765" [label="sha256:28d51baac41f42455c17defe09faec7e2aa845c960df218497a4165d9805d765" shape="plaintext"];
  "sha256:0354af160814e63e245b8bd0c50c630f238128ab758c0956430c642215d5952a" -> "sha256:55da2b56f203b717d67d3b49c524c315754a51976608054d41d1a4b8d1d9b721" [label=""];
  "sha256:55da2b56f203b717d67d3b49c524c315754a51976608054d41d1a4b8d1d9b721" -> "sha256:947ab79cf9a9418ec2cbe825f59943dfbc11e8cfd0c863c502b47c7da5ea6245" [label=""];
  "sha256:73331f90e9317a1d1f151a6cd53d9d95151b2fee31628dfab8969e26a0685e66" -> "sha256:947ab79cf9a9418ec2cbe825f59943dfbc11e8cfd0c863c502b47c7da5ea6245" [label=""];
  "sha256:947ab79cf9a9418ec2cbe825f59943dfbc11e8cfd0c863c502b47c7da5ea6245" -> "sha256:28d51baac41f42455c17defe09faec7e2aa845c960df218497a4165d9805d765" [label=""];
}

