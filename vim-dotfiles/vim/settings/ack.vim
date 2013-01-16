set grepprg=ack

" Find (define word)
nmap <leader>fw :Ack -a  --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.gitBBBBBBhi
" Find (define directory)
nmap <leader>fd :Ack -a   --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.gitBBBBBBhi
" Instant find with word and directory predefined
nmap <leader>ff :Ack -a  --ignore-dir=log --ignore-dir=public --ignore-dir=coverage --ignore-dir=tmp --ignore-dir=vendor\assets\images --ignore-dir=.git <CR>
