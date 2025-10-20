FROM debian:testing

# Ortam değişkenleri
ENV INSTALL_DIR=_install \
    INSTALL_PREFIX=/workspace/_install \
    DEBIAN_FRONTEND=noninteractive \
    LINGUAS="en tr" \
    HELP_DIR="_html1" \
    PDF_DIR="_pdf1" \
    POT_DIR="_pot"

# Gerekli paketler
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      automake build-essential docbook-website docbook-xml docbook-xsl \
      fonts-noto-cjk fonts-noto-core gettext git intltool \
      librsvg2-2 librsvg2-bin pkg-config pngcrush \
      python3 python3-libxml2 python3-polib xsltproc libxml2-utils \
      && rm -rf /var/lib/apt/lists/*

# Çalışma dizini
WORKDIR /workspace

# Kaynak kodları buraya kopyalayacaksın
# (yerelde build yaparken context’e projenin kökünü koymalısın)
COPY . .

# Build adımları
# Not: GitLab CI’de _build klasöründe autogen.sh + make + make install çalışıyor
RUN mkdir -p _build && cd _build && \
    ../autogen.sh --prefix=${INSTALL_PREFIX} --without-gimp && \
    make pot && \
    make po && \
    make validate-all || true && \
    make && make install && \
    mv ${INSTALL_PREFIX}/share/gimp/3.0/help/ ../${HELP_DIR} && \
    mv ../${HELP_DIR}/pdf/ ../${PDF_DIR} && \
    mv pot/ ../${POT_DIR}

# Varsayılan komut
CMD ["/bin/bash"]
