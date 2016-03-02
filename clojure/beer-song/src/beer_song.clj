(ns beer-song
  (:require [clojure.string :as str]))

(defn first-line
  "Sing first line"
  [n]
  (cond
    (> n 1) (format "%d bottles of beer on the wall, %d bottles of beer.\n" n n)
    (= n 1) (format "%d bottle of beer on the wall, %d bottle of beer.\n" n n)
    :else   (format "No more bottles of beer on the wall, no more bottles of beer.\n")))

(defn last-line
  "Sing last line"
  [n]
  (cond
    (> n 1) (format "Take one down and pass it around, %d bottles of beer on the wall.\n" n)
    (= n 1) (format "Take one down and pass it around, %d bottle of beer on the wall.\n" n)
    (= n 0)         "Take it down and pass it around, no more bottles of beer on the wall.\n"
    :else           "Go to the store and buy some more, 99 bottles of beer on the wall.\n"))

(defn verse
  "Sing a verse"
  [n]
  (str (first-line n)
       (last-line (- n 1))))

(defn sing
  "Sing from verse to verse"
  ([n]
    (str/join "\n" (for [x (range n -1 -1)] 
      (verse x))))
  ([n m]
    (str/join "\n" (for [x (range n (- m 1) -1)]
      (verse x)))))