.PHONY: test
test: 
	go test -v -cover ./...

.PHONY: solr
solr:
	docker rm -f solr-helios-test || true
	docker run -d -p 8983:8983 --name solr-helios-test solr:latest solr-precreate gettingstarted

.PHONY: stop-solr
stop-solr:
	docker rm -f solr-helios-test || true