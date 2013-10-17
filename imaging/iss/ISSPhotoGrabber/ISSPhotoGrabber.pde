

// Adapted from https://github.com/natronics/ISS-photo-locations/
//THUMB_URL_BASE = "http://eol.jsc.nasa.gov/sseop/images/thumb/{mission}/{mrf}.jpg"
//SMALL_URL_BASE = "http://eol.jsc.nasa.gov/sseop/images/ESC/small/{mission}/{mrf}.jpg"
//LARGE_URL_BASE = "http://eol.jsc.nasa.gov/sseop/images/ESC/large/{mission}/{mrf}.jpg"




void setup() {

  size(640, 480);
  background(255);
  for (int i = 1; i < 2; i++) {
    println("Saving mission photos " + i);
    Table table = loadTable("ISS"+nf(i, 3)+".csv");
    for (TableRow row : table.rows()) {
      String photo = row.getString(0);
      String mission = photo.substring(0, photo.indexOf("-"));
      String thumb = "http://eol.jsc.nasa.gov/sseop/images/thumb/"+mission+"/"+photo+".jpg";
      String small = "http://eol.jsc.nasa.gov/sseop/images/ESC/small/"+mission+"/"+photo+".jpg";
      String large = "http://eol.jsc.nasa.gov/sseop/images/ESC/large/"+mission+"/"+photo+".jpg";

      PImage img = loadImage(large);
      img.save("photos/"+photo+".jpg");
    }
  }
}


void draw() {
  noLoop();
}

