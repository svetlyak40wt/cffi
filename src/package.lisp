;;;; -*- Mode: lisp; indent-tabs-mode: nil -*-
;;;
;;; package.lisp --- Package definition for CFFI.
;;;
;;; Copyright (C) 2005, James Bielman  <jamesjb@jamesjb.com>
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without
;;; restriction, including without limitation the rights to use, copy,
;;; modify, merge, publish, distribute, sublicense, and/or sell copies
;;; of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;;; NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;;; DEALINGS IN THE SOFTWARE.
;;;

(defpackage #:cffi
  (:use #:common-lisp #:cffi-sys)
  (:export
   ;; Primitive pointer operations.
   #:foreign-free
   #:foreign-alloc
   #:foreign-aref
   #:mem-ref
   #:pointerp
   #:null-ptr
   #:null-ptr-p
   #:inc-ptr
   #:with-foreign-ptr

   ;; Shareable vectors.
   #:make-shareable-vector
   #:with-pointer-to-vector-data

   ;; Foreign string operations.
   #:foreign-string-alloc
   #:foreign-string-free
   #:foreign-string-to-lisp
   #:lisp-string-to-foreign
   #:with-foreign-string
   #:with-foreign-ptr-as-string

   ;; Foreign function operations.
   #:defcfun
   #:foreign-funcall
   #:load-foreign-library

   ;; Foreign type operations.
   #:defcstruct
   #:defctype
   #:defcenum
   #:define-type-translator
   #:foreign-enum-keyword
   #:foreign-enum-value
   #:foreign-object-alloc
   #:foreign-object-free
   #:foreign-slot-value
   #:foreign-type-alignment
   #:foreign-type-size
   #:with-foreign-object
   #:with-foreign-slots))