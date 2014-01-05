describe 'api/recipes/index' do
  let(:william) { create(:user, name: 'William') }
  let(:frozen_desserts) { create(:category, name: 'Frozen Desserts') }
  let(:healthy) { create(:category, name: 'Healthy') }
  let(:ice_cream) { create(:recipe, name: 'Ice Cream', instructions: 'Buy ice cream.  Serve.', categories: [frozen_desserts, healthy], user: william) }

  before do
    @recipes = [ice_cream, create(:recipe)]
    render
  end

  subject { JSON.parse(rendered) }
  its(:length) { should == 2 }

  context 'first recipe' do
    subject { JSON.parse(rendered).first }
    its(['id']) { should == ice_cream.id }
    its(['name']) { should == 'Ice Cream' }
    its(['instructions']) { should == 'Buy ice cream.  Serve.' }
    its(['user']) { should == 'William' }
    its(['categories']) { should == ['Frozen Desserts', 'Healthy'] }
  end
end
