#!/bin/bash

REPO="rails/rails"
OUTPUT_FILE="issues.json"

echo "Fetching issues from $REPO..."

# Fetch all issues from the repository using GitHub CLI
issues=$(gh api --paginate -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" "/repos/$REPO/issues?state=all")
#issues=$(gh api --paginate -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" "/rate_limit")
echo "API call finished with status: $?"

# Save the output to the specified file
echo "$issues" | jq '.' > "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
  echo "Issues saved successfully to $OUTPUT_FILE"
else
  echo "Failed to save issues to $OUTPUT_FILE"
fi