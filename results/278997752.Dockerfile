[app/sources/278997752.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:2619a6289c564afa0db35f297404a7cf6cc19d2b5c2cdaeef723a8de08361098" [label="mkdir{path=/app/Library.ApiGateway}" shape="note"];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" [label="docker-image://docker.io/microsoft/aspnetcore-build:2.0" shape="ellipse"];
  "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" [label="mkdir{path=/app}" shape="note"];
  "sha256:5d4d9ebb8cf2e6988a9368840d8d178d3d67bb35c91a23831553e52a1b47f3e5" [label="local://context" shape="ellipse"];
  "sha256:b0ae7109e3f08f367337d570d80c34a71b92960e1cbe23396a8f5dc473975843" [label="copy{src=/Library.ApiGateway, dest=/app/Library.ApiGateway/}" shape="note"];
  "sha256:6f0fc97208b60942c5ee9aec9a6a3318a5039ff6ae7f83dc1cc3620d93a12ec2" [label="mkdir{path=/app/Library.ApiGateway}" shape="note"];
  "sha256:7a34ca898f33c9899443541b523a68aaf14a13e783b8cc3e7bec08a2759d2357" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:7678fc7642e082b040b1e5f485aa5742bc8dc993fb869b24275ff242da0595c4" [label="mkdir{path=/app/Library.ApiGateway}" shape="note"];
  "sha256:236506fdff056e9d922ad963d7dac747a20273760d611250b5f584ee87e03c71" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:ca01f55b09d78e5f2ddd1f96c4aef2646f55a8dc41fcd337c4c16f492eaa3c65" [label="copy{src=/app/Library.ApiGateway/out, dest=/app/Library.ApiGateway/}" shape="note"];
  "sha256:849696b0d91e24c7f91f2d393bd94c7495ef12235aa2ef50f0cb301e9be42144" [label="sha256:849696b0d91e24c7f91f2d393bd94c7495ef12235aa2ef50f0cb301e9be42144" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:2619a6289c564afa0db35f297404a7cf6cc19d2b5c2cdaeef723a8de08361098" [label=""];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" -> "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" [label=""];
  "sha256:96f999fd37c37b0d333bfa222ede7be7456310e48b49850d7e2ad27f0f290c65" -> "sha256:b0ae7109e3f08f367337d570d80c34a71b92960e1cbe23396a8f5dc473975843" [label=""];
  "sha256:5d4d9ebb8cf2e6988a9368840d8d178d3d67bb35c91a23831553e52a1b47f3e5" -> "sha256:b0ae7109e3f08f367337d570d80c34a71b92960e1cbe23396a8f5dc473975843" [label=""];
  "sha256:b0ae7109e3f08f367337d570d80c34a71b92960e1cbe23396a8f5dc473975843" -> "sha256:6f0fc97208b60942c5ee9aec9a6a3318a5039ff6ae7f83dc1cc3620d93a12ec2" [label=""];
  "sha256:6f0fc97208b60942c5ee9aec9a6a3318a5039ff6ae7f83dc1cc3620d93a12ec2" -> "sha256:7a34ca898f33c9899443541b523a68aaf14a13e783b8cc3e7bec08a2759d2357" [label=""];
  "sha256:7a34ca898f33c9899443541b523a68aaf14a13e783b8cc3e7bec08a2759d2357" -> "sha256:7678fc7642e082b040b1e5f485aa5742bc8dc993fb869b24275ff242da0595c4" [label=""];
  "sha256:7678fc7642e082b040b1e5f485aa5742bc8dc993fb869b24275ff242da0595c4" -> "sha256:236506fdff056e9d922ad963d7dac747a20273760d611250b5f584ee87e03c71" [label=""];
  "sha256:2619a6289c564afa0db35f297404a7cf6cc19d2b5c2cdaeef723a8de08361098" -> "sha256:ca01f55b09d78e5f2ddd1f96c4aef2646f55a8dc41fcd337c4c16f492eaa3c65" [label=""];
  "sha256:236506fdff056e9d922ad963d7dac747a20273760d611250b5f584ee87e03c71" -> "sha256:ca01f55b09d78e5f2ddd1f96c4aef2646f55a8dc41fcd337c4c16f492eaa3c65" [label=""];
  "sha256:ca01f55b09d78e5f2ddd1f96c4aef2646f55a8dc41fcd337c4c16f492eaa3c65" -> "sha256:849696b0d91e24c7f91f2d393bd94c7495ef12235aa2ef50f0cb301e9be42144" [label=""];
}

