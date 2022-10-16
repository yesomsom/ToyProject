package mango.mango.model;

import java.io.Serializable;

public class ReserveVO implements Serializable {
	private String id;
	private int reserveSequence;
	private String title;
	private String runningTime;
	private String movieDate;
	private String reserveDate;
	private String ticketNumber;
	private String selectedSeat;
	private String selectedTheater;
	private String movieAge;

	private PayVO PayVO;

	public ReserveVO() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getReserveSequence() {
		return reserveSequence;
	}

	public void setReserveSequence(int reserveSequence) {
		this.reserveSequence = reserveSequence;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(String runningTime) {
		this.runningTime = runningTime;
	}

	public String getMovieDate() {
		return movieDate;
	}

	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(String ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public String getSelectedSeat() {
		return selectedSeat;
	}

	public void setSelectedSeat(String selectedSeat) {
		this.selectedSeat = selectedSeat;
	}

	public String getSelectedTheater() {
		return selectedTheater;
	}

	public void setSelectedTheater(String selectedTheater) {
		this.selectedTheater = selectedTheater;
	}

	public String getMovieAge() {
		return movieAge;
	}

	public void setMovieAge(String movieAge) {
		this.movieAge = movieAge;
	}

	public PayVO getPayVO() {
		return PayVO;
	}

	public void setPayVO(PayVO pVO) {
		this.PayVO = pVO;
	}

	public ReserveVO(String id, int reserveSequence, String title, String runningTime, String movieDate,
			String reserveDate, String ticketNumber, String selectedSeat, String selectedTheater, String movieAge,
			PayVO pVO) {
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
		this.movieAge = movieAge;
		this.PayVO = pVO;
	}

	@Override
	public String toString() {
		return "ReserveVO [id=" + id + ", reserveSequence=" + reserveSequence + ", title=" + title + ", runningTime="
				+ runningTime + ", movieDate=" + movieDate + ", reserveDate=" + reserveDate + ", ticketNumber="
				+ ticketNumber + ", selectedSeat=" + selectedSeat + ", selectedTheater=" + selectedTheater
				+ ", movieAge=" + movieAge + "]";
	}

}