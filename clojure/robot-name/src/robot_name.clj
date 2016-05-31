(ns robot-name)

(deftype Robot [n])

(defn- generate-id []
    (format "%s%d" "AA" "000"))

(defn robot []
    (Robot. (atom (generate-id))))

(defn robot-name [robot]
    @(:n robot))

(defn reset-name [robot]
    )