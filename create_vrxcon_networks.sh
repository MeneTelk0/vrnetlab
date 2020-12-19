#!/bin/bash

echo "Connection between vmx-PE GE0 and xrv-PE GE0"
docker stop vr-xcon-vmx_1-xrv_1
docker rm vr-xcon-vmx_1-xrv_1
docker run -d --name vr-xcon-vmx_1-xrv_1 --link vmx17-PE --link xrv6-PE  vrnetlab/vr-xcon --p2p vmx17-PE/1--xrv6-PE/1

echo "Connection between vmx-PE GE1 and csr-PE GE2"
docker stop vr-xcon-vmx_2-csr_1
docker rm vr-xcon-vmx_2-csr_1
docker run -d --name vr-xcon-vmx_2-csr_1 --link vmx17-PE --link csr16-PE vrnetlab/vr-xcon --p2p vmx17-PE/2--csr16-PE/1

echo "Connection between csr-PE GE3 and xrv-PE GE1"
docker stop vr-xcon-xrv_2-csr_2
docker rm vr-xcon-xrv_2-csr_2
docker run -d --name vr-xcon-xrv_2-csr_2 --link xrv6-PE --link csr16-PE vrnetlab/vr-xcon --p2p xrv6-PE/2--csr16-PE/2

echo "Connection between vmx-PE GE2 and vmx-CE GE0"
docker stop vr-xcon-vmx_3-vmxCE_1
docker rm vr-xcon-vmx_3-vmxCE_1
docker run -d --name vr-xcon-vmx_3-vmxCE_1 --link vmx17-PE --link vmx17-CE vrnetlab/vr-xcon --p2p vmx17-PE/3--vmx17-CE/1

echo "Connection between csr-PE GE4 and csr-CE GE2"
docker stop vr-xcon-csrPE-csrCE
docker rm vr-xcon-csrPE-csrCE
docker run -d --name vr-xcon-csrPE-csrCE --link csr16-PE --link csr16-CE vrnetlab/vr-xcon --p2p csr16-PE/3--csr16-CE/1

echo "Connection between xrv-PE GE2 and xrv-CE GE0"
docker stop vr-xcon-xrv-CE-1-xrv-3
docker rm vr-xcon-xrv-CE-1-xrv-3
docker run -d --name vr-xcon-xrv-CE-1-xrv-3 --link xrv6-CE --link xrv6-PE vrnetlab/vr-xcon --p2p xrv6-CE/1--xrv6-PE/3

echo "Connection between csr-PE GE5 and csr-CE GE3"
docker stop vr-xcon-csrPE_4-csrCE_2
docker rm vr-xcon-csrPE_4-csrCE_2
docker run -d --name vr-xcon-csrPE_4-csrCE_2 --link csr16-PE --link csr16-CE vrnetlab/vr-xcon --p2p csr16-PE/4--csr16-CE/2

echo "Connection between xrv-PE GE3 and xrv-CE GE1"
docker stop vr-xcon-xrv-CE-2-xrv-4
docker rm vr-xcon-xrv-CE-2-xrv-4
docker run -d --name vr-xcon-xrv-CE-2-xrv-4 --link xrv6-CE --link xrv6-PE vrnetlab/vr-xcon --p2p xrv6-CE/2--xrv6-PE/4

#echo "Connection between xrv-PE GE3 and csr-CE GE2"
#docker stop vr-xcon-csr-CE2-1-xrv-4
#docker rm vr-xcon-csr-CE2-1-xrv-4
#docker run -d --name vr-xcon-csr-CE2-1-xrv-4 --link csr-16-CE2 --link xrv6-PE vrnetlab/vr-xcon --p2p csr-16-CE2/1--xrv6-PE/4

echo "Connection between vmx-PE GE3 and vmx-CE GE1"
docker stop vr-xcon-vmx_4-vmxCE_2
docker rm vr-xcon-vmx_4-vmxCE_2
docker run -d --name vr-xcon-vmx_4-vmxCE_2 --link vmx17-PE --link vmx17-CE vrnetlab/vr-xcon --p2p vmx17-PE/4--vmx17-CE/2