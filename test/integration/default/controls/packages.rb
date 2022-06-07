# frozen_string_literal: true

control 'carbon-relay-ng.package.install' do
  title 'The required package should be installed'

  # Override by `platform_finger`
  package_name = 'carbon-relay-ng'

  describe package(package_name) do
    it { should be_installed }
  end
end
