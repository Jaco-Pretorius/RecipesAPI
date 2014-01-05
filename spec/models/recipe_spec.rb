describe Recipe do
  context 'validation' do
    [:name, :instructions, :user_id].each do |attr|
      it { should validate_presence_of(attr)  }
    end

    context 'a recipe with no categories' do
      subject { build(:recipe, categories: []) }
      it { should_not be_valid }
    end
  end
end