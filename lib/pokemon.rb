class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  @@all = []

  def initialize(id:, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
    @@all << self
  end

  def self.save(name, type, db)
    binding.pry
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    array = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten

    Pokemon.new(id: array[0], name: array[1], type: array[2], db: db)
  end

end
