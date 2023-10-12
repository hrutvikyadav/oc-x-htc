type t_l_color =
    | Red
    | Yellow
    | Green
;;
(* type t_l_color = Red | Yellow | Green *)
print_endline "Interpreted as current traffic light color in tl-simulator program?";;
(* - : unit = () *)
(* let fn_for_t_l_color = function
    | Red -> (*...*)
    | Yellow -> (*...*)
    | Green -> (*...*)
;; *)
(* Error: Syntax error *)
(* let fn_for_t_l_color = function
    | Red -> (*...*);
    | Yellow -> (*...*)
    | Green -> (*...*)
;; *)
(* Error: Syntax error *)
(* let fn_for_t_l_color = function
    | Red -> ...
    | Yellow -> ...
    | Green -> ...
;;*);;
print_endline "(* let fn_for_t_l_color = function
    | Red -> ...
    | Yellow -> ...
    | Green -> ...
;;*)";;
(* - : unit = () *)
let next_color = function
    | Red -> Green
    | Yellow -> Red
    | Green -> Yellow
;;
(* val next_color : t_l_color -> t_l_color = <fun> *)
next_color Red;;
(* - : t_l_color = Green *)
next_color Green;;
(* - : t_l_color = Yellow *)
next_color Yellow;;
(* - : t_l_color = Red *)
print_endline "CityName - Datadef design ex.1";;
(* - : unit = () *)
(*Pune, Mumbai, Delhi*);;
print_endline "(*Pune, Mumbai, Delhi*)";;
(* - : unit = () *)
type cityname = string;;
(* type cityname = string *)
print_endline "interpreted as name of city in maharashtra";;
(* - : unit = () *)
let my_city : cityname = "Pune";; let famous_city : cityname = "Mumbai";;
(* val my_city : cityname = "Pune" *)
let famous_city : cityname = "Mumbai";;
(* val famous_city : cityname = "Mumbai" *)
print_endline "(** let fn-for-cityname cn =
... cn
;;**)";;
(* - : unit = () *)
print_endline "takes a cityname and returns true if it is the best city in the world";;
(* - : unit = () *)
(* let best_city? cn =
String.compare cn "Pune"
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
String.compare cn "Pune"
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
String.compare cn my_city
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
String.compare cn my_city
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
match cn with
| cityname -> String.compare cn my_city
| _ -> false
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
match cn with
| cityname -> String.compare my_city cn
| _ -> false
;; *)
(* Error: This expression has type 'a option
       but an expression was expected of type cityname *)
(* let best_city? cn : cityname -> bool =
match cn with
| cityname -> String.compare my_city cn.
| _ -> false
;; *)
(* Error: Syntax error *)
(* let best_city cn : cityname -> bool =
match cn with
| cityname -> String.compare my_city cn.
| _ -> false
;; *)
(* Error: Syntax error *)
(* let best_city cn : cityname -> bool =
match cn with
| cityname -> String.compare my_city cn
| _ -> false
;; *)
(* Error: This expression has type int but an expression was expected of type
         cityname -> bool *)
(* let best_city cn : cityname -> bool =
    String.equal my_city cn
;; *)
(* Error: This expression has type bool but an expression was expected of type
         cityname -> bool *)
let best_city cn =
    String.equal my_city cn
;;
(* val best_city : cityname -> bool = <fun> *)
best_city famous_city;;
(* - : bool = false *)
best_city my_city;;
(* - : bool = true *)
#utop_save "rough_w_all.ml";;
