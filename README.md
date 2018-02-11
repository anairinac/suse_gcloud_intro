# suse_gcloud_intro
First steps using Google Cloud Platform + openSuSE

This will probably look like a blog... on GitHub. But I am definitely not writing a blog. I like GitHub and versioning. 

Created this repo in order to document and organize scripts concerning my first steps interacting with Google Cloud Platform. Particularly its interaction with openSuSE, since it is the OS I use, and sometimes is a bit hard to get enough information on How-To's. Hopefully this can help someone else with:
A. Starting to use the best OS ever aka openSuSE.
B. Starting to use Google Cloud Platform (like I am doing).
C. Having weird ideas on how they could be using their GitHub account.
D. Sharing their stories and code with others.

## The Start

I have a Chromebook, which I want to use in order to work on GCP instances. From my bed (this part is super relevant). Since I have a serious crush (probably, more like a real love story) with openSuSE, I want to create an openSuSE instance on GCP.

1. Using my Google account, I tried creating an openSuSE instance on GCP Compute, finding there was actually no option.
2. Outraged, I tweeted about it.
3. Thankfully, our world has openSuSE council member @sysrich and other open source contributors, which patiently answered my online desperate cry.

## What's next?
Ok, so now I know I will be using GCP's cli (which I find awesome, cause I can actually create a GCP install script and probably configure also initial stuff there) in order to create my openSuSE instance. That means I will run that script in my current openSuSE Tumbleweed VM, which is running on VirtualBox on my home PC.

Right now I already created the first version of my install script (it just verifies requirements and installs google-cloud-sdk). Now I need to review some documentation in order to initialize/configure authentication, so I can automate that part also.


