if !exists('coffee_cute')
  let coffee_cute = 0
endif

if !has('conceal') || !g:coffee_cute
    finish
endif

syntax match coffeeNiceOperator "\<in\>" conceal cchar=∈
syntax match coffeeNiceOperator "\<or\>" conceal cchar=∨
syntax match coffeeNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind ‘¬’ if it is after “is ”.
syntax match coffeeNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match coffeeNiceOperator "\<not in\>" conceal cchar=∉
syntax match coffeeNiceOperator "<=" conceal cchar=≤
syntax match coffeeNiceOperator ">=" conceal cchar=≥
syntax match coffeeNiceOperator "!=" conceal cchar=≢
syntax match coffeeNiceOperator "\<isnt\>" conceal cchar=≢
" syntax match coffeeNiceOperator "\<is not\>" conceal cchar=≢
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match coffeeNiceOperator "=\@<!===\@!" conceal cchar=≡
" only conceal "is" if it isn't followed by "not"
syntax match coffeeNiceOperator "\<is\>\%( not\)\@!" conceal cchar=≡

syntax match coffeeNiceOperator "\<\%(Math\.\)\?sqrt\>" conceal cchar=√
syntax match coffeeNiceKeyword "\<\%(Math\.\)\?PI\>" conceal cchar=π

syntax match coffeeNiceOperator "->" conceal cchar=→
syntax match coffeeNiceOperator "=>" conceal cchar=⇒

hi link coffeeNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
