require "administrate/field/ckeditor"

describe Administrate::Field::Ckeditor do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Ckeditor.new(:relation, "/a.jpg", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/ckeditor/#{page}")
    end
  end
end
