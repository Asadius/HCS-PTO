require 'rails_helper'

RSpec.describe CalendarEvent, type: :model do
  describe "check attributes and methods" do
    it "should be able to create a CalendarEvent object which has the correct methods on it" do
      event = CalendarEvent.create!(title: "Event 1", description: "Gibberish nonsensical text", start_date: DateTime.new(2018,9,5), location: "Huntington Gym", is_sport: true, is_approved: true, contact_person: "hnguyenvu@colgate.edu")
      expect(event).to respond_to :title
      expect(event).to respond_to :start_date
      expect(event).to respond_to :location
      expect(event).to respond_to :description
      expect(event).to respond_to :is_sport
      expect(event).to respond_to :is_musical
      expect(event).to respond_to :is_meeting
      expect(event).to respond_to :is_charity
      expect(event).to respond_to :is_gathering
      expect(event).to respond_to :is_optional
      expect(event).to respond_to :for_teacher
      expect(event).to respond_to :for_parent
      expect(event).to respond_to :for_elementary_student
      expect(event).to respond_to :for_highschool_student
      expect(event).to respond_to :contact_person
      expect(event).to respond_to :is_approved
      # expect(event).to respond_to :
      # expect(CalendarEvent).to respond_to :filter_on_constraints
    end
  end

  it "should fail to create a CalendarEvent object if the start date is not specified" do
      expect {
          CalendarEvent.create!(title: "Event 2", description: "Gibberish nonsensical text", location: "Huntington Gym", is_sport: true, is_approved: true, contact_person: "hnguyenvu@colgate.edu")}.to raise_exception ActiveRecord::NotNullViolation
  end

end