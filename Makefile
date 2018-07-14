

# I'm using this because I am running this from a cloud virtual private server.
PUBLIC_IP = $(shell dig TXT +short o-o.myaddr.l.google.com @ns1.google.com)

CLAAT = $(HOME)/go/bin/claat

#CLAAT:
#	go get github.com/googlecodelabs/tools/claat

www: $(CLAAT) README.md
	$(CLAAT) export -f html -o www README.md

serve: $(CLAAT) www
	cd www; $(CLAAT) serve -addr $(PUBLIC_IP):30000

clean:
	rm -rf www

