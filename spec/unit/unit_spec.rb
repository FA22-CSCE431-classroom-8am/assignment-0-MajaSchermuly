# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    subject.author = 'rowling'
    subject.price = '12.99'
    subject.date = '01/01/2001'
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(author: 'J.K. Rowling')
    end
  
    it 'is valid with valid attributes' do
      subject.title = 'harry potter'
      subject.price = '12.99'
      subject.date = '01/01/2001'
      expect(subject).to be_valid
    end
  
    it 'is not valid without a author' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(date: '01/01/2001')
    end
  
    it 'is valid with valid attributes' do
      subject.title = 'harry potter'
      subject.author = 'rowling'
      subject.price = '12.99'
      expect(subject).to be_valid
    end
  
    it 'is not valid without a date' do
      subject.date = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(price: '12.99')
    end
  
    it 'is valid with valid attributes' do
      subject.title = 'harry potter'
      subject.author = 'rowling'
      subject.date = '01/01/2001'
      expect(subject).to be_valid
    end
  
    it 'is not valid without a price' do
      subject.price = nil
      expect(subject).not_to be_valid
    end
end