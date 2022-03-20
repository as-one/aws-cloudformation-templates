create:
	@aws cloudformation create-stack --template-body file://iam/iam-user-basic.yml --capabilities CAPABILITY_NAMED_IAM --stack-name my-cf-1

deploy:
	@aws cloudformation deploy --template-file ./iam/iam-user-basic.yml --capabilities CAPABILITY_NAMED_IAM --stack-name my-cf-1

delete:
	@aws cloudformation delete-stack --stack-name my-cf-1
