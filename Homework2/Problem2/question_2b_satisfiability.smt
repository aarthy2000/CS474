(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(echo "----Proving Equivalence-----")
; actual formula
(define-fun formula1 () Bool

(and 
(or q (not r))
(or (not p) r)
(or (not q) r p)
(or p q (not q))
(or (not r) q)
)
)

;resolution applied result
(define-fun formula2 () Bool
(or (not p) r))

;prove equivalence
(assert (= formula1 formula2))

(check-sat)
(get-model)