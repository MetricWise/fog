Shindo.tests('Rackspace::Servers#list_flavors', 'rackspace') do
  tests('success') do

    before do
      @data = Rackspace[:servers].list_flavors.body['flavors']
    end

    test('has proper output format') do
      has_format(@data, Rackspace::Servers::Formats::SUMMARY)
    end

  end
end
