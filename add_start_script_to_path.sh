SCRIPT_NAME="start-dev.sh"

SCRIPT_PATH="$(
  cd -- "$(dirname "$0")" >/dev/null 2>&1 || null
  pwd -P
)/$SCRIPT_NAME"

BASH_RC_PATH="$HOME/.bashrc"
CONTENT_FOR_ADD="source $SCRIPT_PATH"

if [ -n "$SCRIPT_PATH" ] && ! grep -qF "$CONTENT_FOR_ADD" "$BASH_RC_PATH"; then
  echo "$CONTENT_FOR_ADD" >>"$BASH_RC_PATH"
fi
