require 'swt_shoes/spec_helper'

describe Shoes::Swt::Radio do
  let(:text) { "TEXT" }
  let(:dsl) { double('dsl', :width= => true, :height= => true) }
  let(:parent) { double('parent', real: true, dsl: mock(contents: []) ) }
  let(:block) { proc {} }
  let(:real) { double('real').as_null_object }

  subject { Shoes::Swt::Radio.new dsl, parent, block }

  before :each do
    ::Swt::Widgets::Button.stub(:new) { real }
  end

  it_behaves_like "buttons"
  it_behaves_like "movable element"
  it_behaves_like "selectable"

end
