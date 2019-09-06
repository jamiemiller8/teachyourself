#This exercise will greet a list of people 

class Greeter
    #the line below is used get and set instance variables
    attr_accessor :names 

    #Creating the object
    def initialize(names = "World")
        #the line below is an instance variable and is available to all methods of the class 
        @names = names
    end 

    #Saying hi to classmates
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # since @names is a list, we need to iterate through it
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else 
            puts "Hello #{@names}!"
        end 
    end 

    #Say goodbye to classmates
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            #join the list elements with commas
            puts "Goodbye #{@names.join(", ")}. Hope you enjoyed the lesson!"
        else
            puts "Goodbye #{@names}. Hope you enjoyed the lesson!"
        end
    end 
end 


   if __FILE__ == $0
    # the line below just shortens the method when calling it so we don't have to type greeter each time
    g = Greeter.new
    g.say_hi 
    g.say_bye 

    # Change name to "Jamie"
    g.names = "Jamie"
    g.say_hi 

    #Change name to an array of names
    g.names = ["Kyle", "Laura", "Dee", "Jerry", "Victor",
                "Samuel", "Majed", "Ashtin", "Austin", 
                "Keenan", "Keene", "David"]
    g.say_hi 
    g.say_bye 
   end 
