[app/sources/226831813.Dockerfile]
digraph {
  "sha256:077ad02dfccf9eebae8038e26333afc34694180d38165448d99a6b59cd091834" [label="docker-image://docker.io/microsoft/dotnet:2.1-runtime-alpine" shape="ellipse"];
  "sha256:d80847d7ca64dd36dd46e48b571e3d0fca730626911be715d85e0b6cbbe37835" [label="mkdir{path=/app}" shape="note"];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-alpine" shape="ellipse"];
  "sha256:808653f3b6c1667865f6b402b47b066b97f48d5dd4747be1fe10f89cd12f2030" [label="mkdir{path=/app}" shape="note"];
  "sha256:7ea8094178ebdb8db24934e8de9e7b1e05a383365826707c0fd0b578cd3a361e" [label="local://context" shape="ellipse"];
  "sha256:bd781c880a89d97f4fa01a0c7d2274d9e223d76c63a5af478ffbaf971f13a164" [label="copy{src=/opcpublisher/*.csproj, dest=/app/opcpublisher/}" shape="note"];
  "sha256:39f86da05b41dff474d49607580c40899f8b791cc310e0527b6a6dd6436e0c58" [label="mkdir{path=/app/opcpublisher}" shape="note"];
  "sha256:c8bcf9d8f77702cf57137cac00ea5dcccfa191d306ba4f5b941574a0f84eba41" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:509b09ddb01ccd8fba10e5e9c8730c5c81637b3444de5917eb2b49711e62cd49" [label="mkdir{path=/app}" shape="note"];
  "sha256:60ceaa271b242ecbeb2612c72c2a1509f38283c6f816a810e3796e2e2068ac52" [label="copy{src=/opcpublisher, dest=/app/opcpublisher/}" shape="note"];
  "sha256:ede2ed7cdd0bf22b65ddac1186b80034db8c43e03feb335234da6653abbc7f4a" [label="mkdir{path=/app/opcpublisher}" shape="note"];
  "sha256:b2b12fe80cc2777b45c500b3713fae9ae1b6f335962eb2a73b083df993aad168" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:916a2050e8019c5021d991a88b39c61a78009c88ba9bb1a2f10488f0b70e4b3b" [label="copy{src=/app/opcpublisher/out, dest=/app/}" shape="note"];
  "sha256:65849137f4ac91eb64a5f7f9991cbeed5f8b1c55af461ef51ae545e5cdb1966a" [label="mkdir{path=/appdata}" shape="note"];
  "sha256:04e476ab0001fb5243d589ab8c33b856325475069f6e6d1d6c576ee49f866acb" [label="sha256:04e476ab0001fb5243d589ab8c33b856325475069f6e6d1d6c576ee49f866acb" shape="plaintext"];
  "sha256:077ad02dfccf9eebae8038e26333afc34694180d38165448d99a6b59cd091834" -> "sha256:d80847d7ca64dd36dd46e48b571e3d0fca730626911be715d85e0b6cbbe37835" [label=""];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" -> "sha256:808653f3b6c1667865f6b402b47b066b97f48d5dd4747be1fe10f89cd12f2030" [label=""];
  "sha256:808653f3b6c1667865f6b402b47b066b97f48d5dd4747be1fe10f89cd12f2030" -> "sha256:bd781c880a89d97f4fa01a0c7d2274d9e223d76c63a5af478ffbaf971f13a164" [label=""];
  "sha256:7ea8094178ebdb8db24934e8de9e7b1e05a383365826707c0fd0b578cd3a361e" -> "sha256:bd781c880a89d97f4fa01a0c7d2274d9e223d76c63a5af478ffbaf971f13a164" [label=""];
  "sha256:bd781c880a89d97f4fa01a0c7d2274d9e223d76c63a5af478ffbaf971f13a164" -> "sha256:39f86da05b41dff474d49607580c40899f8b791cc310e0527b6a6dd6436e0c58" [label=""];
  "sha256:39f86da05b41dff474d49607580c40899f8b791cc310e0527b6a6dd6436e0c58" -> "sha256:c8bcf9d8f77702cf57137cac00ea5dcccfa191d306ba4f5b941574a0f84eba41" [label=""];
  "sha256:c8bcf9d8f77702cf57137cac00ea5dcccfa191d306ba4f5b941574a0f84eba41" -> "sha256:509b09ddb01ccd8fba10e5e9c8730c5c81637b3444de5917eb2b49711e62cd49" [label=""];
  "sha256:509b09ddb01ccd8fba10e5e9c8730c5c81637b3444de5917eb2b49711e62cd49" -> "sha256:60ceaa271b242ecbeb2612c72c2a1509f38283c6f816a810e3796e2e2068ac52" [label=""];
  "sha256:7ea8094178ebdb8db24934e8de9e7b1e05a383365826707c0fd0b578cd3a361e" -> "sha256:60ceaa271b242ecbeb2612c72c2a1509f38283c6f816a810e3796e2e2068ac52" [label=""];
  "sha256:60ceaa271b242ecbeb2612c72c2a1509f38283c6f816a810e3796e2e2068ac52" -> "sha256:ede2ed7cdd0bf22b65ddac1186b80034db8c43e03feb335234da6653abbc7f4a" [label=""];
  "sha256:ede2ed7cdd0bf22b65ddac1186b80034db8c43e03feb335234da6653abbc7f4a" -> "sha256:b2b12fe80cc2777b45c500b3713fae9ae1b6f335962eb2a73b083df993aad168" [label=""];
  "sha256:d80847d7ca64dd36dd46e48b571e3d0fca730626911be715d85e0b6cbbe37835" -> "sha256:916a2050e8019c5021d991a88b39c61a78009c88ba9bb1a2f10488f0b70e4b3b" [label=""];
  "sha256:b2b12fe80cc2777b45c500b3713fae9ae1b6f335962eb2a73b083df993aad168" -> "sha256:916a2050e8019c5021d991a88b39c61a78009c88ba9bb1a2f10488f0b70e4b3b" [label=""];
  "sha256:916a2050e8019c5021d991a88b39c61a78009c88ba9bb1a2f10488f0b70e4b3b" -> "sha256:65849137f4ac91eb64a5f7f9991cbeed5f8b1c55af461ef51ae545e5cdb1966a" [label=""];
  "sha256:65849137f4ac91eb64a5f7f9991cbeed5f8b1c55af461ef51ae545e5cdb1966a" -> "sha256:04e476ab0001fb5243d589ab8c33b856325475069f6e6d1d6c576ee49f866acb" [label=""];
}

