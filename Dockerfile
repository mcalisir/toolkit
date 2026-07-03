FROM sharelatex/sharelatex:6.2.1

RUN tlmgr update --self

RUN tlmgr install \
    tex-gyre \
    tex-gyre-math \
    fontspec \
    unicode-math \
    biblatex \
    biber \
    apa7 \
    babel-turkish

RUN tlmgr install hyphen-turkish || true

RUN luaotfload-tool -fu || true
RUN fmtutil-sys --all || true
