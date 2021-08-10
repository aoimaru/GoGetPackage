[app/sources/341899588.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7d6d9ac5d4d1e16646e2cd75750639e6db40b511fd0926cd9a9961415ad97ef7" [label="local://context" shape="ellipse"];
  "sha256:c5d413ceb384aeabab06ce5f7d74039d4069cd92567b5d7ba867f9e686997435" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9a234ed4576c5361f537157023fbad14f5ad09d7c22c311b53551d38b9409db1" [label="pip install requests" shape="box"];
  "sha256:6819d0ea7d8c29856d8c5937f34bd66ba8ae72346d92f4798f97153b90fe1b17" [label="pip install pandas" shape="box"];
  "sha256:b752b9730219ff7386bacad55a5618bbc1c757bceca5a9b7d7ad83184656497c" [label="sha256:b752b9730219ff7386bacad55a5618bbc1c757bceca5a9b7d7ad83184656497c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:c5d413ceb384aeabab06ce5f7d74039d4069cd92567b5d7ba867f9e686997435" [label=""];
  "sha256:7d6d9ac5d4d1e16646e2cd75750639e6db40b511fd0926cd9a9961415ad97ef7" -> "sha256:c5d413ceb384aeabab06ce5f7d74039d4069cd92567b5d7ba867f9e686997435" [label=""];
  "sha256:c5d413ceb384aeabab06ce5f7d74039d4069cd92567b5d7ba867f9e686997435" -> "sha256:9a234ed4576c5361f537157023fbad14f5ad09d7c22c311b53551d38b9409db1" [label=""];
  "sha256:9a234ed4576c5361f537157023fbad14f5ad09d7c22c311b53551d38b9409db1" -> "sha256:6819d0ea7d8c29856d8c5937f34bd66ba8ae72346d92f4798f97153b90fe1b17" [label=""];
  "sha256:6819d0ea7d8c29856d8c5937f34bd66ba8ae72346d92f4798f97153b90fe1b17" -> "sha256:b752b9730219ff7386bacad55a5618bbc1c757bceca5a9b7d7ad83184656497c" [label=""];
}
