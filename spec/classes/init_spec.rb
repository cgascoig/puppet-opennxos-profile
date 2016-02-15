require 'spec_helper'
describe 'opennxos_profile' do

  context 'with defaults for all parameters' do
    it { should contain_class('opennxos_profile') }
  end
end
