(ns phone-number
    (:require [clojure.string :as str]))

(def invalid-number "0000000000")

(defn number [n]
    (let [d (str/join "" (re-seq #"\d" n))]
        (cond 
            (= (count d) 10) d
            (= (count d) 11) (if (= \1 (get d 0))
                (str/join "" (take-last 10 d))
                invalid-number)
            :else invalid-number)))

(defn area-code [n]
    (str/join "" (take 3 (number n))))

(defn pretty-print [n]
    (let [s (number n)]
        (format "(%s) %s-%s" (split-at 3 s))))