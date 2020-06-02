help:		## Help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
ssh:		## Connect into the bastion of the OK5 cluster
	ssh -i ~/.ssh/SEOUL-MSS-SOC1-BASTION.pem ec2-user@15.165.180.216
k8s:	## Open k8s dashboard of the OKC5 cluster, token (kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | awk '/^kubernetes-dashboard-token-/{print $1}') | awk '$1=="token:"{print $2}')
	open https://kubernetes-dashboard-kube-system.okc5.opsnow.cn/
aws:		## Open AWS developer console
	open https://pdaws-china.signin.amazonaws.cn/console
