package com.cafe.jeongstudy.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.jeongstudy.beans.QnaCombineBean;
import com.cafe.jeongstudy.beans.UserBean;
import com.cafe.jeongstudy.service.QnaService;

@Controller
@RequestMapping("/QnAboard")
public class QnAboardController {
	@Autowired
	private QnaService qnaService;
	 
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	@GetMapping("/main")
	public String main(@RequestParam("board_info_idx") int board_info_idx,
					  /* @RequestParam(value = "page", defaultValue = "1") int page,*/
					   Model model) {		
		model.addAttribute("board_info_idx", board_info_idx);
		String boardInfoName = qnaService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);
		/*
		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		model.addAttribute("contentList", contentList);
		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);*/
		return "QnAboard/main";
	}
	
	@GetMapping("/write")
	public String write(@ModelAttribute("QnaCombineBean") QnaCombineBean qnaCombineBean
			, @RequestParam("qna_board_idx") int qna_board_idx) {		
		qnaCombineBean.setQna_board_idx(qna_board_idx);
		return "QnAboard/write";
	}

	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("QnaCombineBean") QnaCombineBean qnaCombineBean,
			BindingResult result) {
		if (result.hasErrors()) {
			return "QnAboard/write";
		}
		qnaService.addQnaWriteContent(qnaCombineBean);
		return "QnAboard/write_success";
	}
	/*
	@GetMapping("/read")
	public String read(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam("content_idx") int content_idx,
			@RequestParam("page") int page,
			Model model) {
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		ContentBean readContentBean = boardService.getContentInfo(content_idx);
		model.addAttribute("readContentBean", readContentBean);		
		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);
		return "board/read";
	}

	@GetMapping("/modify")
	public String modify(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam("content_idx") int content_idx, 
			@RequestParam("page") int page, 
			// 여기서 리퀘스트파람과 모델어트리뷰트 차이를 모르겠음
			@ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
			Model model) {		
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("page", page);
		// jsp에서 사용하기 위해 세팅
		ContentBean tempContentBean = boardService.getContentInfo(content_idx);
		modifyContentBean.setContent_writer_name(tempContentBean.getContent_writer_name());
		modifyContentBean.setContent_date(tempContentBean.getContent_date());
		modifyContentBean.setContent_subject(tempContentBean.getContent_subject());
		modifyContentBean.setContent_text(tempContentBean.getContent_text());
		modifyContentBean.setContent_file(tempContentBean.getContent_file());
		modifyContentBean.setContent_writer_idx(tempContentBean.getContent_writer_idx());
		modifyContentBean.setContent_board_idx(board_info_idx);
		modifyContentBean.setContent_idx(content_idx);
		return "board/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
			BindingResult result,
			@RequestParam("page") int page,
			Model model){
		model.addAttribute("page",page);
		if(result.hasErrors()) {
			return "board/modify";
		}
		boardService.modifyContentInfo(modifyContentBean);
		return "board/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam("content_idx") int content_idx, Model model) {
		boardService.deleteContentInfo(content_idx);

		model.addAttribute("board_info_idx", board_info_idx);

		return "board/delete";
	}
*/
	@GetMapping("/not_writer")
	public String not_writer() {
		return "QnAboard/not_writer";
	}
}
