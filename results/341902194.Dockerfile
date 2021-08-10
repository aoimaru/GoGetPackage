[app/sources/341902194.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:71dfcdb3a8f247b01f553dbf1f819da08f47d62b31e8e51473ce829ed166bba4" [label="local://context" shape="ellipse"];
  "sha256:4387526090e5bb9d824932ed86ff9efd8ca1475560fa453ce88a2c5409dd9917" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7163e2423d325386e246ebf4d785ce10a5476cf353e8ad000af4c640b0cab587" [label="pip install requests" shape="box"];
  "sha256:ba36acb54716fa8ee119934b5841878496bfeefd51baa1df2147780e2eb3f664" [label="sha256:ba36acb54716fa8ee119934b5841878496bfeefd51baa1df2147780e2eb3f664" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4387526090e5bb9d824932ed86ff9efd8ca1475560fa453ce88a2c5409dd9917" [label=""];
  "sha256:71dfcdb3a8f247b01f553dbf1f819da08f47d62b31e8e51473ce829ed166bba4" -> "sha256:4387526090e5bb9d824932ed86ff9efd8ca1475560fa453ce88a2c5409dd9917" [label=""];
  "sha256:4387526090e5bb9d824932ed86ff9efd8ca1475560fa453ce88a2c5409dd9917" -> "sha256:7163e2423d325386e246ebf4d785ce10a5476cf353e8ad000af4c640b0cab587" [label=""];
  "sha256:7163e2423d325386e246ebf4d785ce10a5476cf353e8ad000af4c640b0cab587" -> "sha256:ba36acb54716fa8ee119934b5841878496bfeefd51baa1df2147780e2eb3f664" [label=""];
}

