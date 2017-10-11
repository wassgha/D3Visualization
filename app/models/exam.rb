class Exam < ApplicationRecord
   self.table_name = 'data_exam'
   belongs_to :School

   def school_year
     "#{academic_year_start} - #{academic_year_end}"
   end

end
