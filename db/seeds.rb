# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name:'matt', password:'123')

song1 = Song.create(name:'dope', user_id:1)
song2 = Song.create(name:'not dope', user_id:1)

sequence1= Sequence.create(song_id:1,order:0,tone:"G5",note1:false,note2:false,note3:false,note4:false,note5:false,note6:false,note7:false,note8:false,synth:"default")
sequence2= Sequence.create(song_id:1,order:1,tone:"E4",note1:false,note2:false,note3:false,note4:false,note5:false,note6:false,note7:false,note8:false,synth:"default")

sequence3= Sequence.create(song_id:2, order:0, tone:"C5", note1:true,note2:false,note3:false,note4:false,note5:false,note6:false,note7:false,note8:false,synth:"default")
sequence4= Sequence.create(song_id:2,order:1, tone:"B4", note1:true,note2:true,note3:false,note4:false,note5:false,note6:false,note7:false,note8:false,synth:"default")




