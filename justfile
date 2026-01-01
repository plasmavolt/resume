# justfile
sync:
    uv sync

render:
    uv run rendercv render cv.yaml

new:
    uv run rendercv new "Frank Lin"

watch:
    watchmedo shell-command \
        --patterns="*.yaml" \
        --ignore-directories \
        --ignore-patterns=".github/*" \
        --recursive \
        --command='uv run rendercv render cv.yaml' \
        .
