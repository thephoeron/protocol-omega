;; Copyright (c) 2022, "the Phoeron" Colin J.E. Lupton <thephoeron@protonmail.com>
;; Released under the MIT License. See protocol-omega/LICENSE for more information.

(in-package :cl-user)

(defpackage protocol-omega/asdf
  (:use cl asdf uiop))

(in-package :protocol-omega/asdf)

(defsystem protocol-omega
  :name "PROTOCOL-OMEGA"
  :description "REST client definition library for Common Lisp."
  :author "\"the Phoeron\" Colin J.E. Lupton"
  :source-control "https://github.com/thephoeron/protocol-omega/"
  :bug-tracker "https://github.com/thephoeron/protocol-omega/issues/"
  :mailto "thephoeron@protonmail.com"
  :version (:read-file-form "VERSION")
  :license "MIT"
  :depends-on (closer-mop
               alexandria
               serapeum
               dexador
               yason
               json-mop
               uri-template
               simple-config)
  :serial t
  :components ((:file "package")
               (:file "protocol-omega")))
