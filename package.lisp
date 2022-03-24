;; Copyright (c) 2022, "the Phoeron" Colin J.E. Lupton <thephoeron@protonmail.com>
;; Released under the MIT License. See protocol-omega/LICENSE for more information.

(in-package :cl-user)

(defpackage protocol-omega
  (:nicknames omega)
  (:use c2cl)
  (:export #:service
           #:session
           #:request-object
           #:response-object
           #:defrequest))

(in-package :protocol-omega)
