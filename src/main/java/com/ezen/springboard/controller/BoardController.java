package com.ezen.springboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ezen.springboard.service.board.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	/*
	 * Ŭ���̾�Ʈ�� �̺�Ʈ�� �߻���Ű�� ��û�� �߻��ǰ�
	 * ��Ʈ�ѷ����� @RequestMapping���� ���ε� ���� �ּҿ� ��û�ּҰ� ������
	 * �ش� �޼ҵ带 �����Ѵ�.
	 * �ش� �޼ҵ� �ȿ����� DB ������ �ʿ��� ��� Service�� �޼ҵ带 ȣ���Ͽ�
	 * ServiceImpl => DAO => Mapper���� �����Ѵ�.
	 * DB ������ �ʿ���� ���� �ش� �޼ҵ忡�� �ٷ� jsp(ȭ���)�� �����Ѵ�.
	 * ȭ�鿡�� ��û�߻� => Controller => Service => ServiceImpl => DAO => Mapper
	 * DB���� ������ �����Ͱ� ���� ��쿡�� �� ������ �������� ����
	 * */
}
