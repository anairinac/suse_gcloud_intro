# suse_gcloud_intro
First steps using Google Cloud Platform + openSuSE

This will probably look like a blog... on GitHub. But I am definitely not writing a blog. I like GitHub and versioning. 

Created this repo in order to document and organize scripts concerning my first steps interacting with Google Cloud Platform. Particularly its interaction with openSuSE, since it is the OS I use, and sometimes is a bit hard to get enough information on How-To's. Hopefully this can help someone else with:

  1. Starting to use the best OS ever aka openSuSE.
  2. Starting to use Google Cloud Platform (like I am doing).
  3. Having weird ideas on how they could be using their GitHub account.
  4. Sharing their stories and code with others.

## The Start

I have a Chromebook, which I want to use in order to work on GCP instances. From my bed (this part is super relevant). Since I have a serious crush (probably, more like a real love story) with openSuSE, I want to create an openSuSE instance on GCP.

1. Using my Google account, I tried creating an openSuSE instance on GCP Compute, finding there was actually no option.
2. Outraged, I tweeted about it.
3. Thankfully, our world has openSuSE council member @sysrich and other open source contributors, which patiently answered my online desperate cry.

So I knew I would be using GCP's cli (which I found awesome, cause I could create a GCP install script and probably configure also initial stuff there) in order to create my openSuSE instance. That meant I was going to run that script in my openSuSE Tumbleweed VM, which was running on VirtualBox on my home PC.

I created the [first version](https://github.com/anairinac/suse_gcloud_intro/commit/18d98436e4589dc5ca6fc44ba4841f247569fa99) of my install script (it just verifies requirements and installs google-cloud-sdk). I configured authentication and which GCP project to use manually, so I will be updating the script with those lines too.

## Creating an openSUSE Leap VM instance on Google Cloud Platform

> I left the instance creation out of the `install_script.sh` so you can start using gloud cli with this part. If you want to automate that also, just add it to the script and you're good to go.

Once you have installed and configured GCP SDK on your machine in order to use your Google account and a specific project, you can create your instance using these options:
* `--image-family`: indication to use the latest image version for the specified image
* `--image-project`: project where the image to be used lives, default is the project used on your default configuration

What I actually executed on my VM was the following command:
`gcloud compute instances create $INSTANCE_NAME --image-family opensuse-leap --image-project opensuse-cloud --zone us-east4-a --machine-type n1-standard-2`

There are other options you want to consider, like:
* `--zone`: The zone where you will land your instance
* `--machine-type`: which characteristics will your instance have initially
* `--metadata`: can be used to send a startup script to be executed on your VM

More docs on these options are available for the `gcloud compute create` command [here](https://cloud.google.com/sdk/gcloud/reference/compute/instances/create)
