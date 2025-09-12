import RflFirstAttempt

set_option diagnostics true

def main : IO Unit := IO.println s!"Hello, {hello}!"

def sub1 : Nat → Nat | Nat.zero => Nat.zero | Nat.succ x => x

def is_nat_zero (n : Nat) : Prop := n = 0

#eval is_nat_zero 0 -- True
#eval is_nat_zero 1 -- False

theorem two_eq_two : 2 = 2 := by exact rfl

theorem two_eq_two_b : 2 = 2 := by rfl

example : 3 = 3 := by rfl

example : sub1 0 = 0 := by rfl

theorem zero_eq_zero : sub1 0 = 0 := by rfl

example : sub1 4 = 3 := by rfl

example (x : Nat) : sub1 (Nat.succ x) = x := by rfl

-- Example 4: Equality using a constant value
example : is_nat_zero 0 = true := by rfl
