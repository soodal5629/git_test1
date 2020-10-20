package com.example.demo.animal.dto;

import lombok.Data;
@Data
public class AnimalDTO {

	private int animal_idx;
	private String kind;
	private String animal_name;
	private String gender;
	private String memo;
	private String pwd;
	private String reason;
	public int getAnimal_idx() {
		return animal_idx;
	}
	public void setAnimal_idx(int animal_idx) {
		this.animal_idx = animal_idx;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getAnimal_name() {
		return animal_name;
	}
	public void setAnimal_name(String anima_name) {
		this.animal_name = anima_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemeo(String memo) {
		this.memo = memo;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		return "AnimalDTO [animal_idx=" + animal_idx + ", kind=" + kind + ", animal_name=" + animal_name + ", gender="
				+ gender + ", memo=" + memo + ", pwd=" + pwd + ", reason=" + reason + "]";
	}
	
}
