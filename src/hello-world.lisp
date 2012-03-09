(in-package :net.aserve)

(publish :path "/"
         :content-type "text/html"
	 :function #'(lambda (req ent)
		       (with-http-response (req ent)
			 (with-http-body (req ent)
			   (html
			    (:h1 "Hello World")
			    (:princ "Congratulations dude, you are running Lisp on Heroku!!!")
			    :p
			    ((:img :src "lisp-glossy.jpg")) ;; size: 215 150
			    )))))

(publish-directory
 :prefix "/"
 :destination "./public/"
 )

		   



