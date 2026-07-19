#!/usr/bin/env bash
# Sync official Polish privacy policy from LemricFit into this site.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${LEMRICFIT_PRIVACY:-$ROOT/../LemricFit/assets/legal/privacy_policy_pl.md}"
DST="$ROOT/content/privacy/_index.pl.md"

if [[ ! -f "$SRC" ]]; then
  echo "Source not found: $SRC" >&2
  echo "Set LEMRICFIT_PRIVACY to the path of privacy_policy_pl.md" >&2
  exit 1
fi

TITLE="$(sed -n '1s/^# //p' "$SRC")"
BODY="$(tail -n +3 "$SRC")"

{
  printf '%s\n' '---'
  printf 'title: "%s"\n' "$TITLE"
  printf '%s\n' 'layout: single'
  printf '%s\n' '---'
  printf '\n'
  printf '%s\n' "$BODY"
} >"$DST"

echo "Synced $SRC → $DST"
