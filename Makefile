Readme.md: \
	support/Readme-header.md \
	support/helpers.md \
	support/modules.md \
	support/Readme-footer.md
	cat $^ > $@

support/modules.md: \
	lib/mina/bundler.rb \
	lib/mina/default.rb \
	lib/mina/deploy.rb \
	lib/mina/foreman.rb \
	lib/mina/git.rb \
	lib/mina/rails.rb \
	lib/mina/rbenv.rb \
	lib/mina/rvm.rb \
	lib/mina/whenever.rb
	cat $^ | ruby support/to_md.rb > $@

support/helpers.md: \
	lib/mina/helpers.rb \
	lib/mina/deploy_helpers.rb
	cat $^ | ruby support/to_md.rb > $@
