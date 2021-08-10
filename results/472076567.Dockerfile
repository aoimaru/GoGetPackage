[app/sources/472076567.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:8e97721be164cd406139f4ebf8490d6fe5303b2b6b536b704825cffbc880b624" [label="local://context" shape="ellipse"];
  "sha256:b6e560fd0d6de1bc4918a15eb763c69816275be600bff21b80fe588eeb1d8007" [label="copy{src=/bin/Debug/netcoreapp2.2/publish, dest=/app/}" shape="note"];
  "sha256:45904a88844ffcc92653babdee2feed71bdee56240ab60df9afec86b17746ecb" [label="sha256:45904a88844ffcc92653babdee2feed71bdee56240ab60df9afec86b17746ecb" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:b6e560fd0d6de1bc4918a15eb763c69816275be600bff21b80fe588eeb1d8007" [label=""];
  "sha256:8e97721be164cd406139f4ebf8490d6fe5303b2b6b536b704825cffbc880b624" -> "sha256:b6e560fd0d6de1bc4918a15eb763c69816275be600bff21b80fe588eeb1d8007" [label=""];
  "sha256:b6e560fd0d6de1bc4918a15eb763c69816275be600bff21b80fe588eeb1d8007" -> "sha256:45904a88844ffcc92653babdee2feed71bdee56240ab60df9afec86b17746ecb" [label=""];
}

