#!/bin/bash
sudo kubectl get pods | {
while IFS= read -r line
do
if [[ "$line" != *Running* ]] && [[ "$line" != *STATUS* ]]; then
  echo "$line"
  exit 1
fi
done
}

