require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'class methods' do
    describe '.average_age' do
      it 'returns mean age of all astronauts' do
        astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
        astronaut_2 = Astronaut.create(name: "Barbara Streisand", age: 45, job: "Good Company")
        astronaut_3 = Astronaut.create(name: "Cedric the Entertainer", age: 35, job: "Entertainer")

        expect(Astronaut.average_age).to eq(39)
      end
    end
  end
end
