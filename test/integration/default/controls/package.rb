title 'Verify installation of carbon-relay-ng'

describe package('carbon-relay-ng') do
    it { should be_installed }
end

describe directory('/etc/carbon-relay-ng') do
    it { should be_directory }
end

describe file('/etc/carbon-relay-ng/carbon-relay-ng.conf') do
    it { should be_file }
end
