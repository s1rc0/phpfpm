require 'spec_helper'
describe 'phpfpm' do

  context 'with defaults for all parameters' do
    it { should contain_class('phpfpm') }
  end
end
