# tools

Purpose of this repository is to allow us to execute some diagnostic tools on kubernetes pods.
Currently this is compliant with mac machines.

# Prerequisites

You have to install:
- kubernetes client
- KREW kubernetes plugin 
> if you have brew it could be installed by
```
brew install krew
```

# Installing

You have to execute install.sh script as root or using sudo

```
$ sudo install.sh
```

This should:
> copy ./k8s-plugin/kubectl-tools_on to /usr/local/bin/ which will be scanned by KREW plugin
> set env variable tools_folder, which should point to folder with this repo 

# Running

> export KUBECONFIG=your-kubeconfig-file
> display pod list 
```
$ kubectl get po
```
> execute plugin
```
$ kubectl tools-on name-of-pod
```
after that command, it should login you into bash on name-of-pod pod, then just call any supported tool:
> ps 
> top
