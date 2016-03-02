(ns nucleotide-count)

(def nucleotides [\A \C \G \T])

(defn count 
  "Count a nucleotide"
  [n s]
  (assert (not= -1 (.indexOf nucleotides n)))
  (let [c (get (frequencies s) n)]
    (cond
        (nil? c) 0
        :else c)))

(defn nucleotide-counts 
  "Count all nucleotides"
  [s]
  (zipmap
    nucleotides 
    (map (fn [n] (count n s)) nucleotides)))