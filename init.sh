pushd my-adonisjs-app
    npm install
    [ ! -e .env ] && cp .env.example .env && node ace generate:key
    
    # Create Runtime Dir
    mkdir -p tmp
    mkdir -p var

    node ace.js migration:run
    node ace.js db:seed
popd