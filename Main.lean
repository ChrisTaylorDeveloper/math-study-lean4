import RflFirstAttempt

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

theorem two_eq_two : 2 = 2 := by
  exact rfl

theorem two_eq_two_b : 2 = 2 := by
  rfl

example : 3 = 3 := by rfl

def sub1 : Nat → Nat | Nat.zero => Nat.zero | succ x => x
