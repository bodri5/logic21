Require Import Classical.

Parameters P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: P->Q.
Hypothesis pr2: Q /\ (R \/ P ).
Hypothesis pr3: ~(Q \/ R).
Goal False.
Abort.
End exercise1a.

Section exercise1b.
(*¬R ⇒ Q, ¬P ∨ ¬Q, (P ⇔ Q) ` ¬(P ∨ Q)*)
Hypothesis pr1: ~R->Q.
Hypothesis pr2: ~P \/ ~Q.
Hypothesis pr3: P<->Q.
Goal ~(P\/Q).
Abort.
End exercise1b.


Section exercise1c.
(*P ∧ (Q ∨ R), P ⇒ ¬R ` Q ∨ E*)
Hypothesis pr1: P /\ (Q \/ R).
Hypothesis pr2: P -> ~R.
Goal Q \/ E.
Abort.
End exercise1c.

Section exercise1d.
Goal (P->Q)->(P->R)->(Q->R->W)->P->W.
Abort.
End exercise1d.
