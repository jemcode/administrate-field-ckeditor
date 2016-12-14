require "administrate/field/ckeditor"

describe Administrate::Field::Ckeditor do
  
  let(:page) { :show }
  let(:data) { "<h1>Hello!</h1>\n<p>This is an exciting piece of data!</p>" }
  subject { Administrate::Field::Ckeditor.new(:relation, "/a.jpg", page) }
  before(:each) do
    allow(subject).to receive(:data).and_return(data)
    allow(subject).to receive(:truncation_length).and_return(10)
  end
    
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      expect(subject.to_partial_path).to eq("/fields/ckeditor/#{page}")
    end
  end
  
  describe '#truncate_stripped' do
    it 'strips out HTML and truncates to the truncation length' do
      expect(subject.truncate_stripped).to eq("Hello!\nThis")
    end
  end
  
end
