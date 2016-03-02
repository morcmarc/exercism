(ns rna-transcription)

(defn to-rna
  "Transcribe DNA to RNA"
  [dna]
  (assert (= 0 (count (re-find #"[^CGAT]" dna))))
  (apply str (replace {\C \G, \G \C, \A \U, \T \A} dna)))
