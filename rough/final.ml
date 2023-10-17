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
print_endline "(** let fn_for_cd = function
| NotStarted -> 1
| Completed -> 1
| Active(c) when 0 < c && c <= 10  -> 1
| Active(_) -> 0
;; **)" ;;
(* - : unit = () *)
print_endline "Above template can be simplified as we can rely on the interpretation comment to be sure that the only ints stored in the Acive() constructor will be 1-10";;
(* - : unit = () *)

print_endline "Design a function that takes a letter grade and returns the next highest letter grade";;
(* - : unit = () *)
print_endline "Purpose - take a grade and return the next highest grade ";;
(* - : unit = () *)
print_endline "Stub - let bump_grade lg = A ;;";;
(* - : unit = () *)
print_endline "Write failing tests and do red-green-refactor";;
(* - : unit = () *)
print_endline "using template from ddata def of letter-grade";;
(* - : unit = () *)
let bump_grade = function
| A -> A
| B -> A
| C -> B
;;
(* val bump_grade : letter_grade -> letter_grade = <fun> *)
bump_grade A;;
(* - : letter_grade = A *)
bump_grade B;;
(* - : letter_grade = A *)
bump_grade C;;
(* - : letter_grade = B *)

print_endline "Design a function that displays the current state of the countdown";;
(* - : unit = () *)
print_endline "Purpose - take a countdown and display string representation of its current state";;
(* - : unit = () *)
print_endline "Stub - let string_of_countdown cd = \"\" ";;
(* - : unit = () *)
print_endline "Failing tests";;
(* - : unit = () *)
let string_of_countdown = function
| NotStarted -> "Not started yet"
| Completed -> "Happy new year !!!"
| Active(c) -> "This year ends in -" ^ string_of_int c
;;
(* val string_of_countdown : countdown -> string = <fun> *)
string_of_countdown NotStarted;; 
(* - : string = "Not started yet" *)
string_of_countdown Completed;;
(* - : string = "Happy new year !!!" *)
string_of_countdown (Active 5);;
(* - : string = "This year ends in -5" *)
