Sample files to show the use of templates with deployment manager. Creates two VPCs each with two subnets. Defines firewall rules and creates two instaces in each region.

To deploy, run the command:

    gcloud deployment-manager deployments create my-deployment --config template-config.yaml
    
To delete:

    gcloud deployment-manager deployments delete my-deployment
    
