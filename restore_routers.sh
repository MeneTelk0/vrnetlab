#!/bin/bash

docker stop csr16-PE
docker rm csr16-PE
docker run -d --privileged --name csr16-PE vrnetlab/vr-csr:16.04.01

docker stop csr16-CE
docker rm csr16-CE
docker run -d --privileged --name csr16-CE vrnetlab/vr-csr:16.04.02

docker stop vmx17-PE
docker rm vmx17-PE
docker run -d --privileged --name vmx17-PE vrnetlab/vr-vmx:17.2R1.14

docker stop vmx17-CE
docker rm vmx17-CE
docker run -d --privileged --name vmx17-CE vrnetlab/vr-vmx:17.2R1.15

docker stop xrv6-PE
docker rm xrv6-PE
docker run -d --privileged --name xrv6-PE vrnetlab/vr-xrv:6.1.2

docker stop xrv6-CE
docker rm xrv6-CE
docker run -d --privileged --name xrv6-CE vrnetlab/vr-xrv:6.1.3

