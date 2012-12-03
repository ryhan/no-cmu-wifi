class Report < ActiveRecord::Base
  DEFAULT_MESSAGE = <<EOH
Advisor,

I am a student at Carnegie Mellon University.

Today, I was unable to access the Internet via the campus wireless on both CMU and CMU-SECURE.

During this time, I was unable to complete my homework, access Blackboard, collaborate with my peers, study for finals, or perform any other scholarly duties.

In the last week of classes, an outage like this is unacceptable and is directly impacting my ability to perform as a student.

Thank You
EOH

  attr_accessible :andrew_id, :location, :name, :personal

  validates_presence_of :name, :andrew_id, :location
  validates_uniqueness_of :andrew_id

  default_scope order(:location, :name)
end
