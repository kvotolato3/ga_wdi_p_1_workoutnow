
Exercise.delete_all
User.delete_all

puts "Creating Users..."
kathleen = User.create(email: "kathleen@example.com", password: "12345678")
kelly = User.create(email: "kelly@example.com", password: "12345678")
katie = User.create(email: "katie@example.com", password: "12345678")

puts "Creating Exercises..."
Exercise.create(
  name: 'Inchworm',
  description: "Stand up tall with the legs straight, and do like Lil’ Jon and let
  those fingertips hit the floor. Keeping the legs straight (but not locked!),
  slowly lower the torso toward the floor, and then walk the hands forward. Once
  in a push-up position, start taking tiny steps so the feet meet the hands.",
  seconds_duration: 45,
  repetitions: 5,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Tuck Jump',
  description: "Standing with the knees slightly bent, jump up as high as possible
  (pretend Jeremy Lin is watching!) and bring the knees in toward the chest while extending
  the arms straight out. Land with the knees slightly bent and quickly jump (on it) again!",
  seconds_duration: 45,
  repetitions: 5,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
  category: "Bodyweight"
  )


Exercise.create(
  name: 'Bear Crawl',
  description: "Embrace that inner grizzly. Starting on the hands and knees, rise up onto
  the toes, tighten the core, and slowly reach forward with the right arm and right knee, followed
  by the left side. Continue the crawl for 8-10 reps (or until you scare your roommates off).",
  seconds_duration: 60,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Plyometric Push-Up',
  description: "Ready to catch some air? Start on a well-padded surface and complete a traditional
  push-up. Then, in an explosive motion, push up hard enough to come off the floor (and hang ten for a
    second!). Once back on solid ground, immediately head into the next repetition.",
  seconds_duration: 120,
  repetitions: 5,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Stair Climb with Bicep Curl',
  description: "Turn those stairs into a cardio machine — no magic wand necessary. Grab some dumbbells (or household
    objects!) and briskly walk up and down the stairway while simultaneously doing bicep curls to work the whole body.",
  seconds_duration: 300,
  repetitions: 1,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Mountain Climber',
  description: "Starting on your hands and knees, bring the left foot forward directly under
  the chest while straightening the right leg. Keeping the hands on the ground and core tight,
  jump and switch legs. The left leg should now be extended behind the body with the right knee forward.
  Next up? Everest.",
  seconds_duration: 120,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )
