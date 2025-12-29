# justfile
sync:
    uv sync

render:
    uv run rendercv render cv.yaml

new:
    uv run rendercv new "Frank Lin"
