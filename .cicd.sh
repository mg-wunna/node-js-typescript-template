# Automation into the stages of app development #

# create build folder
rm -rf build && mkdir build

# copy all file into build
cp -r ./dist ./build/src
cp LICENSE README.md package.json ./build

# change package json file
cd build
npx json -I -f package.json -e 'delete this.devDependencies'
npx json -I -f package.json -e 'this.scripts={ start: "node src/index.js" }'

# minify all files in dist folder
npx minify-all-js . -j -m -M -a
cd ../

# zip build folder for production
rm -rf production.zip
npx bestzip production.zip build/*
