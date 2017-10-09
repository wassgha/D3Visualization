class Exam < ApplicationRecord
   self.table_name = 'data_exam'
   belongs_to :School
end
