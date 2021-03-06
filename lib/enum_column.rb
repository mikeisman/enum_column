class Railtie < Rails::Railtie
  initializer "enum_column.initialize" do |app|
    ActiveSupport.on_load :active_record do
      require 'enum/enum_adapter'
      require 'enum/mysql_adapter' #if defined? ActiveRecord::ConnectionAdapters::Mysql2Adapter
      require 'enum/schema_statements'
      require 'enum/schema_definitions'
      require 'enum/quoting'
      require 'enum/validations'
    end

    ActiveSupport.on_load :action_view do
      require 'enum/active_record_helper'
    end
  end
end







