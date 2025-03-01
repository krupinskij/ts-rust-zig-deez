(load "../src/utils.rkt")
(loader "object")

(define (test-string-hash-key)
  (let* ((hello1 (new-string-obj "Hello World"))
         (hello2 (new-string-obj "Hello World"))
         (diff1 (new-string-obj "My name is Amelia"))
         (diff2 (new-string-obj "My name is Amelia")))
    (begin
    (if (not (equal? (make-hash-key hello1) (make-hash-key hello2)))
        (error "Strings with same content have different hash keys"))
    (if (not (equal? (make-hash-key diff1) (make-hash-key diff2)))
        (error "Strings with same content have different hash keys"))
    (if (equal? (make-hash-key hello1) (make-hash-key diff1))
        (error "Strings with different content have same hash keys"))
    )))

(display-nl "Starting object tests...")
(test-string-hash-key)
(display-nl "\tObject tests have passed without errros")
