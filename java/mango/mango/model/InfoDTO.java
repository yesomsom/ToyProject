package mango.mango.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
public class InfoDTO {

	 String rank;
	 String img;
	 String movieTitle;
	 String movieRate; //  삁留ㅼ쑉
	 String movieOpenDate; // 媛쒕큺 씪
	 int seq;

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
		return "InfoDto [seq=" + seq + ", rank=" + rank + ", img=" + img + ", movieTitle=" + movieTitle + ", movieRate=" + movieRate + ", movieOpenDate=" + movieOpenDate + "]";
	}

}