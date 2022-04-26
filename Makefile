create:
	@aws cloudformation create-stack --template-body file://s3/s3-bucket-basic.yml --capabilities CAPABILITY_NAMED_IAM --stack-name my-cf-1

deploy:
	@aws cloudformation deploy --template-file ./s3/s3-bucket-basic.yml --capabilities CAPABILITY_NAMED_IAM --stack-name my-cf-1

delete:
	@aws cloudformation delete-stack --stack-name my-cf-1
