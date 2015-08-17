require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) do
    Person.new(first_name: 'Bob', last_name: 'Seger')
  end

  it 'is invalid without a first name' do
    person.first_name = nil
    expect(person).not_to be_valid
  end

  it 'is invalid without a last name' do
    person.last_name = nil
    expect(person).not_to be_valid
  end

  it 'is valid' do
    expect(person).to be_valid
  end
end
