(prodigy-define-service
  :name "tgapp.testapi"
  :command "/home/yusuket/stash/LIBS/egg.tgapp.testapi/bin/paster"
  :cwd "/home/yusuket/stash/LIBS/egg.tgapp.testapi"
  :args '("serve" "testdata/app/test.ini" "--reload")
  :tags '(zillow)
  :kill-signal 'sigint
  :kill-process-buffer-on-stop t)
(prodigy-define-service
  :name "zwatcher"
  :command "/home/yusuket/stash/LIBS/static-all/target/tools/zwatcher/zwatcher.sh"
  :cwd "/home/yusuket/stash/LIBS/static-all"
  :args '("-v" "-r" "/home/yusuket/stash/LIBS/static-all")
  :tags '(zillow statics)
  :kill-signal 'sigint
  :kill-process-buffer-on-stop t)
