#!/bin/bash

kubectl annotate node osiris.zerolab.link "kube-router.io/node.asn=64882" --overwrite
kubectl annotate node osiris.zerolab.link "kube-router.io/peer.asns=64880,31898,31898" --overwrite
kubectl annotate node osiris.zerolab.link "kube-router.io/peer.ips=10.110.0.254,172.22.101.2,172.22.101.6" --overwrite
kubectl annotate node osiris.zerolab.link "kube-router.io/rr.client=42881" --overwrite

kubectl annotate node minion.zerolab.link "kube-router.io/node.asn=64881" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/peer.asns=64880" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/peer.ips=10.110.0.254" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/rr.client=42881" --overwrite
#kubectl annotate node minion.zerolab.link "kube-router.io/path-prepend.as=64882" --overwrite
#kubectl annotate node minion.zerolab.link "kube-router.io/path-prepend.repeat-n=5" --overwrite

kubectl annotate node minima.zerolab.link "kube-router.io/node.asn=64881" --overwrite
kubectl annotate node minima.zerolab.link "kube-router.io/peer.asns=64880" --overwrite
kubectl annotate node minima.zerolab.link "kube-router.io/peer.ips=10.110.0.254" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/rr.client=42881" --overwrite

kubectl annotate node talia.zerolab.link "kube-router.io/node.asn=64881" --overwrite
kubectl annotate node talia.zerolab.link "kube-router.io/peer.asns=64880" --overwrite
kubectl annotate node talia.zerolab.link "kube-router.io/peer.ips=10.110.0.254" --overwrite 
kubectl annotate node minion.zerolab.link "kube-router.io/rr.server=42881" --overwrite

kubectl annotate node talos.zerolab.link "kube-router.io/node.asn=64881" --overwrite
kubectl annotate node talos.zerolab.link "kube-router.io/peer.asns=64880" --overwrite
kubectl annotate node talos.zerolab.link "kube-router.io/peer.ips=10.110.0.254" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/rr.server=42881" --overwrite

kubectl annotate node taruk.zerolab.link "kube-router.io/node.asn=64881" --overwrite
kubectl annotate node taruk.zerolab.link "kube-router.io/peer.asns=64880"  --overwrite
kubectl annotate node taruk.zerolab.link "kube-router.io/peer.ips=10.110.0.254" --overwrite
kubectl annotate node minion.zerolab.link "kube-router.io/rr.server=42881" --overwrite
