type letter_grade = A | B | C
type countdown = NotStarted | Completed | Active of int
val notyet : countdown = NotStarted
val completed : countdown = Completed
val running : countdown = Active 5
val fn_for_cd : countdown -> int = <fun>
