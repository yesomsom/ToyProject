
// MFCdrawing2View.h: CMFCdrawing2View 클래스의 인터페이스
//

#pragma once


class CMFCdrawing2View : public CView
{
protected: // serialization에서만 만들어집니다.
	CMFCdrawing2View() noexcept;
	DECLARE_DYNCREATE(CMFCdrawing2View)

// 특성입니다.
public:
	CMFCdrawing2Doc* GetDocument() const;

	COLORREF m_colLine, m_colFill;    // 색
	COLORREF m_colLineXor;
	int m_nType;                    // 그리기 타입
	CPoint m_pntOld, m_pntCur;        // 그리기 좌표

// 작업입니다.
public:

// 재정의입니다.
public:
	virtual void OnDraw(CDC* pDC);  // 이 뷰를 그리기 위해 재정의되었습니다.
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);

// 구현입니다.
public:
	virtual ~CMFCdrawing2View();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// 생성된 메시지 맵 함수
protected:
	// 툴바와 메뉴바를 라디오 버튼처럼 다루기
	// '범위'를 지정해서 각종 컨트롤을 사용할 수 있도록 함
	afx_msg void OnChangeTool(UINT wParam); // 툴바 항목이 선택될 때 호출
	afx_msg void OnUpdateChangeTool(CCmdUI* pCmdUI); // 현재 선택한 툴바 항목과 일치 여부에 따라 체크 표시
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnLinecolor();
	afx_msg void OnFillcolor();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
};

#ifndef _DEBUG  // MFCdrawing2View.cpp의 디버그 버전
inline CMFCdrawing2Doc* CMFCdrawing2View::GetDocument() const
   { return reinterpret_cast<CMFCdrawing2Doc*>(m_pDocument); }
#endif

