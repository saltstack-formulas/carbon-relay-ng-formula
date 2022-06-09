# frozen_string_literal: true

control 'carbon-relay-ng.config.file' do
  title 'Verify the configuration file'

  describe file('/etc/carbon-relay-ng/carbon-relay-ng.conf') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its('content') do
      should include(
        '# DO NOT EDIT
#
# This file is managed by salt'
      )
    end
  end
end
