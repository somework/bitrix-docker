###

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/www/site/vendor/bin"
export PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;35m\]$ \[\033[00m\]'
export EDITOR=nano

alias phpunit='php -dzend_extension=xdebug.so /var/www/site/vendor/bin/phpunit'
alias ll='ls -lah'
alias l='ls -lAh'
alias ..='cd ..'
alias reload='source ~/.bashrc'
alias bx-chown-fix='chown -R www-data. /var/www/site'
