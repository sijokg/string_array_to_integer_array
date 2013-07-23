require 'spec_helper'
require 'string_array_to_integer_array'

describe StringArrayToIntegerArray do
  # let(:string_array_to_integer_array_wrapper){
  #  class StringArrayToIntegerArrayWrapper
  #    include StringArrayToIntegerArray
  #  end
  #  StringArrayToIntegerArrayWrapper.new
  # }

  describe '#convert_string_array_to_intger_array' do
    context 'for a string array with non nil values' do
      it 'should should return corresponding integer array' do
        StringArrayToIntegerArray.convert(%w(1 2)).should == [1, 2]
      end
    end

    context 'for a string array with null/nil values' do
      it 'should should return corresponding integer array
          after removing nils' do
        StringArrayToIntegerArray.convert(['1', '2', '']).should == [1, 2]
        StringArrayToIntegerArray.convert(['1', '2', nil]).should == [1, 2]
      end
    end

    context 'for a intger array' do
      it 'should return same array' do
        StringArrayToIntegerArray.convert([1, 2]).should == [1, 2]
      end
    end
  end
end
