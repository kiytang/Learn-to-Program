require_relative './orange_tree'

describe OrangeTree do

  subject(:tree) { OrangeTree.new }

  describe '#initialize' do
    its(:age) { should eq 0 }
    its(:height) { should eq 0 }
    its(:orange_count) { should eq 0 }
  end

  describe '#age' do
    context 'after one year' do 
      before { tree.age! } 
      its(:age) { should eq 1 }
      its(:height) { should eq 1.75 }
      its(:orange_count) { should eq 0 }
    end

    context 'after five years' do
      before { 5.times { tree.age! } }
      its(:age) { should eq 5 }
      its(:height) { should eq 8.75 }
      its(:orange_count) { should be_between(17, 50) }
    end

    context 'after 35 years' do
      before { 35.times { tree.age! } }
      its(:age) { should eq 35 }
      its(:height) { should eq 52.5 }
      its(:orange_count) { should eq 0 }
    end
  end

  describe '#dead' do
    context 'after 20 years' do
      before { 20.times { tree.age! } }
      it{ should_not be_dead }
    end

    context 'after 30 years' do
      before { 30.times { tree.age! } }
      it{ should_not be_dead }
    end

    context 'after 31 years' do
      before { 31.times { tree.age! } }
      it{ should be_dead }
    end

    context 'after 40 years' do
      before { 40.times { tree.age! } }
      it{ should be_dead }
    end
  end

  describe '#pick_an_orange!' do
    context 'when the orange tree has no oranges' do
      before { tree.age! }
      it "should not allow picking an orange if the tree doesn't have any" do
        expect { tree.pick_an_orange! }.to raise_error(NoOrangesError)
      end
    end
    context 'when the tree is in the correct age range to grow oranges' do
      before { tree.age! until tree.any_oranges? }
      it "should not stop user from picking an orange if the tree has oranges to pick" do
        expect { tree.pick_an_orange! }.to_not raise_error
      end
    end
  end
end