class Form
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :sin, type: String
  field :email, type: String
  field :sequence, type: Integer
  field :date_of_birth, type: String

  after_create :update_sequence

private
  def update_sequence
    self.update_attribute :sequence, next_seq_val 
  end
  
  def next_seq_val
    sequence = db.collection("counters").find_and_modify(
      :query => {"_id" => "#{self.class.name.underscore}_sequence"},
      :update=> {"$inc"=> {"value"=>1}},
      :new => true,
      :upsert => true)
    sequence["value"]
  end
end
