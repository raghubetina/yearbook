require 'open-uri'

sections = {
  'am' => { 
    :name => 'AM Dev',
    :location => '1871',
    :times => 'MWF 08:00-11:20',
    :quarter => 'Fall 2012'
  },
  'pm' => {
    :name => 'PM Dev',
    :location => '1871',
    :times => 'MWF 13:30-16:50',
    :quarter => 'Fall 2012'
  },
  'rfd' => {
    :name => 'Rails for Designers',
    :location => '37signals',
    :times => 'TR 15:00-18:00',
    :quarter => 'Fall 2012'
  }
}

sections.each do |section, attributes|
  s = Section.create attributes
  json_response = open("http://codemountain.com/api/students/rfd.json").read

  students = JSON.parse(json_response)

  students.each do |student_hash|
    s.students.create student_hash["student"]
  end
end