class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM posts;'
    add_reference :posts, :user,null: false,index: true
  end
  
  def down
    remove_reference :posts, :user, index:true
  end
#  def change
#  end
end


#//add_referencce postの作成ではない。ユーザーレコードが空だと問題が起きる。
#// column posts.user_id does not exist
#// def upが実行の際に、def down はロールバックの際に実行する。
#//但し、 def change があるとそれだけ読み込まれる。