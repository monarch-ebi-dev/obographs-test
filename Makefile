
ONTSOWL= pato wbphenotype hp mp dpo
ONTSJSON=pato wbphenotype
OBOGRAPHS=test-obographs.jar

FILES = $(foreach f,$(ONTSOWL), testdir/$(f).owl) $(foreach f,$(ONTSJSON), testdir/$(f).json)

testdir/%.owl:
	wget -q http://purl.obolibrary.org/obo/$*.owl -O $@
	java -jar $(OBOGRAPHS) $@ out
	
testdir/%.json:
	wget -q http://purl.obolibrary.org/obo/$*/$*.json -O $@
	java -jar $(OBOGRAPHS) $@ out

.PHONY: test

test:	$(FILES)