
// MFCdrawingView.cpp: CMFCdrawingView 클래스의 구현
//

#include "pch.h"
#include "framework.h"
// SHARED_HANDLERS는 미리 보기, 축소판 그림 및 검색 필터 처리기를 구현하는 ATL 프로젝트에서 정의할 수 있으며
// 해당 프로젝트와 문서 코드를 공유하도록 해 줍니다.
#ifndef SHARED_HANDLERS
#include "MFCdrawing.h"
#endif

#include "MFCdrawingDoc.h"
#include "MFCdrawingView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CMFCdrawingView

IMPLEMENT_DYNCREATE(CMFCdrawingView, CView)

BEGIN_MESSAGE_MAP(CMFCdrawingView, CView)
	// 표준 인쇄 명령입니다.
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CView::OnFilePrintPreview)
	ON_WM_LBUTTONDOWN()
	ON_WM_KEYDOWN()
	ON_COMMAND(ID_LINE, &CMFCdrawingView::OnLine)
	ON_COMMAND(ID_RECT, &CMFCdrawingView::OnRect)
	ON_COMMAND(ID_CIRCLE, &CMFCdrawingView::OnCircle)
END_MESSAGE_MAP()

// CMFCdrawingView 생성/소멸

CMFCdrawingView::CMFCdrawingView() noexcept
{
	// TODO: 여기에 생성 코드를 추가합니다.
	m_point.x = -1; //default, 한번도 클릭된 적 없다는 의미
	m_point.y = -1; //default, 한번도 클릭된 적 없다는 의미
}

CMFCdrawingView::~CMFCdrawingView()
{
}

BOOL CMFCdrawingView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: CREATESTRUCT cs를 수정하여 여기에서
	//  Window 클래스 또는 스타일을 수정합니다.

	return CView::PreCreateWindow(cs);
}

// CMFCdrawingView 그리기

void CMFCdrawingView::OnDraw(CDC* pDC)
{
	CMFCdrawingDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;

	// TODO: 여기에 원시 데이터에 대한 그리기 코드를 추가합니다.
	//pDC->MoveTo(20, 20);
	//pDC->LineTo(100, 100);

	//pDC->Rectangle(200, 20, 400, 200); // rectangle
	//pDC->Ellipse(20, 200, 220, 400); //circle
}


// CMFCdrawingView 인쇄

BOOL CMFCdrawingView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// 기본적인 준비
	return DoPreparePrinting(pInfo);
}

void CMFCdrawingView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 인쇄하기 전에 추가 초기화 작업을 추가합니다.
}

void CMFCdrawingView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 인쇄 후 정리 작업을 추가합니다.
}


// CMFCdrawingView 진단

#ifdef _DEBUG
void CMFCdrawingView::AssertValid() const
{
	CView::AssertValid();
}

void CMFCdrawingView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CMFCdrawingDoc* CMFCdrawingView::GetDocument() const // 디버그되지 않은 버전은 인라인으로 지정됩니다.
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CMFCdrawingDoc)));
	return (CMFCdrawingDoc*)m_pDocument;
}
#endif //_DEBUG


// CMFCdrawingView 메시지 처리기


void CMFCdrawingView::OnLButtonDown(UINT nFlags, CPoint point) //마우스 왼쪽 버튼 클릭시 실행되는 함수 (클릭해서 그릴 때 실행)
{
	// TODO: 여기에 메시지 처리기 코드를 추가 및/또는 기본값을 호출합니다.

	CView::OnLButtonDown(nFlags, point); //클릭된 값은 point에 저장
	if (m_point.x == -1) // start point
	{
		m_point = point;
	}
	else // end point
	{
		CClientDC dc(this);
		if (m_nChar == 'L') // if 'L' is written, draw line.
		{
			dc.MoveTo(m_point.x, m_point.y); // start point
			dc.LineTo(point.x, point.y); // end point
			m_point = point;
		}
		else if (m_nChar == 'R') // if 'R' is written, draw rectangle.
		{
			dc.Rectangle(m_point.x, m_point.y, point.x, point.y);
			m_point.x = -1;	m_point.y = -1; // 초기화
		}
		else if (m_nChar == 'C') // if 'C' is written, draw circle.
		{
			dc.Ellipse(m_point.x, m_point.y, point.x, point.y);
			m_point.x = -1;	m_point.y = -1; // 초기화
		}
	}
}


void CMFCdrawingView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
{
	// TODO: 여기에 메시지 처리기 코드를 추가 및/또는 기본값을 호출합니다.

	CView::OnKeyDown(nChar, nRepCnt, nFlags); //nChar 가 keyboard 입력 글자
	
	CString stemp;
	stemp.Format(_T("%c"), nChar);
	CClientDC dc(this);
	dc.TextOutW(10, 10, stemp);

	m_nChar = nChar;
	m_point.x = -1;	m_point.y = -1; // 초기화
}


void CMFCdrawingView::OnLine()
{
	// TODO: 여기에 명령 처리기 코드를 추가합니다.
	m_nChar = 'L';
}


void CMFCdrawingView::OnRect()
{
	// TODO: 여기에 명령 처리기 코드를 추가합니다.
	m_nChar = 'R';
}


void CMFCdrawingView::OnCircle()
{
	// TODO: 여기에 명령 처리기 코드를 추가합니다.
	m_nChar = 'C';
}
