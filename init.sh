pushd my-adonisjs-app
    npm install
    [ ! -e .env ] && cp .env.example .env && node ace generate:key
popd