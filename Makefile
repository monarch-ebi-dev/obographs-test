
ONTSOWL= pato wbphenotype hp mp dpo mgpo go
ONTSJSON=pato wbphenotype mgpo go
OBOGRAPHS=test-obographs.jar

FILES = $(foreach f,$(ONTSOWL), testdir/$(f).owl) $(foreach f,$(ONTSJSON), testdir/$(f).json)

testdir/%.owl:
	wget -q http://purl.obolibrary.org/obo/$*.owl -O $@
	java -jar $(OBOGRAPHS) $@ out
	
testdir/%.json:
	wget -q http://purl.obolibrary.org/obo/$*/$*.json -O $@
	java -jar $(OBOGRAPHS) $@ out
	
MGPO=https://raw.githubusercontent.com/monarch-initiative/glyco-phenotype-ontology/master/mgpo
testdir/mgpo.owl:
	wget -q "$(MGPO).owl" -O $@
	java -jar $(OBOGRAPHS) $@ out
	
testdir/mgpo.json:
	wget -q "$(MGPO).json" -O $@
	java -jar $(OBOGRAPHS) $@ out

.PHONY: test

test:	$(FILES)