#!/bin/sh
/bin/kubectl get pods | {
while IFS= read -r line
do
case "$line"  in
*"Running"*)
;;
*"STATUS"*)
;;
*)
  echo "$line";;
  exit 1
esac
done
}
