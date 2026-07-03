FROM sharelatex/sharelatex:6.2.1

RUN tlmgr install \
    tex-gyre \
    tex-gyre-math \
    fontspec \
    unicode-math \
    biblatex \
    biber \
    apa7 \
    hyphen-turkish \
    collection-langturkish
