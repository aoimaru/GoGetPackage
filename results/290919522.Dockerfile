[app/sources/290919522.Dockerfile]
digraph {
  "sha256:f261eca67788592384200b5e96259b8b66b9843ba41ba85f38007d12f245a4c2" [label="docker-image://docker.io/underworldcode/underworld2:dev" shape="ellipse"];
  "sha256:31f775ae3ca8b2d1b445d082a8d7de14b0a712e548f588ab3e92511c1debfda8" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:d25c106644be42d65037e599673575bdb1540d0509ca5d838d6a6f6f63e00bf0" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install cgdb sudo &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:43478b951f92012360060e469c60ff940e6e176112879883f103bdbd15b9bc2a" [label="mkdir{path=/opt}" shape="note"];
  "sha256:111aa259e12a132e209d7891f8741370653f3bc5b05d52f420bcb10158207616" [label="/bin/sh -c git clone -b development https://github.com/underworldcode/UWGeodynamics.git &&     pip3 install -e /opt/UWGeodynamics" shape="box"];
  "sha256:dbc82a10af640754583671b4e5c64410d75eccc18e72725f2b3f304b2e2be899" [label="/bin/sh -c mkdir /workspace/MODELS_RESULTS" shape="box"];
  "sha256:5ca72be35dd0ea3469c821d563fa34bc521f27ecb945238d41fc6eb980f26c8b" [label="/bin/sh -c pip3 install --no-cache-dir pandas                 ez_setup                 git+https://github.com/badlands-model/triangle.git                 git+https://github.com/awickert/gFlex.git" shape="box"];
  "sha256:18673ee049342dec494034bfdb97206da8a39e9723f7dcb2ae005bbfa3cde4d5" [label="/bin/sh -c git clone -b python3 https://github.com/rbeucher/pyBadlands_serial.git" shape="box"];
  "sha256:0eaf35a0c5e59960c85f4d8584e3f5351c018fa4c7a26f61ee65ff517c223ed9" [label="/bin/sh -c cd /opt/pyBadlands_serial/pyBadlands/libUtils && make" shape="box"];
  "sha256:8ee34dba82973ee2dcc6f632527b8d0521a5c92be2379f1f6d9ae70a5be4f268" [label="/bin/sh -c pip3 install -e /opt/pyBadlands_serial" shape="box"];
  "sha256:1f9fc17f5546df1f3d3f4ab1e30b9f4f8804ff04d5a0c6a1c9814fc59482c4b2" [label="/bin/sh -c git clone https://github.com/matplotlib/cmocean.git /tmp/cmocean &&     pip3 install /tmp/cmocean/ &&     rm -rf /tmp/cmocean" shape="box"];
  "sha256:8dc9307143ab63694426efc51322216dd89f4eb40a5434b38ec5788fab689ef7" [label="/bin/sh -c pip3 install git+https://github.com/matplotlib/legacycontour.git" shape="box"];
  "sha256:a086079b57d4120deb7ed737e19db8a676ce0cfc325c66e5303d8830262a929c" [label="/bin/sh -c pip3 install colorlover matplotlib" shape="box"];
  "sha256:bb58c12425e9797f35b977b9ff779d7935654dcb498e39d4e3a967170306f9c9" [label="/bin/sh -c pip3 install memory_profiler" shape="box"];
  "sha256:2c27f47963e81e4d3535cefbaaf7f38765f2de94fc25c680f8d5d62a41311d4e" [label="/bin/sh -c echo \"jovyan:docker\" | chpasswd && adduser jovyan sudo" shape="box"];
  "sha256:d0d37e64e9bd5726b448d696bdda9b3ce8c140e184c31d5c2fdb6672f0d130f3" [label="local://context" shape="ellipse"];
  "sha256:a478f008e77f44b6ff3f357467df9d3e57b4f4cab279b60c3d610b3553782be1" [label="copy{src=/jupyter_notebook_config.json, dest=/home/jovyan/.jupyter/jupyter_notebook_config.json}" shape="note"];
  "sha256:7ea3b2a8e2b6cf2176e99d7e64bc08c457ba380d52d7dd5376ef39896474cb17" [label="/bin/sh -c chown -R $NB_USER:users /workspace $UW2_DIR /home/$NB_USER /opt/pyBadlands_serial" shape="box"];
  "sha256:ebf3e23bc3bac5fa8d4369660ac2a7dfcc856a5458a6e65bfe31e43d77512042" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:171b5dd899fab9b8322dd225a409642b660030b8770ef4dfefeedc6750cd6fcc" [label="sha256:171b5dd899fab9b8322dd225a409642b660030b8770ef4dfefeedc6750cd6fcc" shape="plaintext"];
  "sha256:f261eca67788592384200b5e96259b8b66b9843ba41ba85f38007d12f245a4c2" -> "sha256:31f775ae3ca8b2d1b445d082a8d7de14b0a712e548f588ab3e92511c1debfda8" [label=""];
  "sha256:31f775ae3ca8b2d1b445d082a8d7de14b0a712e548f588ab3e92511c1debfda8" -> "sha256:d25c106644be42d65037e599673575bdb1540d0509ca5d838d6a6f6f63e00bf0" [label=""];
  "sha256:d25c106644be42d65037e599673575bdb1540d0509ca5d838d6a6f6f63e00bf0" -> "sha256:43478b951f92012360060e469c60ff940e6e176112879883f103bdbd15b9bc2a" [label=""];
  "sha256:43478b951f92012360060e469c60ff940e6e176112879883f103bdbd15b9bc2a" -> "sha256:111aa259e12a132e209d7891f8741370653f3bc5b05d52f420bcb10158207616" [label=""];
  "sha256:111aa259e12a132e209d7891f8741370653f3bc5b05d52f420bcb10158207616" -> "sha256:dbc82a10af640754583671b4e5c64410d75eccc18e72725f2b3f304b2e2be899" [label=""];
  "sha256:dbc82a10af640754583671b4e5c64410d75eccc18e72725f2b3f304b2e2be899" -> "sha256:5ca72be35dd0ea3469c821d563fa34bc521f27ecb945238d41fc6eb980f26c8b" [label=""];
  "sha256:5ca72be35dd0ea3469c821d563fa34bc521f27ecb945238d41fc6eb980f26c8b" -> "sha256:18673ee049342dec494034bfdb97206da8a39e9723f7dcb2ae005bbfa3cde4d5" [label=""];
  "sha256:18673ee049342dec494034bfdb97206da8a39e9723f7dcb2ae005bbfa3cde4d5" -> "sha256:0eaf35a0c5e59960c85f4d8584e3f5351c018fa4c7a26f61ee65ff517c223ed9" [label=""];
  "sha256:0eaf35a0c5e59960c85f4d8584e3f5351c018fa4c7a26f61ee65ff517c223ed9" -> "sha256:8ee34dba82973ee2dcc6f632527b8d0521a5c92be2379f1f6d9ae70a5be4f268" [label=""];
  "sha256:8ee34dba82973ee2dcc6f632527b8d0521a5c92be2379f1f6d9ae70a5be4f268" -> "sha256:1f9fc17f5546df1f3d3f4ab1e30b9f4f8804ff04d5a0c6a1c9814fc59482c4b2" [label=""];
  "sha256:1f9fc17f5546df1f3d3f4ab1e30b9f4f8804ff04d5a0c6a1c9814fc59482c4b2" -> "sha256:8dc9307143ab63694426efc51322216dd89f4eb40a5434b38ec5788fab689ef7" [label=""];
  "sha256:8dc9307143ab63694426efc51322216dd89f4eb40a5434b38ec5788fab689ef7" -> "sha256:a086079b57d4120deb7ed737e19db8a676ce0cfc325c66e5303d8830262a929c" [label=""];
  "sha256:a086079b57d4120deb7ed737e19db8a676ce0cfc325c66e5303d8830262a929c" -> "sha256:bb58c12425e9797f35b977b9ff779d7935654dcb498e39d4e3a967170306f9c9" [label=""];
  "sha256:bb58c12425e9797f35b977b9ff779d7935654dcb498e39d4e3a967170306f9c9" -> "sha256:2c27f47963e81e4d3535cefbaaf7f38765f2de94fc25c680f8d5d62a41311d4e" [label=""];
  "sha256:2c27f47963e81e4d3535cefbaaf7f38765f2de94fc25c680f8d5d62a41311d4e" -> "sha256:a478f008e77f44b6ff3f357467df9d3e57b4f4cab279b60c3d610b3553782be1" [label=""];
  "sha256:d0d37e64e9bd5726b448d696bdda9b3ce8c140e184c31d5c2fdb6672f0d130f3" -> "sha256:a478f008e77f44b6ff3f357467df9d3e57b4f4cab279b60c3d610b3553782be1" [label=""];
  "sha256:a478f008e77f44b6ff3f357467df9d3e57b4f4cab279b60c3d610b3553782be1" -> "sha256:7ea3b2a8e2b6cf2176e99d7e64bc08c457ba380d52d7dd5376ef39896474cb17" [label=""];
  "sha256:7ea3b2a8e2b6cf2176e99d7e64bc08c457ba380d52d7dd5376ef39896474cb17" -> "sha256:ebf3e23bc3bac5fa8d4369660ac2a7dfcc856a5458a6e65bfe31e43d77512042" [label=""];
  "sha256:ebf3e23bc3bac5fa8d4369660ac2a7dfcc856a5458a6e65bfe31e43d77512042" -> "sha256:171b5dd899fab9b8322dd225a409642b660030b8770ef4dfefeedc6750cd6fcc" [label=""];
}

