
require 'thor'
require 'pathname'
require 'csv'

INCLUDE_PATH = Pathname.new(__FILE__).dirname.join.expand_path.to_s
$:.unshift INCLUDE_PATH

module Op2ghissue
  class CLI < Thor

    option :path, :type => :string, :required => true
    desc 'create', 'create issue'
    def create
      opts = options.to_hash
      path = File.expand_path(opts[:path])
      def exec_create()
      end
      csv_data = CSV.read(path, headers: true)
      puts 'hogepiyo'

      
    end
  end
end

