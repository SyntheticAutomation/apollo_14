require 'rails_helper'


describe 'A visitor to our web app' do
  describe 'when I visit the astronauts index page' do
    it 'displays all astronauts and their info' do
      astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      astronaut_2 = Astronaut.create(name: "Barbara Streisand", age: 45, job: "Good Company")
      astronaut_3 = Astronaut.create(name: "Cedric the Entertainer", age: 35, job: "Entertainer")

      visit '/astronauts'

      expect(page).to have_content("Name: #{astronaut_1.name}")
      expect(page).to have_content("Age: #{astronaut_1.age}")
      expect(page).to have_content("Job: #{astronaut_1.job}")

      expect(page).to have_content("Name: #{astronaut_2.name}")
      expect(page).to have_content("Age: #{astronaut_2.age}")
      expect(page).to have_content("Job: #{astronaut_2.job}")

      expect(page).to have_content("Name: #{astronaut_3.name}")
      expect(page).to have_content("Age: #{astronaut_3.age}")
      expect(page).to have_content("Job: #{astronaut_3.job}")
      expect(page). to have_content("Average Age: #{Astronaut.average_age}")
    end
  end
end
