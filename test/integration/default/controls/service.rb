title 'Verify service carbon-relay-ng'

describe service('carbon-relay-ng') do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
end

