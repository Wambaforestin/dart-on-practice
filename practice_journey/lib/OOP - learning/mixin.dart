// Define a mixin for basic musical abilities
mixin Musical {
  void play() {
    print('Playing music');
  }

  void stop() {
    print('Stopped playing music');
  }
}

// Define another mixin for recording capabilities
mixin Recordable {
  void record() {
    print('Recording');
  }

  void stopRecording() {
    print('Stopped recording');
  }
}

// A class that uses both mixins
class Musician with Musical, Recordable {
  String name;

  Musician(this.name);

  void perform() {
    play();
    record();
  }

  void takeABreak() {
    stop();
    stopRecording();
  }
}

// A class that uses only the Musical mixin
class Singer with Musical {
  String name;

  Singer(this.name);

  void perform() {
    play();
  }
}

void main() {
  var john = Musician('John');
  john.perform();
  // Output:
  // Playing music
  // Recording

  john.takeABreak();
  // Output:
  // Stopped playing music
  // Stopped recording

  var jane = Singer('Jane');
  jane.perform();
  // Output:
  // Playing music
}
//Note that ca class can also override the methods of a mixin to suit its needs.
// No extend keyword is used here. Instead, the with keyword is used to add the mixin to the class.