Exercise.create(
  name: 'Prone Walkout',
  description: "Beginning on all fours with the core engaged, slowly walk the hands forward, staying on the toes but not moving them forward. Next, gradually walk the hands backwards to the starting position, maintain stability and balance. (This dance comes next.)",
  seconds_duration: 60,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Burpees',
  description: "One of the most effective full-body exercises around, this one starts out in a low squat position with hands on the floor. Next, kick the feet back to a push-up position, complete one push-up, then immediately return the feet to the squat position. Leap up as high as possible before squatting and moving back into the push-up portion of the show.",
  seconds_duration: 120,
  repetitions: 10,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Plank',
  description: "Nope, we’re (thankfully) not walking the plank. Lie face down with forearms on the floor and hands clasped. Extend the legs behind the body and rise up on the toes. Keeping the back straight, tighten the core and hold the position for 30-60 seconds (or as long as you can hang).",
  seconds_duration: 60,
  repetitions: 1,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Plank-to-Push-Up',
  description: "Starting in a plank position, place down one hand at a time to lift up into a push-up position, with the back straight and the core engaged. Then move one arm at a time back into the plank position (forearms on the ground). Repeat, alternating the arm that makes the first move.",
  seconds_duration: 120,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Wall Sit',
  description: "Who needs a chair when there’s a wall? Slowly slide your back down a wall until the thighs are parallel to the ground. Make sure the knees are directly above the ankles and keep the back straight. Go for 60 seconds per set (or however long it takes to turn those legs to jelly). Need more fire? Add some bicep curls.",
  seconds_duration: 120,
  repetitions: 2,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Wall-Sit_edited-300x300_0.jpg?itok=jPAmdn2x",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Lunge',
  description: "Stand with the hands on the hips and feet hip-width apart. Step the right leg forward and slowly lower your body until the right knee is close to or touching the floor and bent at least 90 degrees. Return to the starting position and repeat with the left leg. Try stepping back into the lunge for a different variation.",
  seconds_duration: 180,
  repetitions: 20,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Clock Lunge',
  description: "Time for a challenge. Complete a traditional forward lunge, then take a big step to the right and lunge again. Finish off the semicircle with a backwards lunge, then return to standing. And all that’s one rep! Aim for 10 reps and then switch legs.",
  seconds_duration: 300,
  repetitions: 20,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Lunge-to-Row',
  description: "Start by doing a normal lunge. Instead of bringing that forward leg back to the starting position, raise it up off the floor while lifting the arms overhead. The leg should remain bent at about 90 degrees. Add weights to really bring the heat.",
  seconds_duration: 300,
  repetitions: 20,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Lung Jump',
  description: "Ready to impress some friends? Stand with the feet together and lunge forward with the right foot. Jump straight up, propelling the arms forward while keeping the elbows bent. While in the air, switch legs and land in a lunge with the opposite leg forward. Repeat and continue switching legs. Try to do 10!",
  seconds_duration: 300,
  repetitions: 10,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Curtsy Lunge',
  description: "Let’s show a little respect. When lunging, step the left leg back behind the right, bending the knees and lowering the hips until the right thigh is almost parallel to the floor. Remember to keep the torso upright and the hips square.",
  seconds_duration: 300,
  repetitions: 10,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Squat',
  description: "Stand with the feet parallel or turned out 15 degrees — whatever is most comfortable. Slowly start to crouch by bending the hips and knees until the thighs are at least parallel to the floor. Make sure the heels do not rise off the floor. Press through the heels to return to a standing position.",
  seconds_duration: 300,
  repetitions: 10,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Mountain-Climber_edited-300x300_0.jpg?itok=ySL7Djjy",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Pistol Squat',
  description: "There may be no gun permit necessary for this one, but it’s still no joke. Stand holding the arms straight out in front of the body,
  and raise the right leg, flexing the right ankle and pushing the hips back. Then lower the body while keeping the right leg raised. Hold (have fun
    with that), then return to standing.",
  seconds_duration: 120,
  repetitions: 6,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Squat Reach and Jump',
  description: "Ready to add some pizzazz (and cardio!) to that squat? Perform a normal squat, but immediately jump up, reaching
  the arms straight overhead. Aim for 15 reps, taking a quick breather before the next set.",
  seconds_duration: 120,
  repetitions: 15,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Chair Squat Pose',
  description: "Stand with the feet hip-distance apart and squat until the thighs are parallel to the floor
  while swinging the arms up. Straighten the legs, then lift up the right knee while swinging the left arm
    outside the right knee. Return to standing and repeat on the other side.",
  seconds_duration: 120,
  repetitions: 2,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Step-Up',
  description: "This may be self-explanatory, but just in case — find a step or bench, and place the right foot on the elevated surface.
  Step up until the right leg is straight (do it for Channing!), then return to start. Repeat, aiming for 10-12 reps on each side.",
  seconds_duration: 240,
  repetitions: 20,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Single Leg Deadlift',
  description: "Start in a standing position with the feet together. Lift the right leg slightly, and lower the arms and torso
  while raising the right leg behind the body. Keep the left knee slightly bent and reach the arms as close to the floor as possible.
    Raise the torso while lowering the right leg. Switch legs.",
  seconds_duration: 60,
  repetitions: 2,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Quadruped Leg Lift',
  description: "Starting on the hands and knees, keep a flat back and engage the core. Raise the left leg straight back,
  stopping when the foot is hip-level and the thigh parallel to the floor. Balance for as long as possible, then raise
  the bottom right toe off the floor, tightening the butt, back, and abs (try to be graceful here!). Hold for up to 10 seconds, then switch legs.",
  seconds_duration: 60,
  repetitions: 2,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Calf Raise',
  description: "From a standing position, slowly rise up on the toes, keeping the knees straight and heels off the floor.
  Hold briefly, then come back down. Aaaand repeat. Try standing on something elevated (like a step) to achieve a wider range of motion.",
  seconds_duration: 60,
  repetitions: 20,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Pistol-Squat_edited-300x300_0.jpg?itok=rcw0v3Ne",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Standard Push-Up',
  description: "There’s a reason this one’s a classic. With hands shoulder-width apart, keep the feet flexed at hip distance,
  and tighten the core. Bend the elbows until the chest reaches the ground, and then push back up (make sure to keep the elbows
    tucked close to the body). That’s one!",
  seconds_duration: 60,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Standard-Push-Up-300x300_0.jpg?itok=JOh-S1bx",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Dolphin Push-Up',
  description: "Start out in dolphin pose (think: down-dog with elbows on the floor). Lean forward,
  lowering the shoulders until the head is over the hands. Pull up the arms and return to the starting position.
  (No ocean necessary.)",
  seconds_duration: 60,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Standard-Push-Up-300x300_0.jpg?itok=JOh-S1bx",
  category: "Bodyweight"
  )

Exercise.create(
  name: 'Superwoman',
  description: "Want some superpowers? Lie face down with arms and legs extended.
  Keeping the torso as still as possible, simultaneously raise the arms and legs to form a small curve in the body. Cape optional.",
  seconds_duration: 20,
  repetitions: 8,
  source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
  photo_url: "http://greatist.com/sites/default/files/styles/article-content-732/public/Standard-Push-Up-300x300_0.jpg?itok=JOh-S1bx",
  category: "Bodyweight"
  )
