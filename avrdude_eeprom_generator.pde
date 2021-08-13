
String folder = "eeprom";

String fileName = "eeprom";
String fileExt = ".hex";

byte hex[] = new byte[32];

String hex_start = ":20000000";
String hex_last = ":00000001FF";

void setup() {
  size(320,320);
  fill(50);
  
  for(int i=1; i<=12; i++)
  {
    CreateBat(i);
    CreateFile(i);
  }
  
  noLoop();
  exit();
}

void CreateBat(int value)
{
  PrintWriter output = createWriter(folder + "\\" + fileName + value + ".bat");
  String file = fileName + value + fileExt;
  String line = "";
   
  line += "avrdude\\avrdude.exe -c usbasp -p atmega328p -U eeprom:w:"+ file+":i -v";
  line += "\n";
  line += "@pause";
  
  output.println(line);
  output.flush();
  output.close();
}

void CreateFile(int value)
{
  PrintWriter output = createWriter(folder + "\\" + fileName + value + fileExt);
  output.println(CreateHex(value));
  output.flush();
  output.close();
}

String CreateHex(int value)
{
  String hex_line = "";
  hex_line += hex_start;
  
  for (int i = 0; i < hex.length; i++) {
    hex[i] = byte(255);
  }  
  
  hex[0] = byte(value);
  
  byte res = 0;
  for(int i=0; i<hex.length; i++){
    res ^= hex[i];
  }
  for (int i = 0; i < hex.length; i++) {
    hex_line += hex(hex[i] ,2);
  }
  
  hex_line += hex(res ,2);
  hex_line += "\n";
  hex_line += hex_last;
  
  println(hex_line);
  return hex_line;
}
