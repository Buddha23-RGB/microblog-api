from microblog import db, User, Post

user1 = User(username='john_doe', email='john@example.com')
db.session.add(user1)
db.session.commit()

post1 = Post(title='First Post',
             content='This is my first post!', user_id=user1.id)
db.session.add(post1)
db.session.commit()
