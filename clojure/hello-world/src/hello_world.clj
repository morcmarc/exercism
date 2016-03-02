(ns hello-world)

(defn hello
  "Greet user"
  ([]
   (format "Hello, World!"))
  ([n]
   (format "Hello, %s!" n)))