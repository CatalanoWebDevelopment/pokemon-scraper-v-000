class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id
    @name
    @type
    @db
    @@all << self
  end

  def self.save(id, name, type, db)

  end

end
