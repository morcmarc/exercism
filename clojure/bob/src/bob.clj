(ns bob
  (:require [clojure.string :as str]))

(defn is-shout
  "Is it all caps?"
  [s]
  (and
    (= (str/upper-case s) s) 
    (< 0 (count (re-seq #"[A-Z]" s)))))

(defn response-for
  "Talk to Bob"
  [s]
  (cond
    ;; Handle silence
    (str/blank? s) "Fine. Be that way!"
    ;; Handle yelling
    (is-shout s) "Whoa, chill out!"
    ;; Handle questions 
    (str/ends-with? s "?") "Sure."
    ;; Otherwise
    :else "Whatever.")) 

