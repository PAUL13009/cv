#!/bin/bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
HTML="file://${DIR}/index.html"
PDF="${DIR}/CV_Paul_Nogaro.pdf"

"$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF" \
  "$HTML"

echo "PDF généré : $PDF"
