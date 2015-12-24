all:
	docker build -t antono/fake-s3 .
	docker push antono/fake-s3
