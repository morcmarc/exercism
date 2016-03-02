(ns hamming
    (:require [clojure.data :as data]))

(defn distance [s1 s2]
    (if-not 
        (= (count s1) (count s2)) nil
        (count (filter false? (map = s1 s2)))))