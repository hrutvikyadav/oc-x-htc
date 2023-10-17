type letter_grade = A | B | C ;;
(* type letter_grade = A | B | C *)
print_endline "Interpret as the grade of students in C language course";;
(* - : unit = () *)
print_endline "(** let fn-for-lg = function
| A -> ...
| B -> ...
| C -> ...
;; **)" ;;
(* - : unit = () *)
type countdown =
| NotStarted
| Completed
| Active of int
;;
(* type countdown = NotStarted | Completed | Active of int *)
print_endline "Interpret as countdown is either notstarted yet, completed or is active with some current count (10 to 1)";;
(* - : unit = () *)
print_endline "(** let fn-for-cd = function
| NotStarted -> ...
| Completed -> ...
| Active(c) -> ...
;; **)";;
(* - : unit = () *)
let notyet = NotStarted and completed = Completed and running = Active(5) ;;
(* val notyet : countdown = NotStarted
val completed : countdown = Completed
val running : countdown = Active 5 *)
(**
  let fn_for_cd = function
| NotStarted -> 1
| Completed -> 1
| Active(c) when 0 < c && c <= 10  -> 1 **)
;;
(* val fn_for_cd : countdown -> int = <fun> *)
let fn_for_cd = function
| NotStarted -> 1
| Completed -> 1
| Active(c) when 0 < c && c <= 10  -> 1
| Active(_) -> 0
;;
(* val fn_for_cd : countdown -> int = <fun> *)
print_endline "(** let fn_for_cd = function
| NotStarted -> 1
| Completed -> 1
| Active(c) when 0 < c && c <= 10  -> 1
| Active(_) -> 0
;; **)" ;;
(* - : unit = () *)
print_endline "Above template can be simplified as we can rely on the interpretation comment to be sure that the only ints stored in the Acive() constructor will be 1-10";;
(* - : unit = () *)
(* #utop_save "remaining_data_defs.ml";; *)
