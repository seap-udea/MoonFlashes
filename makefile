BRANCH=$(shell bash .getbranch)

cleanmac:
	@find . -name "Icon^M" -exec git rm {} \;

clean:
	@echo "Cleaning..."
	@find . -name "*~" -exec rm -r {} \;

branch:
	@echo "Branch: $(BRANCH)"

commit:cleanmac
	@echo "Commiting changes to branch $(BRANCH)..."
	@-git commit -am "Commit" 
	@-git push origin $(BRANCH)

pull:cleanmac
	@echo "Getting the lattest changes from branch $(BRANCH)..."
	@-git reset --hard HEAD
	@-git pull origin $(BRANCH)

pack:
	@echo "Packing data..."
	@bash .store/pack.sh pack

unpack:
	@echo "Unpacking data..."
	@bash .store/pack.sh unpack
