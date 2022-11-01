package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReserveVO {
	private String id;
	private int reserveSequence;
	private String title;
	private String runningTime;
	private String movieDate;
	private String reserveDate;
	private String ticketNumber;
	private String selectedSeat;
	private String selectedTheater;
	private String movieName;

	private PayVO PayVO;

	public ReserveVO() {
		// TODO Auto-generated constructor stub
	}

	public ReserveVO(String id, int reserveSequence, String title, String runningTime, String movieDate, String reserveDate, String ticketNumber, String selectedSeat,
			String selectedTheater, String movieName, PayVO pVO) {
		super();
		this.id = id;
		this.reserveSequence = reserveSequence;
		this.title = title;
		this.runningTime = runningTime;
		this.movieDate = movieDate;
		this.reserveDate = reserveDate;
		this.ticketNumber = ticketNumber;
		this.selectedSeat = selectedSeat;
		this.selectedTheater = selectedTheater;
		this.movieName = movieName;
		this.PayVO = pVO;
	}

	@Override
	public String toString() {
		return "ReserveVO [id=" + id + ", reserveSequence=" + reserveSequence + ", title=" + title + ", runningTime=" + runningTime + ", movieDate=" + movieDate + ", reserveDate="
				+ reserveDate + ", ticketNumber=" + ticketNumber + ", selectedSeat=" + selectedSeat + ", selectedTheater=" + selectedTheater + ", movieName=" + movieName + "]";
	}

}