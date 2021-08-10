[app/sources/196927128.Dockerfile]
digraph {
  "sha256:94c8e155129cd9767fcd688ce4e6d01de022fe45f85ce389b65ef62b1bad18d7" [label="docker-image://docker.io/library/python:3.6@sha256:2f164d0ac525779ce1f3b1e27422fb099c013270f88e2cbfa96f110b0858fa55" shape="ellipse"];
  "sha256:bbb18cef7e450c3eecdb01e9cdafbd925671dbd03e442709ee406630d0dc1298" [label="/bin/sh -c apt-get update -y && apt-get install -y     libopus-dev     libav-tools     tesseract-ocr" shape="box"];
  "sha256:3ebceb2349dc27c392da736c1ef41e5d98e1374a7ecabec8c0c9ad8b9cab37e1" [label="/bin/sh -c curl -L https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz         | tar xJ --strip-components=1 -C /usr/ &&    ACCEPT_HIGHCHARTS_LICENSE=YES npm i -g highcharts-export-server --unsafe-perm" shape="box"];
  "sha256:bcaaf03021bf41427aaebd94703a5a01f5e0f24b8c8da07816ac60cbc241dcbb" [label="local://context" shape="ellipse"];
  "sha256:848b716cad298a3df5af0ca3a0e88fc96a9b50708fb739aba83bc5e912cf3a68" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3172eb1b6fd0eadcd0f4b6b5b97b8f4122eb1f6a7ef746ce80db13de2c8906b9" [label="mkdir{path=/app}" shape="note"];
  "sha256:b72f046c4986ab2bd494bb2f56e5f5167615a27f690369485bd5155f326e104c" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:a411d1d3e18df2e1f2fc14d28540d50f621f8d74bb1be7e074a7ad92200cd542" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:71f017f46e8f04da81e96ec9c899bc45dd0cc8592528659383fad755e3486bc8" [label="/bin/sh -c pip install     --no-cache-dir     -r requirements.txt" shape="box"];
  "sha256:1393ed47d7bccb463c22179104c54073a95b8cd66ffcec3498ac8cdb13bb4679" [label="sha256:1393ed47d7bccb463c22179104c54073a95b8cd66ffcec3498ac8cdb13bb4679" shape="plaintext"];
  "sha256:94c8e155129cd9767fcd688ce4e6d01de022fe45f85ce389b65ef62b1bad18d7" -> "sha256:bbb18cef7e450c3eecdb01e9cdafbd925671dbd03e442709ee406630d0dc1298" [label=""];
  "sha256:bbb18cef7e450c3eecdb01e9cdafbd925671dbd03e442709ee406630d0dc1298" -> "sha256:3ebceb2349dc27c392da736c1ef41e5d98e1374a7ecabec8c0c9ad8b9cab37e1" [label=""];
  "sha256:3ebceb2349dc27c392da736c1ef41e5d98e1374a7ecabec8c0c9ad8b9cab37e1" -> "sha256:848b716cad298a3df5af0ca3a0e88fc96a9b50708fb739aba83bc5e912cf3a68" [label=""];
  "sha256:bcaaf03021bf41427aaebd94703a5a01f5e0f24b8c8da07816ac60cbc241dcbb" -> "sha256:848b716cad298a3df5af0ca3a0e88fc96a9b50708fb739aba83bc5e912cf3a68" [label=""];
  "sha256:848b716cad298a3df5af0ca3a0e88fc96a9b50708fb739aba83bc5e912cf3a68" -> "sha256:3172eb1b6fd0eadcd0f4b6b5b97b8f4122eb1f6a7ef746ce80db13de2c8906b9" [label=""];
  "sha256:3172eb1b6fd0eadcd0f4b6b5b97b8f4122eb1f6a7ef746ce80db13de2c8906b9" -> "sha256:b72f046c4986ab2bd494bb2f56e5f5167615a27f690369485bd5155f326e104c" [label=""];
  "sha256:b72f046c4986ab2bd494bb2f56e5f5167615a27f690369485bd5155f326e104c" -> "sha256:a411d1d3e18df2e1f2fc14d28540d50f621f8d74bb1be7e074a7ad92200cd542" [label=""];
  "sha256:bcaaf03021bf41427aaebd94703a5a01f5e0f24b8c8da07816ac60cbc241dcbb" -> "sha256:a411d1d3e18df2e1f2fc14d28540d50f621f8d74bb1be7e074a7ad92200cd542" [label=""];
  "sha256:a411d1d3e18df2e1f2fc14d28540d50f621f8d74bb1be7e074a7ad92200cd542" -> "sha256:71f017f46e8f04da81e96ec9c899bc45dd0cc8592528659383fad755e3486bc8" [label=""];
  "sha256:71f017f46e8f04da81e96ec9c899bc45dd0cc8592528659383fad755e3486bc8" -> "sha256:1393ed47d7bccb463c22179104c54073a95b8cd66ffcec3498ac8cdb13bb4679" [label=""];
}

