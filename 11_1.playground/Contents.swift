class MusicalInstrument
{
    func makesound() -> String
    {
        return "I make no sound yet"
    }
    
    func color() -> String
    {
        return "My color is black "
    }
    
    final func chair() -> String
    {
        return "I am only played by the first chair" //cant be changed
    }
}

class Percussion:MusicalInstrument
{
}
class Strings:MusicalInstrument
{
}
class Winds:MusicalInstrument
{
    override func makesound() -> String
    {
        return "I use a mouthpiece to make beautiful sound."
    }
    
    override func color() -> String
    {
        return super.color() + "and white." //access super class function
    }
}

let clarinet = Winds()
print(clarinet.makesound())
print(clarinet.color())
print(clarinet.chair())
