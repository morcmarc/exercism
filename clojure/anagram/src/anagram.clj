(ns anagram
  (:require [clojure.string :as str]))

(defn get-freqs
  "Count letters in word"
  [word]
  (->
    (str/lower-case word)
    (frequencies)))

(defn same?
  [a b]
  (=
    (str/lower-case a)
    (str/lower-case b)))

(defn anagrams-for
  "Find anagrams of a word in list"
  [word anagrams]
  (let [freqs (get-freqs word)]
    (filter (fn [w]
      (and
        (= (get-freqs w) freqs)
        (not (same? w word))))
      anagrams)))