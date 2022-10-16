package mango.mango.model;

public class InfoDTO {

   String rank;
   String img;
   String movieTitle;
   String movieRate; //  삁留ㅼ쑉
   String movieOpenDate; // 媛쒕큺 씪
   int seq;

   public InfoDTO() {
      // TODO Auto-generated constructor stub
   }

   public String getRank() {
      return rank;
   }

   public void setRank(String rank) {
      this.rank = rank;
   }

   public String getImg() {
      return img;
   }

   public void setImg(String img) {
      this.img = img;
   }

   public String getMovieTitle() {
      return movieTitle;
   }

   public void setMovieTitle(String movieTitle) {
      this.movieTitle = movieTitle;
   }

   public String getMovieRate() {
      return movieRate;
   }

   public void setMovieRate(String movieRate) {
      this.movieRate = movieRate;
   }

   public String getMovieOpenDate() {
      return movieOpenDate;
   }

   public void setMovieOpenDate(String movieOpenDate) {
      this.movieOpenDate = movieOpenDate;
   }

   public InfoDTO(int seq, String rank, String img, String movieTitle, String movieRate, String movieOpenDate) {
      super();
      this.seq = seq;
      this.rank = rank;
      this.img = img;
      this.movieTitle = movieTitle;
      this.movieRate = movieRate;
      this.movieOpenDate = movieOpenDate;
   }

   @Override
   public String toString() {
      return "InfoDto [seq=" + seq + ", rank=" + rank + ", img=" + img + ", movieTitle=" + movieTitle + ", movieRate="
            + movieRate + ", movieOpenDate=" + movieOpenDate + "]";
   }

}