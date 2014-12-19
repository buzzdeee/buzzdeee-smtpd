require 'spec_helper'
describe 'smtpd' do

  context 'with defaults for all parameters' do
    it { should contain_class('smtpd') }
  end
end
