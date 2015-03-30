class DB
	class << self
		def insert
			begin
			    db = SQLite3::Database.open "storage.db"
			    db.execute "CREATE TABLE IF NOT EXISTS Domains(Id INTEGER PRIMARY KEY, 
			        Timestamp INTEGER, Element TEXT)"
			    db.execute "INSERT INTO Domains VALUES(1,'09cd.co.kr', 123)"
			    db.execute "INSERT INTO Domains VALUES(2,'1-verygoods.ru', 1234)"

				rescue SQLite3::Exception => e 
			    
			    puts "Exception occured"
			    puts e
			    
			ensure
			    db.close if db
			end
		end
		def display
			begin
			    db = SQLite3::Database.open "storage.db"
			    
			    stm = db.prepare "SELECT * FROM Domains LIMIT 5" 
			    rs = stm.execute 
			    
			    rs.each do |row|
			        puts row.join "\s"
			    end
			           
			rescue SQLite3::Exception => e 
			    
			    puts "Exception occured"
			    puts e
			    
			ensure
			    stm.close if stm
			    db.close if db
			end
		end
	end
end