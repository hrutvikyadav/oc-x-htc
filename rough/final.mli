type letter_grade = A | B | C
type countdown = NotStarted | Completed | Active of int
val notyet : countdown
val completed : countdown
val running : countdown
val fn_for_cd : countdown -> int
val bump_grade : letter_grade -> letter_grade
val string_of_countdown : countdown -> string
