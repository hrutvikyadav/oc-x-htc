(**#use "./rough/remaining_data_defs_all.ml";;**)
print_endline "Design a function that takes a letter grade and returns the next highest letter grade";;
(* - : unit = () *)
print_endline "Purpose - take a grade and return the next highest grade ";;
(* - : unit = () *)
let bump_grade lg = A ;;
(* val bump_grade : 'a -> letter_grade = <fun> *)
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
(* let string_of_countdown cd: countdown = "";; *)
(* Error: This expression has type string but an expression was expected of type
         countdown *)
let string_of_countdown cd = "";;
(* val string_of_countdown : 'a -> string = <fun> *)
(* print_endline "Stub - let string_of_countdown cd = "";;";; *)
(* Error: The function 'print_endline' has type string -> unit
       It is applied to too many arguments
Line 1, characters 51-53:
  Hint: Did you forget a ';'?
Line 1, characters 52-56:
  This extra argument is not expected. *)
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
string_of_countdown NotStarted;; string_of_countdown Completed;; string_of_countdown Active(5);;
(* - : string = "Not started yet" *)
string_of_countdown Completed;;
(* - : string = "Happy new year !!!" *)
(* string_of_countdown Active(5);; *)
(* Error: The function 'string_of_countdown' has type countdown -> string
       It is applied to too many arguments
Line 1, characters 26-29:
  This extra argument is not expected. *)
string_of_countdown (Active 5);;
(* - : string = "This year ends in -5" *)
(*#utop_save "htdf_non_primitive_all.ml";;*)
