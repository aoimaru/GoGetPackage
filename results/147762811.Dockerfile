[app/sources/147762811.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:018452df9a6a08949470cb2737ba455497fb75c6fc86c18cda4c632c5749d9f4" [label="local://context" shape="ellipse"];
  "sha256:95bb270833112ecaa3812730b4e96df92e63cb03bd9cb5360ccc63a2cadb1a30" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:c7a2e0c98662ba914228e3cb4e4714cf1b4e5ee08000cab1b14dff943aeb3cfc" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:ff9ef029434e1fd4aba3a8e06487f91ea3953a186a02c4718b222d3ba91ec51b" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:0f0ffba368fb322aec6d0712df4412dc4f2115b73ba214c856a1672c9e34b8cb" [label="sha256:0f0ffba368fb322aec6d0712df4412dc4f2115b73ba214c856a1672c9e34b8cb" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:95bb270833112ecaa3812730b4e96df92e63cb03bd9cb5360ccc63a2cadb1a30" [label=""];
  "sha256:018452df9a6a08949470cb2737ba455497fb75c6fc86c18cda4c632c5749d9f4" -> "sha256:95bb270833112ecaa3812730b4e96df92e63cb03bd9cb5360ccc63a2cadb1a30" [label=""];
  "sha256:95bb270833112ecaa3812730b4e96df92e63cb03bd9cb5360ccc63a2cadb1a30" -> "sha256:c7a2e0c98662ba914228e3cb4e4714cf1b4e5ee08000cab1b14dff943aeb3cfc" [label=""];
  "sha256:c7a2e0c98662ba914228e3cb4e4714cf1b4e5ee08000cab1b14dff943aeb3cfc" -> "sha256:ff9ef029434e1fd4aba3a8e06487f91ea3953a186a02c4718b222d3ba91ec51b" [label=""];
  "sha256:ff9ef029434e1fd4aba3a8e06487f91ea3953a186a02c4718b222d3ba91ec51b" -> "sha256:0f0ffba368fb322aec6d0712df4412dc4f2115b73ba214c856a1672c9e34b8cb" [label=""];
}

