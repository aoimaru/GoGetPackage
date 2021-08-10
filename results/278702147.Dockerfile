[app/sources/278702147.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" [label="docker-image://docker.io/microsoft/aspnetcore-build:2.0" shape="ellipse"];
  "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" [label="mkdir{path=/app}" shape="note"];
  "sha256:86cb5a034e6fff266b18cdc46029e72de5f4cb9e07c4486b2af5e454be6135ea" [label="local://context" shape="ellipse"];
  "sha256:5748a7d6404e4ebc58a8e1d9473ca285b364ff6050cfc9dac0755803b38aa514" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:a26a8aaf0f99908b5e3305c7b3a4508d1e9e0073ab0e8e621d57a1dee1d0b072" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:9ce5b71d650a93a04185185a2a78817ce405130a8927749342e780f1ef3708be" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:3a2e836dadd367d5778b700b253fa46e9757745d849dd47447dddc72a40cade6" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:2d9635832f55d0dd6d376ab11e61e2c63fc738e99934058e0bdcd02002decbe3" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:91a954ee26ffe2244e1485c21c3af80b254c77df2e528f19c88b9e81d2dff069" [label="sha256:91a954ee26ffe2244e1485c21c3af80b254c77df2e528f19c88b9e81d2dff069" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label=""];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" -> "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" [label=""];
  "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" -> "sha256:5748a7d6404e4ebc58a8e1d9473ca285b364ff6050cfc9dac0755803b38aa514" [label=""];
  "sha256:86cb5a034e6fff266b18cdc46029e72de5f4cb9e07c4486b2af5e454be6135ea" -> "sha256:5748a7d6404e4ebc58a8e1d9473ca285b364ff6050cfc9dac0755803b38aa514" [label=""];
  "sha256:5748a7d6404e4ebc58a8e1d9473ca285b364ff6050cfc9dac0755803b38aa514" -> "sha256:a26a8aaf0f99908b5e3305c7b3a4508d1e9e0073ab0e8e621d57a1dee1d0b072" [label=""];
  "sha256:a26a8aaf0f99908b5e3305c7b3a4508d1e9e0073ab0e8e621d57a1dee1d0b072" -> "sha256:9ce5b71d650a93a04185185a2a78817ce405130a8927749342e780f1ef3708be" [label=""];
  "sha256:86cb5a034e6fff266b18cdc46029e72de5f4cb9e07c4486b2af5e454be6135ea" -> "sha256:9ce5b71d650a93a04185185a2a78817ce405130a8927749342e780f1ef3708be" [label=""];
  "sha256:9ce5b71d650a93a04185185a2a78817ce405130a8927749342e780f1ef3708be" -> "sha256:3a2e836dadd367d5778b700b253fa46e9757745d849dd47447dddc72a40cade6" [label=""];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" -> "sha256:2d9635832f55d0dd6d376ab11e61e2c63fc738e99934058e0bdcd02002decbe3" [label=""];
  "sha256:3a2e836dadd367d5778b700b253fa46e9757745d849dd47447dddc72a40cade6" -> "sha256:2d9635832f55d0dd6d376ab11e61e2c63fc738e99934058e0bdcd02002decbe3" [label=""];
  "sha256:2d9635832f55d0dd6d376ab11e61e2c63fc738e99934058e0bdcd02002decbe3" -> "sha256:91a954ee26ffe2244e1485c21c3af80b254c77df2e528f19c88b9e81d2dff069" [label=""];
}

