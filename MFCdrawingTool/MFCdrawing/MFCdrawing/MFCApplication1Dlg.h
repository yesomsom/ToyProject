
// MFCApplication1Dlg.h: 헤더 파일
//

#pragma once


// CMFCApplication1Dlg 대화 상자
class CMFCApplication1Dlg : public CDialogEx
{
// 생성입니다.
public:
	CMFCApplication1Dlg(CWnd* pParent = nullptr);	// 표준 생성자입니다.

// 대화 상자 데이터입니다.
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_MFCAPPLICATION1_DIALOG };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 지원입니다.


// 구현입니다.
protected:
	HICON m_hIcon;

	// 생성된 메시지 맵 함수
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public: //전역변수
	// edit control 변수
	CString m_buf; //문자 -> 문자를 숫자화, 임시로 기억하는 변수
	CString m_result; //edit control 변수, 버퍼로 들어가는 두번째 변수
	bool m_bEqualClk; // = 표시 클릭 시 결과값 출력하는 함수
	int m_cType; // calculate type => plu, sub, mul, div
	afx_msg void OnBnClickedbcle();
	afx_msg void OnBnClickedb0();
	afx_msg void OnBnClickedb1();
	afx_msg void OnBnClickedb2();
	afx_msg void OnBnClickedb3();
	afx_msg void OnBnClickedb4();
	afx_msg void OnBnClickedb5();
	afx_msg void OnBnClickedb6();
	afx_msg void OnBnClickedb7();
	afx_msg void OnBnClickedb8();
	afx_msg void OnBnClickedb9();
	afx_msg void OnBnClickedbdot2();
	afx_msg void OnBnClickedbeql2();
	afx_msg void OnBnClickedblotto();
	afx_msg void OnBnClickedbplu();
	afx_msg void OnBnClickedbmin();
	afx_msg void OnBnClickedbgop();
	afx_msg void OnBnClickedbsla();
};
