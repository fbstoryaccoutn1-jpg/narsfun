#!/usr/bin/env bash
set -euo pipefail

mkdir -p public/part4-video-full

SOURCE_URL="https://nars.fun/part4-video-full/preview.jpg"
OUT="public/part4-video-full/preview.jpg"
EXPECTED_SHA256="2f8b0a7329437ac7cfa86ac8f5f333f87a834eb7be50ae978eb3f4d18b32d722"

echo "Fetching preserved Part 4 preview image..."
curl -fL --retry 3 --retry-delay 2 "$SOURCE_URL" -o "$OUT"

ACTUAL_SHA256="$(sha256sum "$OUT" | awk '{print $1}')"
if [ "$ACTUAL_SHA256" != "$EXPECTED_SHA256" ]; then
  echo "ERROR: preview.jpg checksum mismatch."
  echo "Expected: $EXPECTED_SHA256"
  echo "Actual:   $ACTUAL_SHA256"
  exit 1
fi

echo "Preserved preview.jpg verified successfully."
