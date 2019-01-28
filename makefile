BRANCH=$(shell bash .getbranch)

clean:
	@echo "Cleaning..."
	@find . -name "*~" -exec rm -r {} \;
	@find . -name "Icon^M" -exec rm -r {} \;

branch:
	@echo "Branch: $(BRANCH)"

commit:
	@echo "Commiting changes to branch $(BRANCH)..."
	@-git commit -am "Commit" 
	@-git push origin $(BRANCH)

pull:
	@echo "Getting the lattest changes from branch $(BRANCH)..."
	@-git reset --hard HEAD
	@-git pull origin $(BRANCH)

unpack:
	@echo "Unpacking large kernels..."
	@cat util/kernels/de430bsp/* > util/kernels/de430.bsp
	@echo "Done."

