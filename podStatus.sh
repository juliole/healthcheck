#!/bin/sh
/bin/kubectl get pods | {
while IFS= read -r line
do
case "$line"  in
*"Running"*)
;;
*"STATUS"*)
;;
*"jstest"*)
;;
*)
  echo "exit 1";;
esac
done
}
