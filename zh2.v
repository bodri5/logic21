(* Mathematical Logic second midterm
   computer exercises

Your Name:

Your Neptun code:

When the time is over, send it by email to

bodri.mh3@gmail.com

*)


Require Import Classical.

Parameters P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: P /\ (Q /\ R).
Hypothesis pr2: (S /\ E) /\ U.
Hypothesis pr3: E -> W.
Goal (Q /\ P) /\ W.

(*Write your solution here.*)

Abort. (*You can replace Abort with Qed
         when finished with the proof.*)
End exercise1a.

Section exercise1b.
Hypothesis pr1: Q.
Hypothesis pr2: Q->P \/ R.
Hypothesis pr3: R->S.
Goal P\/S.

(*Write your solution here.*)

Abort.
End exercise1b.


Section exercise1c.
Hypothesis pr1: S->P.
Hypothesis pr2: Q -> E.
Goal (P->Q) -> (S->E).

(*Write your solution here.*)

Abort.
End exercise1c.

(*Bonus question, if you have a lot of time*)
Section exercise1d.

Hypothesis pr1: (P \/ ~ Q) <-> (R /\ S ).
Hypothesis pr2: E /\ (E -> S ).
Hypothesis pr3: Q.
Goal R -> P.

(*Write your solution here.*)

Abort.
End exercise1d.

