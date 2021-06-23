touch src/main.ts src/main.test.ts src/cli.ts

# Create a package.json
npm init -y

# Install TypeScript, linter and Jest
npm install -D typescript @types/node ts-node
npm install -D eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install -D jest ts-jest @types/jest

# Get a .gitignore
wget https://raw.githubusercontent.com/metachris/typescript-boilerplate/master/.gitignore

# Get a tsconfig.json with some defaults (adapt as needed)
wget https://raw.githubusercontent.com/metachris/typescript-boilerplate/master/tsconfig.json

# Get a .eslintrc.js
wget https://raw.githubusercontent.com/metachris/typescript-boilerplate/master/.eslintrc.js

# Get a jest.config.json, for ts-jest to run the tests without a separate typescript compile step
wget https://raw.githubusercontent.com/metachris/typescript-boilerplate/master/jest.config.js

# Create a git repo and make the first commit
git init
git add .
git commit -am "initial commit"
