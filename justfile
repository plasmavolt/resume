# justfile
sync:
    uv sync

lock:
    uv lock

render:
    uv run rendercv render cv.yaml

new:
    uv run rendercv new "Frank Lin"

watch:
    uv run watchmedo shell-command \
        --patterns="*.yaml" \
        --recursive \
        --ignore-directories \
        --command='uv run rendercv render cv.yaml' \
        .
