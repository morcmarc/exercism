(ns word-count
  (:require [clojure.string :as str]))

(defn word-count
  "Count words in sentence"
  [s]
  ( ->>
    (str/lower-case s)
    (re-seq #"\w+")
    (frequencies)))