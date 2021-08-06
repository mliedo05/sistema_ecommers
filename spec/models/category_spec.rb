require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'category can not have two parents category' do
    category1 = Category.create(id: 1, name: 'category original')
    category2 = Category.create(id: 2, name: 'category original2')
    sub1 = Category.create(name: 'sub1', category_id: [category1.id, category2.id])

    expect(sub1.category_id).to_not eq(nil)
  end
end
