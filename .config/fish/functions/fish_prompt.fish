function fish_prompt --description 'Write out the prompt'
  powerline-go \
    -shell bare \
    -error $status \
    -cwd-max-depth 2 \
    -east-asian-width \
    -colorize-hostname \
    -numeric-exit-codes \
    -cwd-max-dir-size 4 \
    -shell-var PROMPT_USER \
    -truncate-segment-width 3 \
    -modules venv,vgo,shell-var,user,host,ssh,cwd,git,hg,jobs,exit,root

end
