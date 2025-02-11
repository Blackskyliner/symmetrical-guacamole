pushd my-adonisjs-app
    [ ! -e .env ] && cp .env.example .env
    npm install
popd