module Unicafe
  class Restaurant

    def self.find_by_name name
      self.find_by_id self.name_to_id(name)
    end

    def self.name_to_id name
      case name
      when "Chemicum"
        10
      when "Exactum"
        11
      else
        raise NotFound
      end
    end

    class NotFound < Exception
    end

  end
end