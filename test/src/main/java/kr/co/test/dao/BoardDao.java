package kr.co.test.dao;

import java.util.ArrayList;

import org.springframework.ui.Model;

import kr.co.test.dto.BoardDto;

public interface BoardDao {
	
	public void write();
	public void write_ok(BoardDto bdto);
	
	public ArrayList<BoardDto> list();
	
	public void readnum(BoardDto bdto);
	
	public BoardDto content(BoardDto bdto);
	
	public int pwdCheck(BoardDto bdto);
	
	public void delete(BoardDto bdto);
	
	public BoardDto update(BoardDto bdto);
	
	public void update_ok(BoardDto bdto);
}
