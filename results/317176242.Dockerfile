[app/sources/317176242.Dockerfile]
digraph {
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:14fef5f63ebe4603bc9633428f1d7cc53b771663e82095f369228925c80f33d0" [label="local://context" shape="ellipse"];
  "sha256:6b9c703238f30c103d2ae96033746931ae29f13cf87fde244210f1f5d1831f72" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:4990f5e1df9d6e8483abfc6a1e38222171c558eb0bdf7cc567817bd9b4f62cce" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:8b46e555f508a1e88cf8b31691f11cb2d3a5e958812bc93b3a3df15ebba39cfe" [label="/bin/sh -c dotnet publish Squidex.Identity/Squidex.Identity.csproj --output /out/ --configuration Release" shape="box"];
  "sha256:06c25a0fc970f8b7cc5a3682d0a24529c51b8ad265690c41fb3575716c41e341" [label="sha256:06c25a0fc970f8b7cc5a3682d0a24529c51b8ad265690c41fb3575716c41e341" shape="plaintext"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:6b9c703238f30c103d2ae96033746931ae29f13cf87fde244210f1f5d1831f72" [label=""];
  "sha256:14fef5f63ebe4603bc9633428f1d7cc53b771663e82095f369228925c80f33d0" -> "sha256:6b9c703238f30c103d2ae96033746931ae29f13cf87fde244210f1f5d1831f72" [label=""];
  "sha256:6b9c703238f30c103d2ae96033746931ae29f13cf87fde244210f1f5d1831f72" -> "sha256:4990f5e1df9d6e8483abfc6a1e38222171c558eb0bdf7cc567817bd9b4f62cce" [label=""];
  "sha256:4990f5e1df9d6e8483abfc6a1e38222171c558eb0bdf7cc567817bd9b4f62cce" -> "sha256:8b46e555f508a1e88cf8b31691f11cb2d3a5e958812bc93b3a3df15ebba39cfe" [label=""];
  "sha256:8b46e555f508a1e88cf8b31691f11cb2d3a5e958812bc93b3a3df15ebba39cfe" -> "sha256:06c25a0fc970f8b7cc5a3682d0a24529c51b8ad265690c41fb3575716c41e341" [label=""];
}

