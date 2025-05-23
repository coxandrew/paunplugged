#!/bin/bash

# Set variables
SHEET_URL="https://docs.google.com/spreadsheets/d/e/2PACX-1vRobn7BUacujm5NdYbY4E5YthDB3oCjXqv5H81AzA2h-l-ez8mJ3oy_77acmqPdvc7_VeZ9bgCPKLqp/pub?gid=2124828097&single=true&output=csv"
DOWNLOAD_PATH="/Users/cox/projects/paunplugged/_data/supporters.csv"
REPO_PATH="/Users/cox/projects/paunplugged"

# Download the Google Sheet as a CSV
curl -L -o "$DOWNLOAD_PATH" "$SHEET_URL"

# Navigate to the git repository
cd "$REPO_PATH" || exit

# Add the file to the git index
git add "$DOWNLOAD_PATH"

# Create a new commit
git commit -m "Update supporters.csv with the latest data"

# Check if there are any unpushed local commits
if git status | grep -q "Your branch is ahead of"; then
    echo "Warning: There are unpushed local commits. Skipping push to master."
    exit 1
fi

# Push the commit to the master branch
git push origin master
