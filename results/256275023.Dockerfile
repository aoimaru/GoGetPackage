[app/sources/256275023.Dockerfile]
digraph {
  "sha256:e19f1900dcc28792b6dd92774526a0cc297c464c16bbef47636815bbd67bb9b6" [label="docker-image://docker.io/microsoft/iis:10.0.14393.206" shape="ellipse"];
  "sha256:7ee4d09de153373e695a6eae630ebc9e0c637fc9ccb20bb5b9a9337ae6e87678" [label="powershell Install-WindowsFeature NET-Framework-45-ASPNET ;     Install-WindowsFeature Web-Asp-Net45" shape="box"];
  "sha256:4024658f1255106abd9f59c26dc6c9bddb73e8f089d6deba3f4c41dcd7e5bbbd" [label="local://context" shape="ellipse"];
  "sha256:0daf4f821500eed37bc7f05eab9269605ba4f13be104cb8d4ebd96b72c364284" [label="copy{src=/VoteService, dest=/VoteService}" shape="note"];
  "sha256:7f9defeb408e928f73c2025ca448a88168a52e12398cbf98183ec43f9bd44e9b" [label="powershell Remove-WebSite -Name 'Default Web Site'" shape="box"];
  "sha256:c75781a8283b4823dc2d190171084fea7b6641e66d1d0a83aca8e489ba1bf46e" [label="powershell New-Website -Name 'VoteService' -Port 80     -PhysicalPath 'c:\\VoteService' -ApplicationPool '.NET v4.5'" shape="box"];
  "sha256:616c10713f306bda67e805316e7054c293b5be10eedfb51ce9fb906f04141b93" [label="sha256:616c10713f306bda67e805316e7054c293b5be10eedfb51ce9fb906f04141b93" shape="plaintext"];
  "sha256:e19f1900dcc28792b6dd92774526a0cc297c464c16bbef47636815bbd67bb9b6" -> "sha256:7ee4d09de153373e695a6eae630ebc9e0c637fc9ccb20bb5b9a9337ae6e87678" [label=""];
  "sha256:7ee4d09de153373e695a6eae630ebc9e0c637fc9ccb20bb5b9a9337ae6e87678" -> "sha256:0daf4f821500eed37bc7f05eab9269605ba4f13be104cb8d4ebd96b72c364284" [label=""];
  "sha256:4024658f1255106abd9f59c26dc6c9bddb73e8f089d6deba3f4c41dcd7e5bbbd" -> "sha256:0daf4f821500eed37bc7f05eab9269605ba4f13be104cb8d4ebd96b72c364284" [label=""];
  "sha256:0daf4f821500eed37bc7f05eab9269605ba4f13be104cb8d4ebd96b72c364284" -> "sha256:7f9defeb408e928f73c2025ca448a88168a52e12398cbf98183ec43f9bd44e9b" [label=""];
  "sha256:7f9defeb408e928f73c2025ca448a88168a52e12398cbf98183ec43f9bd44e9b" -> "sha256:c75781a8283b4823dc2d190171084fea7b6641e66d1d0a83aca8e489ba1bf46e" [label=""];
  "sha256:c75781a8283b4823dc2d190171084fea7b6641e66d1d0a83aca8e489ba1bf46e" -> "sha256:616c10713f306bda67e805316e7054c293b5be10eedfb51ce9fb906f04141b93" [label=""];
}

