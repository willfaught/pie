set fish_greeting

for file in ~/.config/fish/{variables,aliases,functions,local}.fish
	test -f $file; and test -r $file; and source $file;
end
