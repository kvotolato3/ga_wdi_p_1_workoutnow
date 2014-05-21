require 'spec_helper'

feature 'User generates workouts' do
  scenario 'successfully' do
    exercises = []
    exercises << Exercise.create(
    name: 'Inchworm',
    description: "Stand up tall.",
    seconds_duration: 60,
    repetitions: 5,
    source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
    photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
    category: "Bodyweight"
    )

    exercises << Exercise.create(
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

    exercises << Exercise.create(
    name: 'Bear Crawl',
    description: "Embrace that inner grizzly.",
    seconds_duration: 60,
    repetitions: 8,
    source_url: "http://greatist.com/fitness/50-bodyweight-exercises-you-can-do-anywhere",
    photo_url: "https://greatist.com/sites/default/files/styles/article-content-732/public/Inchworm_edited-300x300_0.jpg?itok=3W4N0Y-y",
    category: "Bodyweight"
    )

    # In order to control which exercises are "randomly" selected,
    # we are making sure ALL the test exercises are being selected by the workout generator.
    # The easiest way to do so is make sure each exercise in the test data is 1 minute (60 seconds), and then fill in
    # the Minutes with the number of exercises. For example, three 60-second exercises means we should
    # request a 3 minute workout.

    visit root_path
    fill_in 'Minutes:', with: 3
    select 'Bodyweight', from: 'Category:'
    click_button 'Workout Now'
    exercises.each do |exercise|
      expect(page).to have_content exercise.name && exercise.description && exercise.source_url
    end
  end
end
