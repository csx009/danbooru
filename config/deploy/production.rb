set :user, "nb"
set :rails_env, "production"
server "boo", :roles => %w(web app db), :primary => true
server "boo", :roles => %w(web app)
server "boo", :roles => %w(worker)

set :linked_files, fetch(:linked_files, []).push(".env.production")
set :rbenv_path, "/home/danbooru/.rbenv"
