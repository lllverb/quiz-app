science = Category.create(name:"理科")
science.children.create([{name:"物理"}, {name:"化学"}, {name:"生物"}, {name:"地学"}])
social = Category.create(name:"社会")
social.children.create([{name:"日本史"}, {name:"世界史"}, {name:"地理"}, {name:"現代社会"}])