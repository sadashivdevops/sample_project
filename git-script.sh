#!/bin/bash

# Array of branch names
branches=("branch1" "branch2" "branch3" "branch4" "branch5")

# Loop through each branch
for branch in "${branches[@]}"
do
    # Checkout the branch
    git checkout $branch

    # Create a file with branch name
    echo "This is $branch" > release-2.0.txt

    # Stage the new file
    git add release-2.0.txt

    # Commit the file in the same branch
    git commit -m "Added release file for $branch"
done
