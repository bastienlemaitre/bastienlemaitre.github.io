deploy:
	ng build --prod --base-href "https://bastienlemaitre.github.io"
	ngh --message="Deploy new version" --branch=master

save:
	git add .
	git commit -m "$(MAKECMDGOALS)"
	git push origin source