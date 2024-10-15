(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

;actual formula
(echo "----Actual formula-----")
(assert (and 
(or q (not r))
(or (not p) r)
(or (not q) r p)
(or p q (not q))
(or (not r) q)))

(check-sat)
(get-model)

; resolved formula
(echo "----Resolved Formula-----")
(assert (or (not p) r))

(check-sat)
(get-model)