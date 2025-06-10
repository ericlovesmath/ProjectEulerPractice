(def fib-seq
  "Infinite lazy sequence of Fibbonacci numbers"
  (lazy-cat [0 1]
            (map + fib-seq (rest fib-seq))))

(def solution1
  (->>
    fib-seq
    (take-while #(<= % 4E6))
    (filter even?)
    (reduce +)))


(defn fib-up-to
  "Fibbonacci numbers up to [n]"
  ([n] (fib-up-to n 1 1))
  ([n a b]
   (if (> a n)
     nil
     (cons a (fib-up-to n b (+ a b))))))

(def solution2
  (->>
    (fib-up-to 4E6)
    (filter even?)
    (reduce +)))


(time solution1)
(time solution2)
