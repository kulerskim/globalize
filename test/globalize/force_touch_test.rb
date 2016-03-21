# encoding: utf-8
require File.expand_path('../../test_helper', __FILE__)

class ForceTouchOption < MiniTest::Spec
  describe 'when translation is modifed directly' do
    it 'force_touch option forces touch translated class record' do
      some_time_ago = Time.now.utc - 3600
      item = Item.create(content: 'Some content', created_at: some_time_ago, updated_at: some_time_ago)
      item.translation.update(content: 'Modified Content')
      item.reload

      refute_equal(item.updated_at, some_time_ago)
    end
  end
end