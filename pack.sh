#!/usr/bin/env bash

jb init
jb install \
  github.com/coreos/prometheus-operator/contrib/kube-prometheus/jsonnet/kube-prometheus

cp -Rp vendor/kube-prometheus/* .
rm -rf vendor/kube-prometheus

for directory in $(/bin/ls -1 vendor/)
do
  mv vendor/${directory} .
done

rm -rf vendor
rm -rf jsonnetfile.*
