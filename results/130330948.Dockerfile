[app/sources/130330948.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label="mkdir{path=/app}" shape="note"];
  "sha256:181b6289add25755d924a394362d85e2f5149410bdfc01f2635c8d82211dca43" [label="local://context" shape="ellipse"];
  "sha256:b01105d128de8940ea383ac979475e13b2f53987bddfd80c4deb9b552e4c6b71" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:aae7d9dcf58fcef2de16c8ecec71207fc45aeff118d0c50d2cce48d869f5dbb5" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:506db416c812944ca7fbc21cfc0bb194ae021d55c65e1fa6300d87bc754d90ba" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:a8f16e8c2a1f8d7d23e3fa0b5110e181519fd78a1b8275a793a53377af024189" [label="copy{src=/app/src/IdentityServer4.Admin/out, dest=/app/}" shape="note"];
  "sha256:dffd6b677b6c68ee746edb71c8eec14f131034691afa071565d20f8984208201" [label="/bin/sh -c mv /etc/apt/sources.list /etc/apt/sources.list.bak &&     echo \"deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\" >/etc/apt/sources.list &&     echo \"deb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\" >>/etc/apt/sources.list" shape="box"];
  "sha256:bc1e6fcab4b0f5acfa7d5292c2d7ef5ac5c9b927d33cbf87c7d25e65840e6693" [label="/bin/sh -c apt-get update && apt-get install -y libfontconfig1" shape="box"];
  "sha256:621540af315254454b3f4f32ac03f74270bb4b1abcddac626a3ae9073edf54cf" [label="sha256:621540af315254454b3f4f32ac03f74270bb4b1abcddac626a3ae9073edf54cf" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label=""];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" -> "sha256:b01105d128de8940ea383ac979475e13b2f53987bddfd80c4deb9b552e4c6b71" [label=""];
  "sha256:181b6289add25755d924a394362d85e2f5149410bdfc01f2635c8d82211dca43" -> "sha256:b01105d128de8940ea383ac979475e13b2f53987bddfd80c4deb9b552e4c6b71" [label=""];
  "sha256:b01105d128de8940ea383ac979475e13b2f53987bddfd80c4deb9b552e4c6b71" -> "sha256:aae7d9dcf58fcef2de16c8ecec71207fc45aeff118d0c50d2cce48d869f5dbb5" [label=""];
  "sha256:aae7d9dcf58fcef2de16c8ecec71207fc45aeff118d0c50d2cce48d869f5dbb5" -> "sha256:506db416c812944ca7fbc21cfc0bb194ae021d55c65e1fa6300d87bc754d90ba" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:a8f16e8c2a1f8d7d23e3fa0b5110e181519fd78a1b8275a793a53377af024189" [label=""];
  "sha256:506db416c812944ca7fbc21cfc0bb194ae021d55c65e1fa6300d87bc754d90ba" -> "sha256:a8f16e8c2a1f8d7d23e3fa0b5110e181519fd78a1b8275a793a53377af024189" [label=""];
  "sha256:a8f16e8c2a1f8d7d23e3fa0b5110e181519fd78a1b8275a793a53377af024189" -> "sha256:dffd6b677b6c68ee746edb71c8eec14f131034691afa071565d20f8984208201" [label=""];
  "sha256:dffd6b677b6c68ee746edb71c8eec14f131034691afa071565d20f8984208201" -> "sha256:bc1e6fcab4b0f5acfa7d5292c2d7ef5ac5c9b927d33cbf87c7d25e65840e6693" [label=""];
  "sha256:bc1e6fcab4b0f5acfa7d5292c2d7ef5ac5c9b927d33cbf87c7d25e65840e6693" -> "sha256:621540af315254454b3f4f32ac03f74270bb4b1abcddac626a3ae9073edf54cf" [label=""];
}

