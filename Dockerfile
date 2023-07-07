FROM alpine:3.18.2 AS font

RUN unzip <(wget -qO- https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip) -d /noto_sans


FROM plantuml/plantuml:1.2023.9 AS final

COPY --from=font /noto_sans/ /usr/local/share/fonts/
