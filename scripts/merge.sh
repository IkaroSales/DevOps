#!/bin/bash

BRANCH_ORIGIN=$1
BRANCH_DESTINY=$2

echo ">>> Checkout in $BRANCH_DESTINY"
git checkout $BRANCH_DESTINY
git pull origin $BRANCH_DESTINY
echo ""

echo ">>> Merge $BRANCH_ORIGIN (from) -> $BRANCH_DESTINY (to)"
git merge --no-edit $BRANCH_ORIGIN
CONFLICTS=$(git ls-files -u | wc -l)
if ["$CONFLICTS" -gt 0]; then
   echo ">>> Conflict has arisen. Aborting"
   git merge --abort
   exit 1
fi
echo ""

echo ">>> Push in $BRANCH_DESTINY"
git push origin $BRANCH_DESTINY
git checkout $BRANCH_ORIGIN
