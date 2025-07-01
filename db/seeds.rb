# Clear existing data
HabitLog.delete_all
Habit.delete_all
GoalPhase.delete_all
Goal.delete_all
User.delete_all

# Create a user
user = User.create!(
  email: "test@example.com",
  password: "password123",
  password_confirmation: "password123"
)

# Create a goal
goal = Goal.create!(
  user: user,
  identity_statement: "I am a healthy person.",
  why_it_matters: "To live longer and feel better.",
  success_definition: "Exercising 5 times a week.",
  time_commitment_minutes: 150,
  current_level: "beginner"
)

# Create goal phases
phase1 = GoalPhase.create!(
  goal: goal,
  phase_number: 1,
  title: "Start Small",
  description: "Begin with short workouts."
)
phase2 = GoalPhase.create!(
  goal: goal,
  phase_number: 2,
  title: "Build Consistency",
  description: "Exercise regularly each week."
)

# Create a habit
habit = Habit.create!(
  goal: goal,
  title: "Morning Jog",
  description: "Jog for 20 minutes every morning."
)

# Create habit logs
HabitLog.create!(
  habit: habit,
  duration_minutes: 20,
  logged_at: 2.days.ago
)
HabitLog.create!(
  habit: habit,
  duration_minutes: 25,
  logged_at: 1.day.ago
)
