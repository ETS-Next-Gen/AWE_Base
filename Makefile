PACKAGES := AWE_Components AWE_LanguageTool AWE_Lexica AWE_SpellCorrect AWE_Workbench holmes-extractor-expandable

.PHONY: download update install

download:
	@for package in $(PACKAGES); do \
		echo "Downloading $${package}"; \
		git clone https://github.com/ETS-Next-Gen/$${package}; \
	done

update:
	@for package in $(PACKAGES); do \
		echo "Updating $${package}"; \
		cd $${package} && git pull; cd .. ;\
	done

install:
	@for package in $(PACKAGES); do \
		echo "Installing $${package}"; \
		cd $${package} && pip install -e .; cd .. ; \
	done
