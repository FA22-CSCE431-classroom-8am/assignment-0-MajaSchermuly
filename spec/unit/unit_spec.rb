# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Author, type: :model do
    subject do
      described_class.new(Author: 'J.K. Rowling')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Date, type: :model do
    subject do
      described_class.new(Date: '01/01/2001')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.date = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Price, type: :model do
    subject do
      described_class.new(Price: '12.99')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name' do
      subject.price = nil
      expect(subject).not_to be_valid
    end
end