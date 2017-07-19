# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)

  averages = grade_hash.map do |key, value|
    totals = value.reduce do |total, x|
      total += x
    end
    [key, totals / value.length]
  end
  averages.to_h
end


# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, student, assignment_num)
   return grade_hash[student][assignment_num-1]
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_num)
   grade_hash.map do |key, value|
   value[assignment_num - 1]
end
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
   assignment_scores = assignment_num

end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
end

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
end

# Return the average for the entire class.
def class_average(grade_hash)
    averages = averages(grade_hash).values.reduce do |a, value|
      a += value
    end

  averages / grade_hash.length
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash)
  averages(grade_hash)
    .to_a
    .sort_by { |student| -student[1] }
    .map { |student| student[0] }
end
