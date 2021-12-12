Require Import Classical.

Parameters P Q R S E U W: Prop.

Section exercise1a.
Hypothesis pr1: P->Q.
Hypothesis pr2: Q /\ (R \/ P ).
Hypothesis pr3: ~(Q \/ R).
Goal False.
unfold not in *.
pose proof (proj1 pr2) as H1.
pose proof (or_introl (B:=R) H1) as H2.
pose proof (pr3 H2) as H3.
exact H3.
Qed.
End exercise1a.

Section exercise1b.
(*¬R ⇒ Q, ¬P ∨ ¬Q, (P ⇔ Q) ` ¬(P ∨ Q)*)
Hypothesis pr1: ~R->Q.
Hypothesis pr2: ~P \/ ~Q.
Hypothesis pr3: P<->Q.
Goal ~(P\/Q).
unfold not in *.
unfold iff in *.
intros H1.
destruct H1 as [H2|H3].
destruct pr2 as [H4|H5].
pose proof (H4 H2) as H6.
exact H6.
pose proof (proj1 pr3) as H7.
pose proof (H7 H2) as H8.
pose proof (H5 H8) as H9.
exact H9.
destruct pr2 as [H4|H5].
pose proof (proj2 pr3) as H7.
pose proof (H7 H3) as H8.
pose proof (H4 H8) as H9.
exact H9.
pose proof (H5 H3) as H6.
exact H6.
Qed.
End exercise1b.


Section exercise1c.
(*P ∧ (Q ∨ R), P ⇒ ¬R ` Q ∨ E*)
Hypothesis pr1: P /\ (Q \/ R).
Hypothesis pr2: P -> ~R.
Goal Q \/ E.
pose proof (proj1 pr1) as H1.
pose proof (proj2 pr1) as H2.
destruct H2 as [H3 | H4].
pose proof (or_introl (B:=E) H3) as H5.
exact H5.
pose proof (pr2 H1) as H6.
unfold not in H6.
pose proof (H6 H4).
contradiction.
Qed.
End exercise1c.

Section exercise1d.
Goal (P->Q)->(P->R)->(Q->R->W)->P->W.
intros H.
intros H1.
intros H2.
intros H3.
pose proof (H H3) as H4.
pose proof (H1 H3) as H5.
pose proof (H2 H4) as H6.
pose proof (H6 H5).
exact H0.
Qed.
End exercise1d.
