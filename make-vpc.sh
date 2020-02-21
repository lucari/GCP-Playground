#Creating new VPCs and Subnets
gcloud compute  networks create my-vpc-1 \
--subnet-mode=custom

gcloud compute  networks subnets create subnet-a \
--network=my-vpc-1 \
--region=us-central1 \
--range=10.10.0.0/16

gcloud compute  networks subnets create subnet-b \
--network=my-vpc-1 \
--region=us-east1 \
--range=10.20.0.0/16

gcloud compute  networks create my-vpc-2 \
--subnet-mode=custom

gcloud compute  networks subnets create subnet-c \
--network=my-vpc-2 \
--region=us-central1 \
--range=10.110.0.0/16

gcloud compute  networks subnets create subnet-d \
--network=my-vpc-2 \
--region=us-east1 \
--range=10.120.0.0/16

#Create the basic firewall rules VCP1
gcloud compute  firewall-rules create vpc1-allow-icmp \
--description="Allows ICMP from any src to any instance on the network." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-1 \
--action=ALLOW \
--rules=icmp \
--source-ranges=0.0.0.0/0

gcloud compute  firewall-rules create vpc1-allow-internal \
--description="Any source in the network IP range to any all protocols." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-1  \
--action=ALLOW \
--rules=all \
--source-ranges=10.128.0.0/9

gcloud compute  firewall-rules create vpc1-allow-rdp \
--description="RDP from any source to any instance on network port 3389." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-1  \
--action=ALLOW \
--rules=tcp:3389 \
--source-ranges=0.0.0.0/0

gcloud compute  firewall-rules create vpc1-allow-ssh \
--description="SSH from any source to any instance on network port 22." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-1  \
--action=ALLOW \
--rules=tcp:22 \
--source-ranges=0.0.0.0/0

#Create the basic firewall rules VCP2
gcloud compute  firewall-rules create vpc2-allow-icmp \
--description="Allows ICMP from any src to any instance on the network." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-2 \
--action=ALLOW \
--rules=icmp \
--source-ranges=0.0.0.0/0

gcloud compute  firewall-rules create vpc2-allow-internal \
--description="Any source in the network IP range to any all protocols." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-2 \
--action=ALLOW \
--rules=all \
--source-ranges=10.128.0.0/9

gcloud compute  firewall-rules create vpc2-allow-rdp \
--description="RDP from any source to any instance on network port 3389." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-2 \
--action=ALLOW \
--rules=tcp:3389 \
--source-ranges=0.0.0.0/0

gcloud compute  firewall-rules create vpc2-allow-ssh \
--description="SSH from any source to any instance on network port 22." \
--direction=INGRESS \
--priority=65534 \
--network=my-vpc-2 \
--action=ALLOW \
--rules=tcp:22 \
--source-ranges=0.0.0.0/0

