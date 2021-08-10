[app/sources/246053222.Dockerfile]
digraph {
  "sha256:a4d04b48191c0e5588d30924d077c70e3544597c24e432d9b902cea99d3586a8" [label="docker-image://docker.io/datmo/data-analytics:gpu-py35@sha256:a8e13f7bc95ddc2f0e9517bcffb2581e652ca3e108d85c0f399b38091ab7eaf4" shape="ellipse"];
  "sha256:355a62685a3ca728209afd9cb6d42cffd979a3d94d6f59e9ad6155d9aeb2a40c" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         notebook==5.4.0         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:8864fc222bd915dcb0e382f9d6678c1142f6f3fa82aa4e83379f515819286c01" [label="local://context" shape="ellipse"];
  "sha256:de6f740fb03f92cd1d005056eaf34bcafde237bfe10475ced1afa2d25cc3afb6" [label="copy{src=/jupyter_notebook_config_py2.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:1869e5913190bb9cff3c1f86a8f861b8d1bd314516934f5ff0016451af6538aa" [label="/bin/sh -c mv /root/.jupyter/jupyter_notebook_config_py2.py /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:e16bc5a8e7957b5ab743ab977aba1fc45fbfc0a83ced2162be03c83f6d08c35c" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:b22927c9c1a32e1f5d2f6a557219aacf3dd555082593ef5515849de9e1691387" [label="/bin/sh -c chmod +x /run_jupyter.sh" shape="box"];
  "sha256:202aa5bd0e047269bf370d8045e79466d86ddd785976eb5e3b60c52200ddc61e" [label="sha256:202aa5bd0e047269bf370d8045e79466d86ddd785976eb5e3b60c52200ddc61e" shape="plaintext"];
  "sha256:a4d04b48191c0e5588d30924d077c70e3544597c24e432d9b902cea99d3586a8" -> "sha256:355a62685a3ca728209afd9cb6d42cffd979a3d94d6f59e9ad6155d9aeb2a40c" [label=""];
  "sha256:355a62685a3ca728209afd9cb6d42cffd979a3d94d6f59e9ad6155d9aeb2a40c" -> "sha256:de6f740fb03f92cd1d005056eaf34bcafde237bfe10475ced1afa2d25cc3afb6" [label=""];
  "sha256:8864fc222bd915dcb0e382f9d6678c1142f6f3fa82aa4e83379f515819286c01" -> "sha256:de6f740fb03f92cd1d005056eaf34bcafde237bfe10475ced1afa2d25cc3afb6" [label=""];
  "sha256:de6f740fb03f92cd1d005056eaf34bcafde237bfe10475ced1afa2d25cc3afb6" -> "sha256:1869e5913190bb9cff3c1f86a8f861b8d1bd314516934f5ff0016451af6538aa" [label=""];
  "sha256:1869e5913190bb9cff3c1f86a8f861b8d1bd314516934f5ff0016451af6538aa" -> "sha256:e16bc5a8e7957b5ab743ab977aba1fc45fbfc0a83ced2162be03c83f6d08c35c" [label=""];
  "sha256:8864fc222bd915dcb0e382f9d6678c1142f6f3fa82aa4e83379f515819286c01" -> "sha256:e16bc5a8e7957b5ab743ab977aba1fc45fbfc0a83ced2162be03c83f6d08c35c" [label=""];
  "sha256:e16bc5a8e7957b5ab743ab977aba1fc45fbfc0a83ced2162be03c83f6d08c35c" -> "sha256:b22927c9c1a32e1f5d2f6a557219aacf3dd555082593ef5515849de9e1691387" [label=""];
  "sha256:b22927c9c1a32e1f5d2f6a557219aacf3dd555082593ef5515849de9e1691387" -> "sha256:202aa5bd0e047269bf370d8045e79466d86ddd785976eb5e3b60c52200ddc61e" [label=""];
}

