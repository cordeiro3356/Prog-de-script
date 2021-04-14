#!/bin/bash

echo "DIRS"

ls -d */

echo "FILES"

ls -F | grep -v '/$' 

echo "LINKS"

ls -la | grep "\->"
