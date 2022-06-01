class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|# create_table一般情况下默认创建id主键
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps# timestamps宏添加了created_at 和 updated_at 两个字段
    end
  end
end

# comments 评论表
# id                :integer                not null,primary key #id
# commenter         :string                                      #评论人
# body              :text                                        #评论内容
# article_id
# created_at        :datetime               not null
# updated_at        :datetime               not null



# create_table :user,options: "ENGINE=BLACKHOLE" do |t|
#   # 用于创建数据表的 SQL 语句末尾加上 ENGINE=BLACKHOLE
#   # （如果使用 MySQL 或 MarialDB，默认选项是 ENGINE=InnoDB）
#   t.string :name
#   t.string :male
# end