[app/sources/274694640.Dockerfile]
digraph {
  "sha256:0c9343dc77c41494737ab8417337290d705a8bd01504d6f4b9ed41ee95435ede" [label="docker-image://docker.io/microsoft/dotnet:2.2-runtime-deps-alpine" shape="ellipse"];
  "sha256:e86525a7307e2068e0060d9eac77a9535ef07486855577c902af626491dc04ed" [label="mkdir{path=/publish}" shape="note"];
  "sha256:d8365fb270092d98ac2028ea2cb00cf7c4fb2651e7b8888eadeadd6b3809bd81" [label="local://context" shape="ellipse"];
  "sha256:bef04210e22fb9fc602122f0280f8b77e7d59bfbf4c44088222b8dc3c385fd3e" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk-alpine" shape="ellipse"];
  "sha256:9ade7c38195c4c1189360a2f7c4d08e73302729e3913a16005d42c7000d84b2b" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:8d59bdc083dd7f1efffbe0f0ca7554d751459292a71cc410d7b3f95496ef2fe1" [label="/bin/sh -c dotnet publish PointOfSale.Api.Web/PointOfSale.Api.Web.csproj -c Release  -o /publish -r alpine-x64 --self-contained" shape="box"];
  "sha256:085256bab034b889ef99ca74c48015f77c4834304365612fecde098abe4f43f4" [label="copy{src=/publish, dest=/publish/}" shape="note"];
  "sha256:ded71846c1a338fd3ac9f306e5b93b33724b417ecd9174fcf250736c706727b3" [label="mkdir{path=/publish/app}" shape="note"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:26516aef30f4a5cdeff42c582b31dfd86284e964f7f6fb28ba1d057ff69008dd" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:abdff55962c2dfd3e3e8645f2e411a7df7304d6618c8991022d9404ff5d01cf1" [label="mkdir{path=/PointOfSale.Api.TypeScript/src/react}" shape="note"];
  "sha256:b342704b47dbf43f74c2242fffc1705bed0e41cbf0ebaf6154ddbee1f32f5621" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e9095e52002dff89ede1d121260a71ae426af61da98f003cc36e66f7223571a4" [label="/bin/sh -c npm run build-docker" shape="box"];
  "sha256:9d35e19d9aef75f8afae62dbaa9f50b90c4a3ab69be1f2143c015392b722159d" [label="copy{src=/PointOfSale.Api.TypeScript/src/react/PointOfSale.Api.TypeScript/src/react/build, dest=/publish/app/}" shape="note"];
  "sha256:e549ac53fdb8d43a0a4518d5d4d27f84d4a538879ee0081cd3a4f0caa938c955" [label="mkdir{path=/publish}" shape="note"];
  "sha256:9f6540803b579244fac27cbac5084f069c7f414ae3df711bef117556c97f9b83" [label="sha256:9f6540803b579244fac27cbac5084f069c7f414ae3df711bef117556c97f9b83" shape="plaintext"];
  "sha256:0c9343dc77c41494737ab8417337290d705a8bd01504d6f4b9ed41ee95435ede" -> "sha256:e86525a7307e2068e0060d9eac77a9535ef07486855577c902af626491dc04ed" [label=""];
  "sha256:bef04210e22fb9fc602122f0280f8b77e7d59bfbf4c44088222b8dc3c385fd3e" -> "sha256:9ade7c38195c4c1189360a2f7c4d08e73302729e3913a16005d42c7000d84b2b" [label=""];
  "sha256:d8365fb270092d98ac2028ea2cb00cf7c4fb2651e7b8888eadeadd6b3809bd81" -> "sha256:9ade7c38195c4c1189360a2f7c4d08e73302729e3913a16005d42c7000d84b2b" [label=""];
  "sha256:9ade7c38195c4c1189360a2f7c4d08e73302729e3913a16005d42c7000d84b2b" -> "sha256:8d59bdc083dd7f1efffbe0f0ca7554d751459292a71cc410d7b3f95496ef2fe1" [label=""];
  "sha256:e86525a7307e2068e0060d9eac77a9535ef07486855577c902af626491dc04ed" -> "sha256:085256bab034b889ef99ca74c48015f77c4834304365612fecde098abe4f43f4" [label=""];
  "sha256:8d59bdc083dd7f1efffbe0f0ca7554d751459292a71cc410d7b3f95496ef2fe1" -> "sha256:085256bab034b889ef99ca74c48015f77c4834304365612fecde098abe4f43f4" [label=""];
  "sha256:085256bab034b889ef99ca74c48015f77c4834304365612fecde098abe4f43f4" -> "sha256:ded71846c1a338fd3ac9f306e5b93b33724b417ecd9174fcf250736c706727b3" [label=""];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:26516aef30f4a5cdeff42c582b31dfd86284e964f7f6fb28ba1d057ff69008dd" [label=""];
  "sha256:d8365fb270092d98ac2028ea2cb00cf7c4fb2651e7b8888eadeadd6b3809bd81" -> "sha256:26516aef30f4a5cdeff42c582b31dfd86284e964f7f6fb28ba1d057ff69008dd" [label=""];
  "sha256:26516aef30f4a5cdeff42c582b31dfd86284e964f7f6fb28ba1d057ff69008dd" -> "sha256:abdff55962c2dfd3e3e8645f2e411a7df7304d6618c8991022d9404ff5d01cf1" [label=""];
  "sha256:abdff55962c2dfd3e3e8645f2e411a7df7304d6618c8991022d9404ff5d01cf1" -> "sha256:b342704b47dbf43f74c2242fffc1705bed0e41cbf0ebaf6154ddbee1f32f5621" [label=""];
  "sha256:b342704b47dbf43f74c2242fffc1705bed0e41cbf0ebaf6154ddbee1f32f5621" -> "sha256:e9095e52002dff89ede1d121260a71ae426af61da98f003cc36e66f7223571a4" [label=""];
  "sha256:ded71846c1a338fd3ac9f306e5b93b33724b417ecd9174fcf250736c706727b3" -> "sha256:9d35e19d9aef75f8afae62dbaa9f50b90c4a3ab69be1f2143c015392b722159d" [label=""];
  "sha256:e9095e52002dff89ede1d121260a71ae426af61da98f003cc36e66f7223571a4" -> "sha256:9d35e19d9aef75f8afae62dbaa9f50b90c4a3ab69be1f2143c015392b722159d" [label=""];
  "sha256:9d35e19d9aef75f8afae62dbaa9f50b90c4a3ab69be1f2143c015392b722159d" -> "sha256:e549ac53fdb8d43a0a4518d5d4d27f84d4a538879ee0081cd3a4f0caa938c955" [label=""];
  "sha256:e549ac53fdb8d43a0a4518d5d4d27f84d4a538879ee0081cd3a4f0caa938c955" -> "sha256:9f6540803b579244fac27cbac5084f069c7f414ae3df711bef117556c97f9b83" [label=""];
}

