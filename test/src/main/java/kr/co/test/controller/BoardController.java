package kr.co.test.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.test.dao.BoardDao;
import kr.co.test.dto.BoardDto;

@Controller
public class BoardController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home()
	{
		return "redirect:/list";
	}
	@RequestMapping("/write")
	public String write()
	{
		return "/write";
	}
	
	@RequestMapping("/write_ok")
	public String write_ok(BoardDto bdto)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		bdao.write_ok(bdto);
		
		return "redirect:/list";
	}
	
	@RequestMapping("/list")
	public String list(Model model)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		ArrayList<BoardDto>list = bdao.list();
		
		model.addAttribute("list", list);
		return "/list";
	}
	
	@RequestMapping("/readnum")
	public String readnum(BoardDto bdto)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		bdao.readnum(bdto);
		
		return "redirect:/content?id="+bdto.getId();
	}
	
	@RequestMapping("/content")
	public String content(Model model,BoardDto bdto)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		BoardDto bdto2 = bdao.content(bdto);
		
		bdto2.setContent(bdto2.getContent().replace("\r\n", "<br>"));
		model.addAttribute("bdto",bdto2);
		
		return "/content";
	}
	
	@RequestMapping("/delete")
	public String delete(BoardDto bdto)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		
		if(bdao.pwdCheck(bdto)==1)
		{
			bdao.delete(bdto);
			return "redirect:/list";
		}
		else
		{
			return "redirect:/content?id="+bdto.getId();
		}
	}
	
	@RequestMapping("/update")
	public String update(BoardDto bdto,Model model)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		BoardDto bdto2 = bdao.update(bdto);
		
		model.addAttribute("bdto",bdto2);
		
		return "/update";
	}
	
	@RequestMapping("/update_ok")
	public String update_ok(BoardDto bdto)
	{
		BoardDao bdao = sqlSession.getMapper(BoardDao.class);
		
		if(bdao.pwdCheck(bdto)==1)
		{
			bdao.update_ok(bdto);
			return "redirect:/content?id="+bdto.getId();
		}
		else
		{
			return "redirect:/update?id="+bdto.getId();
		}
	}
}
