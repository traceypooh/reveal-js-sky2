# deprecated

# please see https://github.com/traceypooh/eveal.js instead -- a much better, simpler, and newer version!

---
### reveal-js-sky2
reveal-js lightly customized boilerplate to default to ./slides.md for data and light variant of sky.css
- no docker or node.js needed
- relies on mac builtins:  ruby  git  curl
- fires up light http (ruby) webserver and drives your browser to http://localhost:8888 and you have your slideshow!
- all assets local - no network needed once you've run `get.sh`

### Get and start serving locally on a mac (no root/sudo needed):
`export REPO=traceypooh/reveal-js-sky2;  curl -fsSL https://github.com/$REPO/raw/master/get.sh | bash -ex`

(you can see `get.sh` in this repo's dir listing to inspect it first -- it's tame ;-)

### Customize
simply edit `slides.md` in your editor of choice
