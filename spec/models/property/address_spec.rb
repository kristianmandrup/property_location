require 'spec_helper'
require 'address'

describe Address do
  subject { property.address }

  context 'Property' do
    let(:property)  { create :valid_property, street: street, city: 'Copenhagen' }
    let(:street)    { 'Griffenfeldsgade 11b' }
    let(:country)   { 'Denmark' }

    # http://www.infoplease.com/ipa/A0001769.html
    # Latitude and Longitude of World Cities
    # Copenhagen, Denmark, 55, 40 N, 12, 34 E
    let(:latitude)  { 55.688568 }
    let(:longitude) { 12.5549331 }

    describe 'address' do
      describe 'street' do
        it 'should be Griffenfeldsgade' do
          expect(subject.street).to eq street
        end
      end

      describe 'country' do
        it 'should be Denmark' do
          expect(subject.country).to eq country 
        end
      end
    end
  end
end