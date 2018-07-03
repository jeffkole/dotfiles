if hash ag 2>/dev/null; then
  tag() {
    command tag "$@"
    source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null
  }
  alias ag=tag
fi
