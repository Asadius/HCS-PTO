require 'rails_helper'

describe "show page", type: :feature do
  before :each do
    CalendarEvent.create!(title: "harry potter", description: "expelliarmust", start_date_time: DateTime.new(2018,9,5.3), end_date_time: DateTime.new(2018,9,5.6), location: "The Dudley's", is_sport: true, is_approved: true, contact_person: "hnguyenvu@colgate.edu")
    CalendarEvent.create!(title: "voldermort", description: "AVADA KEDABRA", start_date_time: DateTime.new(2018,10,5.3), end_date_time: DateTime.new(2018,10,5.6), location: "under the bridge", is_sport: true, is_approved: true, contact_person: "hnguyenvu@colgate.edu")
    visit "/calendar_events"
  end

  it "should have links to each of the events" do
    expect(page).to have_link("harry potter")
    expect(page).to have_link("voldermort")
  end

  it "clicking on link for a calendar event should show details for that event" do
    click_link("harry potter")
    expect(page).to have_link("Delete event")
    expect(page).to have_content("harry potter")
    expect(page).to have_content("expelliarmust")
  end

  it "should have a link to go back to the event index page" do
    click_link("harry potter")
    expect(page).to have_link("Back to event list")
  end

  it "should have a link to edit the event" do
    click_link("harry potter")
    expect(page).to have_link("Edit event details")
  end

  it "should have a link to delete the event" do
    click_link("harry potter")
    expect(page).to have_link("Delete event")
  end
end
