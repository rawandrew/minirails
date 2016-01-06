module ActiveRecord
  class Base
    @@connection = MiniRails::SqliteAdapter.new

    def initialize(attributes = {})
      @attributes = attributes
    end

    def method_missing(name, *args)
      columns = @@connection.columns(self.class.table_name)
      if columns.include?(name)
        @attributes[name]
      else
        super
      end
    end

    def self.find(id)
      find_by_sql("SELECT * FROM #{table_name} WHERE id = #{id.to_i} LIMIT 1").first
    end

    def self.all
      find_by_sql("SELECT * FROM #{table_name}")
    end

    def self.find_by_sql(sql)
      rows = @@connection.execute sql
      rows.map.each do |attributes|
        new attributes
      end
    end

    def self.table_name
      name.split('::').last.downcase + 's'
    end

  end
end