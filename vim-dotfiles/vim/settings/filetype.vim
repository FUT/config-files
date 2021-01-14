if has("syntax")
  au BufNewFile,BufRead *.coffee        set filetype=coffee
  au BufNewFile,BufRead *.js            set filetype=javascript
  au BufNewFile,BufRead *.es6            set filetype=javascript
  au BufNewFile,BufRead *.rb            set filetype=ruby
  au BufNewFile,BufRead *.jsonify       set filetype=ruby
  au BufNewFile,BufRead *.axlsx       set filetype=ruby
  au BufNewFile,BufRead *.rabl          set filetype=ruby
  au BufNewFile,BufRead *.skim          set filetype=slim
  au BufNewFile,BufRead *.slim          set filetype=slim
  au BufNewFile,BufRead *.yml           set filetype=yaml
  au BufNewFile,BufRead *.hamlc         set filetype=haml
  au BufNewFile,BufRead *.hbs           set filetype=handlebars
  au BufNewFile,BufRead *.handlebars    set filetype=handlebars
  au BufNewFile,BufRead *.ts            set filetype=typescript
endif
