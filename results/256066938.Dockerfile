[app/sources/256066938.Dockerfile]
digraph {
  "sha256:dd1546182bfbdba448c6a29be08db55d56a55d6a3c00c280c863a898458ec80e" [label="docker-image://docker.io/microsoft/dotnet:2.0-runtime-deps" shape="ellipse"];
  "sha256:2893e8d08714c2ee684fd85b64a12f1d0f89386c68bd13bb7fdf62d196bc112f" [label="mkdir{path=/app}" shape="note"];
  "sha256:c416a40b4a4c29150159c9098595d24fbb07b7e057ce7278e145c4e52ef31eda" [label="docker-image://docker.io/microsoft/dotnet:2.0-sdk" shape="ellipse"];
  "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" [label="mkdir{path=/app}" shape="note"];
  "sha256:ba53a3d5cc2b510a13bb3af8c21e140c6a567631e2e02e13dad1d0c7c5d50935" [label="local://context" shape="ellipse"];
  "sha256:4b7e1c1ddde16791a0dd136c3e705f6ee02b078dc4b40f8258cad735408012ff" [label="copy{src=/nuget.config, dest=/app/}" shape="note"];
  "sha256:813420dff1fd3f13ff97095c283d2efc0a9b3e07b78d4613acc264238c1446c1" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:46cf236416157d7d0c4a159fcc9c1350c5cb5f3b94783458a93eeb720f34a85f" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:b9cdda676b7816f96d431f76676c7f17eb4f91bbd6fceaebe2e069727315cf91" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:e8c8e7f7b50b0ba4b41c6615d0d353deb7adf99a02e56045fcb009e5ea7c13b9" [label="/bin/sh -c dotnet publish -c Release -r linux-x64 -o out" shape="box"];
  "sha256:a8bf1406cfa2e8518dfe43d2b1eea179cecb09f782bc50ac1f62aa60366cde3e" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:ce0215e8e5b2f1db2b35aac28fa671650b70dd85253301cd39d353e61d94a068" [label="sha256:ce0215e8e5b2f1db2b35aac28fa671650b70dd85253301cd39d353e61d94a068" shape="plaintext"];
  "sha256:dd1546182bfbdba448c6a29be08db55d56a55d6a3c00c280c863a898458ec80e" -> "sha256:2893e8d08714c2ee684fd85b64a12f1d0f89386c68bd13bb7fdf62d196bc112f" [label=""];
  "sha256:c416a40b4a4c29150159c9098595d24fbb07b7e057ce7278e145c4e52ef31eda" -> "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" [label=""];
  "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" -> "sha256:4b7e1c1ddde16791a0dd136c3e705f6ee02b078dc4b40f8258cad735408012ff" [label=""];
  "sha256:ba53a3d5cc2b510a13bb3af8c21e140c6a567631e2e02e13dad1d0c7c5d50935" -> "sha256:4b7e1c1ddde16791a0dd136c3e705f6ee02b078dc4b40f8258cad735408012ff" [label=""];
  "sha256:4b7e1c1ddde16791a0dd136c3e705f6ee02b078dc4b40f8258cad735408012ff" -> "sha256:813420dff1fd3f13ff97095c283d2efc0a9b3e07b78d4613acc264238c1446c1" [label=""];
  "sha256:ba53a3d5cc2b510a13bb3af8c21e140c6a567631e2e02e13dad1d0c7c5d50935" -> "sha256:813420dff1fd3f13ff97095c283d2efc0a9b3e07b78d4613acc264238c1446c1" [label=""];
  "sha256:813420dff1fd3f13ff97095c283d2efc0a9b3e07b78d4613acc264238c1446c1" -> "sha256:46cf236416157d7d0c4a159fcc9c1350c5cb5f3b94783458a93eeb720f34a85f" [label=""];
  "sha256:46cf236416157d7d0c4a159fcc9c1350c5cb5f3b94783458a93eeb720f34a85f" -> "sha256:b9cdda676b7816f96d431f76676c7f17eb4f91bbd6fceaebe2e069727315cf91" [label=""];
  "sha256:ba53a3d5cc2b510a13bb3af8c21e140c6a567631e2e02e13dad1d0c7c5d50935" -> "sha256:b9cdda676b7816f96d431f76676c7f17eb4f91bbd6fceaebe2e069727315cf91" [label=""];
  "sha256:b9cdda676b7816f96d431f76676c7f17eb4f91bbd6fceaebe2e069727315cf91" -> "sha256:e8c8e7f7b50b0ba4b41c6615d0d353deb7adf99a02e56045fcb009e5ea7c13b9" [label=""];
  "sha256:2893e8d08714c2ee684fd85b64a12f1d0f89386c68bd13bb7fdf62d196bc112f" -> "sha256:a8bf1406cfa2e8518dfe43d2b1eea179cecb09f782bc50ac1f62aa60366cde3e" [label=""];
  "sha256:e8c8e7f7b50b0ba4b41c6615d0d353deb7adf99a02e56045fcb009e5ea7c13b9" -> "sha256:a8bf1406cfa2e8518dfe43d2b1eea179cecb09f782bc50ac1f62aa60366cde3e" [label=""];
  "sha256:a8bf1406cfa2e8518dfe43d2b1eea179cecb09f782bc50ac1f62aa60366cde3e" -> "sha256:ce0215e8e5b2f1db2b35aac28fa671650b70dd85253301cd39d353e61d94a068" [label=""];
}

