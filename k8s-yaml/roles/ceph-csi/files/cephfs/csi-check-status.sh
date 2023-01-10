#!/bin/bash
is_ok=1
rs=`kubectl get pod -n ceph-csi | awk '{print $3}' | awk 'NR!=1{print}'`
for i in $rs
do
  if [[ "$i" !=  "Running" ]]; then
    is_ok=0
  fi
done

echo $is_ok