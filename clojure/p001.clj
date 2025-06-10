; Simple solution
(defn div-by?
  [n k]
  (= (mod n k) 0))

(def solution1
  (->> (range 1 1001)
       (filter #(or (div-by? % 3) (div-by? % 5)))
       (reduce +)))

(def naturals
  "Lazy sequence of natural numbers"
  (lazy-seq (cons 1 (map inc naturals))))

(defn multiples-of
  "Multiples of [n] up to 1000"
  [n]
  (take-while #(<= % 1000) (map #(* % n) naturals)))

(def solution2
  (->> [3 5]
       (map multiples-of)
       (apply concat)
       distinct
       (reduce +)))

(time solution1)
(time solution2)
