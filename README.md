# Install Git in reCamera
Here’s the script translated into English for use on a RISC-V 64-bit system. 
After installing, you should be able to clone from and push to GitHub repositories.

Enter the root directory of the project and run:
sudo ./install_Git.sh

It does not support cloning/pushing resources via 'https'. You can use 'ssh' to clone with Git. If you're unfamiliar with using a password-protected SSH key to clone repositories, please Refer to the following section **"GitHub SSH Setup Guide"**.

The command to clone resources from github is similar to the following:
```bash
sudo git clone git@github.com:jjjadand/reCamera_get-RGB-sample.git
```
The command to push resources from git///hub is similar to the following:
```bash
sudo git init
sudo git add .
sudo git config user.name "jjjadand"
sudo git config --global user.email "2334721338@qq.com"
sudo git commit -m "first commit"
sudo git branch -M main
sudo git remote add origin git@github.com:jjjadand/apriltag-recamera.git
sudo git push -u origin main
```


# GitHub SSH Setup Guide

To pull code from GitHub via SSH, ensure your system has an SSH key configured and added to your GitHub account. Follow these steps:

## 1. Generate an SSH Key (if you don’t have one)

First, generate an SSH key on your RISC-V device:

```bash
sudo ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

## 2. Add the SSH Public Key to GitHub

Next, add the generated public key to GitHub:

1. Use the following command to display the public key:

   ```bash
   sudo cat /root/.ssh/id_rsa.pub
   ```

2. Copy the output.
3. Log in to GitHub, click your avatar in the upper right corner, go to **Settings**, then select **SSH and GPG keys** on the left.
4. Click **New SSH key**, name the key (e.g., "RISC-V reCamera"), paste the public key into the **Key** field, and click **Add SSH key**.

## 3. Test the SSH Connection

On your reCamera, test the SSH connection to confirm it’s configured correctly:

```bash
sudo ssh -T git@github.com
```

If configured correctly, you should see a message like:

```plaintext
Hi your_username! You've successfully authenticated, but GitHub does not provide shell access.
```

## 4. Clone the Repository Using SSH

Now, you can clone a GitHub repository using SSH, such like this:

```bash
sudo git clone git@github.com:jjjadand/reCamera_get-RGB-sample.git
```


