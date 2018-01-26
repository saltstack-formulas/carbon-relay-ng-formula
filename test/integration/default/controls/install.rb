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

describe directory('/var/run/carbon-relay-ng') do
  it { should be_owned_by 'carbon-relay-ng' }
  it { should be_grouped_into 'carbon-relay-ng' }
end
