import RflFirstAttempt

set_option diagnostics true

def main : IO Unit := IO.println s!"Hello, {hello}!"

def sub1 : Nat → Nat | Nat.zero => Nat.zero | Nat.succ x => x

theorem two_eq_two : 2 = 2 := by exact rfl

theorem two_eq_two_b : 2 = 2 := by rfl

example : 3 = 3 := by rfl

example : sub1 0 = 0 := by rfl

theorem zero_eq_zero : sub1 0 = 0 := by rfl

example : sub1 4 = 3 := by rfl

example (x : Nat) : sub1 (Nat.succ x) = x := by rfl
